#include "styleSubstyle.hpp"

#include "styleCurrency.hpp"
#include "styleDate.hpp"
#include "styleDuration.hpp"
#include "stylePercent.hpp"

namespace ods	{ // ods::
namespace style	{ // ods::style::

Substyle::Substyle()
{}

Substyle::~Substyle()
{
	if (IsNotSet())
		return;
	if (IsCurrency())
		delete AsCurrency();
	else if (IsDate())
		delete AsDate();
	else if (IsDuration())
		delete AsDuration();
	else if (IsPercent())
		delete AsPercent();
}

} // ods::style::
} // ods::
