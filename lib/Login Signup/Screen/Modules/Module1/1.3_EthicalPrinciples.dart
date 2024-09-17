import 'package:flutter/material.dart';
import '../../../Widget/card.dart';
import '../../quiz_page.dart';
import '1.3_instructionsPage.dart';

class EthicalPrinciplesPage extends StatelessWidget {
  // Define colors
  final Color primaryColor = Color(0xFF3058a6);
  final Color secondaryColor = Color(0xFF6d90c6);
  final Color accentColor = Color(0xFFa4c6e5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ethical Principles in Healthcare',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: primaryColor,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          // gradient: LinearGradient(
          //   colors: [secondaryColor, accentColor],
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          // ),
        ),
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildPrincipleCard(
              context,
              'Autonomy',
              'Respecting patients\' rights to make informed decisions about their healthcare.\n\n'
                  'Informed consent is a critical component, ensuring patients understand the risks and benefits of treatments.',
              Icons.person,
            ),
            SizedBox(height: 16),
            _buildPrincipleCard(
              context,
              'Beneficence',
              'The ethical duty to act in the best interests of the patient.\n\n'
                  'Includes actions to promote the well-being and welfare of patients.',
              Icons.favorite,
            ),
            SizedBox(height: 16),
            _buildPrincipleCard(
              context,
              'Non-Maleficence',
              'The principle of "do no harm," avoiding actions that may cause harm to patients.\n\n'
                  'Important in decision-making processes, especially when potential risks are involved.',
              Icons.warning,
            ),
            SizedBox(height: 16),
            _buildPrincipleCard(
              context,
              'Justice',
              'Fair and equitable treatment of all patients.\n\n'
                  'Concerns with the fair distribution of healthcare resources and ensuring access to care for all individuals, regardless of background or socioeconomic status.',
              Icons.scale,
            ),
            SizedBox(height: 32),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the quiz page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InstructionsPage()),
                  );
                },
                child: Text('Take the Quiz'),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      primaryColor, // Background color of the button
                  foregroundColor:
                      Colors.white, // Color of the text and icons on the button
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  textStyle: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPrincipleCard(BuildContext context, String title, String description, IconData icon) {
  return PrincipleCard(
    title: title,
    description: description,
    icon: icon,
    primaryColor: primaryColor, // Assuming primaryColor is defined in your main file
  );
}

}
