module standard.internal.vectors_d;

struct IntVector2 {
    int x;
    int y;
}

IntVector2 create_vector(int x, int y) {
    return IntVector2(x, y);
}
