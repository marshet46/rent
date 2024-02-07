import 'package:flutter/material.dart';
import './webview.dart';
import 'drawer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> aiTools = [
     {
  'name': 'OpenAI GPT-3',
  'description': 'A powerful language model for natural language understanding and generation.',
  'link': 'https://beta.openai.com/signup/',
},
{
  'name': 'TensorFlow',
  'description': 'An open-source machine learning framework for building and training ML models.',
  'link': 'https://www.tensorflow.org/',
},
{
  'name': 'PyTorch',
  'description': 'An open-source deep learning platform for research and production.',
  'link': 'https://pytorch.org/',
},
{
  'name': 'scikit-learn',
  'description': 'A popular machine learning library for Python that provides simple and efficient tools for data mining and data analysis.',
  'link': 'https://scikit-learn.org/stable/'
},
{
  'name': 'Keras',
  'description': 'A high-level neural networks API, written in Python and capable of running on top of TensorFlow, CNTK, or Theano.',
  'link': 'https://keras.io/'
},
{
  'name': 'Microsoft Cognitive Toolkit',
  'description': 'An open-source toolkit for commercial-grade distributed deep learning.',
  'link': 'https://www.microsoft.com/en-us/cognitive-toolkit/'
},
{
  'name': 'ChatGPT',
  'description': 'An AI-powered chatbot that uses OpenAI\'s GPT-3 language model to generate human-like responses to user input.',
  'link': 'https://chatgpt.com/'
},
{
  'name': 'Fast.ai',
  'description': 'A practical deep learning course and library, built on top of PyTorch, that provides a simple and intuitive approach to training state-of-the-art models.',
  'link': 'https://www.fast.ai/'
},
{
  'name': 'Hugging Face',
  'description': 'An open-source library for natural language processing (NLP) that provides pre-trained models, datasets, and tools for building and fine-tuning NLP models.',
  'link': 'https://huggingface.co/'
},
{
  'name': 'spaCy',
  'description': 'An open-source library for NLP in Python that provides efficient and scalable tools for tokenization, named entity recognition, part-of-speech tagging, and more.',
  'link': 'https://spacy.io/'
},
{
  'name': 'OpenCV',
  'description': 'An open-source computer vision library that provides tools for image and video processing, object detection and tracking, and more.',
  'link': 'https://opencv.org/'
},
{
  'name': 'Apache MXNet',
  'description': 'An open-source deep learning framework that provides a flexible and efficient platform for training and deploying machine learning models.',
  'link': 'https://mxnet.apache.org/'
}
      
      // Add more AI tools here
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AI Tools'),
        ),
        drawer: MyDrawer(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: aiTools.map((tool) {
                return AIToolCard(toolData: tool);
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
class AIToolCard extends StatelessWidget {
  final Map<String, dynamic> toolData;

  AIToolCard({required this.toolData});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      elevation: 2.0,
      color: Color.fromARGB(255, 19, 18, 19),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: InkWell(
        onTap: () => onToolCardPressed(context, toolData),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      toolData['name'],
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      toolData['description'],
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 16.0), // Adjust the spacing between columns
              Expanded(
                flex: 1,
                child: Column(
                  // Additional information or any other content in the second column
                  // Add your widgets here if needed
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onToolCardPressed(BuildContext context, Map<String, dynamic> toolData) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => WebviewTwo(url: toolData['link'])),
    );
  }
}
