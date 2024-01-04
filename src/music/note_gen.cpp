#include <iostream>
#include <fstream>
using namespace std;

string key[12] = 
{"C", "Cs", "D", "Ds", "E", "F", "Fs", "G", "Gs", "A", "As", "B"};

int main () {
    ofstream myfile;
    myfile.open ("success_L.txt");
    int num = 4, measure = 24;
    for (int k = 0; k < measure; k++) {
        myfile << "// Measure " << k+1 << " //\n";
        cout << "Measure " << k+1 << ":\n";
        //for (int i = 0; i < 4*num; i++) {
            string note;
            cout << "note: ";
            cin >> note;
            for (int j = 0; j < 32; j++) {
                myfile << "12'd" << 64*k+2*j << ": tone = `" << note << ";   ";
                myfile << "12'd" << 64*k+2*j+1 << ": tone = `" << note << ";\n";
                if (j%4 == 3) myfile << "\n";
            }//myfile << endl;
        //}
    }
    myfile.close();
    return 0;
}