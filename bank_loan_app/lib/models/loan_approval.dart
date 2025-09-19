// lib/models/loan_approval.dart
class LoanApprovalCriteria {
  final int age;
  final double monthlyIncome;
  final int creditScore;
  final double requestedAmount;
  final String employmentType;

  LoanApprovalCriteria({
    required this.age,
    required this.monthlyIncome,
    required this.creditScore,
    required this.requestedAmount,
    required this.employmentType,
  });

  String checkEligibility() {
    if (age < 21) {
      return "Rejected ❌: Minimum age required is 21 years.";
    }
    if (monthlyIncome < 15000) {
      return "Rejected ❌: Monthly income must be at least ₹15,000.";
    }
    if (creditScore < 650) {
      return "Rejected ❌: Credit score too low (minimum 650 required).";
    }
    double annualIncome = monthlyIncome * 12;
    if (requestedAmount > annualIncome * 12) {
      return "Rejected ❌: Requested loan amount exceeds 12× annual income.";
    }
    if (employmentType == "student" && requestedAmount > 200000) {
      return "Rejected ❌: Students can only apply for loans up to ₹2,00,000.";
    }
    return "Approved ✅: Congratulations! Your loan request is eligible.";
  }
}
