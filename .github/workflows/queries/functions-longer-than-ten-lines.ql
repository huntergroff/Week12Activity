/**
 * @description Find all functions longer than ten lines
 * @kind problem
 * @id javascript/functions-longer-than-ten-lines
 * @problem.severity recommendation
 */
import javascript

predicate isLongerThanTenLines(Function function) {
  function.getNumLines() > 10
}

from Function function
where isLongerThanTenLines(function)
select function, "function longer than 10 lines"
