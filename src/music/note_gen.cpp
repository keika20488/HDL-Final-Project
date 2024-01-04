#include <iostream>
#include <fstream>
using namespace std;

string key[12] = 
{"C", "Cs", "D", "Ds", "E", "F", "Fs", "G", "Gs", "A", "As", "B"};

int main () {
    ofstream myfile;
    myfile.open ("stage2_L.txt");
    int num = 4, measure = 12;
    for (int k = 0; k < measure; k++) {
        myfile << "// Measure " << k+1 << " //\n";
        cout << "Measure " << k+1 << ":\n";
        for (int i = 0; i < num; i++) {
            string note;
            cout << "note: ";
            cin >> note;
            for (int j = 0; j < 3; j++) {
                myfile << "12'd" << 24*k+6*i+2*j << ": tone = `" << note << ";   ";
                myfile << "12'd" << 24*k+6*i+2*j+1 << ": tone = `" << note << ";\n";
                //if (j%4 == 3) myfile << "\n";
            }myfile << "\n";
        }
    }
    myfile.close();
    return 0;
}