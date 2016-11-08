
#include <QtCore>

#include <ods/odsCore>

QString GetCellValue(ods::Cell *cell, int idx) {

//  if( 1 == idx ) {
//    qDebug() << "Break here";
//  }

  if (cell->HasFormula()) {
    auto *formula = cell->formula();
    if (formula->HasAnError())
      return QString("formula error: ") + formula->error();

    auto &value = formula->value();

    if (value.IsNotSet()) // should never happen
      return "formula has no value";

    if (value.IsDouble() || value.IsPercentage()) {
      return QString("formula value: ")
        + QString::number(*value.AsDouble());
    }

    // don't care, just print out as a string
    return QString("formula has a non-number value: ") + value.toString();
  }

  ods::Value &value = cell->value();

  qDebug() << idx << value.toString() << value.valueAsString() << value.valueAsVariant();

  if (value.IsNotSet())
    return "cell value is empty";
  else if (value.IsDouble())
    return QString("cell value as double: ") + QString::number(*value.AsDouble());
  else if (value.IsPercentage())
    return QString("cell value as percentage: ") + QString::number(*value.AsPercentage());
  else if (value.IsString())
    return QString("cell value as string: ") + *value.AsString();
  else if( value.IsDate() )
    return QString( "cell value as date: ") + value.AsDate()->toString( "yyyy-MM-dd" );

  return "unknown cell type";
}


void Lesson18_ReadFile( const QString& path ) {
  QFile file( path );
  if (!file.exists()) {
    qDebug() << "No such file:" << path;
    return;
  }
  ods::Book book(path);

  ods::Sheet *sheet = book.sheets().at(0);
  //ods::Sheet *sheet = book.sheet( 0 );
  if (sheet == nullptr) {
    qDebug() << "No sheet at 0";
    return;
  }

  //print out the values of the first 9 cells of the 3rd row:
  const int kRow = 2;
  for (int i=0; i <= 8; i++) {
    const int kColumn = i;
    ods::Cell *cell = nullptr;
    auto *row = sheet->row(kRow);
    if (row == nullptr) {
      qDebug() << "No row at " << QString::number(kRow);
      return;
    }
    cell = row->cell(kColumn);

    if (cell == nullptr) {
      qDebug() << "No cell at " << QString::number(kColumn);
      continue;
    }
    QString which_cell = "Cell [" + QString::number(kRow)
      + ":" + QString::number(kColumn) + "]: ";
    QString value_as_string = GetCellValue(cell, i);
    //qDebug() << which_cell << value_as_string;
  }
}


// For testing ODS file parsing.
int main() {
  QString filename = "C:/Users/areeves/Documents/ResearchProjects/sphn/sampleDataFiles/Salmonella/abatdata/MILLERS - GRANTOWN ON SPEY - SALMONELLA MEAT JUICE SAMPLE COLLECTION SHEET.ods";

  Lesson18_ReadFile( filename );

  return 0;
}

