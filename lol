#include <conio.h>
#include <iostream.h>
#define max 100

void nhap(int[], int);
void xuat(int[], int);
int sodoantang(int[], int);
void timdoantangmax(int[], int, int &, int &);

void main()
{
	int a[max], i, d, c, n;
	clrscr();
	cout << "Nhap so phan tu n<" << max << ", n= ";
	cin >> n;
	nhap(a, n);
	cout << "Mang da nhap:\n";
	xuat(a, n);
	cout << "\nSo doan tang :" << sodoantang(a, n) << endl;
	timdoantangmax(a, n, d, c);
	cout << "\nDoan tang dai nhat la : ";
	for (i = d; i <= c; i++) cout << a[i] << " ";
}

void nhap(int a[], int n)
{
	int i;
	cout << "Nhap cac phan tu cua mang :\n";
	for (i = 0; i < n; i++)
	{
		cout << "A[" << i + 1 << "]=";
		cin >> a[i];
	}
}

void xuat(int a[], int n)
{
	int i;
	for (i = 0; i < n; i++) cout << a[i] << " ";
}

int sodoantang(int a[], int n)
{
	int i, d;
	if (n > 0) d = 1;
	else d = 0;
	for (i = 0; i < n - 1; i++)
		if (a[i + 1] < a[i]) d++;
	return d;
}

void timdoantangmax(int a[], int n, int &d, int &c)
{
	int t, p;
	p = 0;
	d = c = 0;
	do {
		t = p;
		for (p = t;
			(p < n - 1) && (a[p] <= a[p + 1]); p++);
		if (p - t > c - d)
		{
			d = t;
			c = p;
		}

		if (p < n - 1) p++;
	} while (p < n - 1);
}
