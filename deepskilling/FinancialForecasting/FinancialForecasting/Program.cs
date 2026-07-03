namespace FinancialForecasting
{
    internal class Program
    {
        static void Main(string[] args)
        {
            double currentValue = 10000;

            double growthRate = 0.10;

            int years = 5;

            double futureValue =
                ForecastCalculator
                    .PredictFutureValue(
                        currentValue,
                        growthRate,
                        years);

            Console.WriteLine(
                $"Future Value after {years} years: {futureValue}");
        }
    }
}