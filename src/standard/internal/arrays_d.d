module standard.internal.arrays_d;

import std.stdio;
import standard.internal.vectors_d;

struct IntArrayAssignPrep {
    int[] arrayRef;
    int arrayIndex;
}

int[] new_array_d(int length) {
    return new int[length];
}

int accessArray(int[] array, int index) {
    return array[index];
}

void setArrayElement(IntArrayAssignPrep metaData, int newValue) {
    metaData.arrayRef[metaData.arrayIndex] = newValue;
}

IntArrayAssignPrep prepareArrayElementAssignment(int[] array, int index) {
    return IntArrayAssignPrep(array, index);
}

void appendToArray(ref int[] array, int newValue) {
    array ~= newValue;
}

int[] performArraySlice(int[] array, IntVector2 sliceData) {
    return array[sliceData.x..sliceData.y];
}
