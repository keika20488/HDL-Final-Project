#include <iostream>
#include <fstream>
using namespace std;

string key[12] = 
{"C", "Cs", "D", "Ds", "E", "F", "Fs", "G", "Gs", "A", "As", "B"};

int main () {
  ofstream myfile;
  myfile.open ("key_freq.txt");
  for (int i = 1; i < 8; i++) {
    int freq;
    for (int j = 0; j < 12; j++) {
        cout << key[j] << " freq:\n";
        cin >> freq;
        myfile << "`define " << key[j] << i << " 26'd" << freq << endl;
    }
  }
  myfile.close();
  return 0;
}