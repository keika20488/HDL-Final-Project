#include <iostream>
#include <fstream>
using namespace std;

string key[12] = 
{"C", "Cs", "D", "Ds", "E", "F", "Fs", "G", "Gs", "A", "As", "B"};

int main () {
    ofstream myfile;
    myfile.open ("fail_L.txt");
    int num = 3, measure = 24;
    for (int k = 0; k < measure; k++) {
        myfile << "// Measure " << k+1 << " //\n";
        cout << "Measure " << k+1 << ":\n";
        for (int i = 0; i < num; i++) {
            string note;
            cout << "note: ";
            cin >> note;
            for (int j = 0; j < 8; j++) {
                myfile << "12'd" << 48*k+16*i+2*j << ": tone = `" << note << ";   ";
                myfile << "12'd" << 48*k+16*i+2*j+1 << ": tone = `" << note << ";\n";
            }myfile << endl;
        }
    }
    myfile.close();
    return 0;
}