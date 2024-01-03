#include <iostream>
#include <fstream>
using namespace std;

string key[12] = 
{"C", "Cs", "D", "Ds", "E", "F", "Fs", "G", "Gs", "A", "As", "B"};

int main () {
    ofstream myfile;
    myfile.open ("stage1_L.txt");
    int num = 4, measure = 22;
    for (int k = 0; k < measure; k++) {
        myfile << "// Measure " << k+1 << " //\n";
        cout << "Measure " << k+1 << ":\n";
        for (int i = 0; i < 2*num; i++) {
            string note;
            cout << "note: ";
            cin >> note;
            for (int j = 0; j < 2; j++) {
                myfile << "12'd" << 64*k+2*i*num+2*j << ": tone = `" << note << ";   ";
                myfile << "12'd" << 64*k+2*i*num+2*j+1 << ": tone = `" << note << ";\n";
            }
            cout << "note: ";
            cin >> note;
            for (int j = 2; j < 4; j++) {
                myfile << "12'd" << 64*k+2*i*num+2*j << ": tone = `" << note << ";   ";
                myfile << "12'd" << 64*k+2*i*num+2*j+1 << ": tone = `" << note << ";\n";
            }myfile << endl;
        }
    }
    myfile.close();
    return 0;
}