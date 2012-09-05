.class public Lcom/google/android/filterpacks/facedetect/FaceMeta;
.super Landroid/filterfw/core/NativeBuffer;
.source "FaceMeta.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 302
    const-string v0, "filterpack_facedetect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/filterfw/core/NativeBuffer;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "count"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/filterfw/core/NativeBuffer;-><init>(I)V

    .line 17
    return-void
.end method

.method private native nativeGetConfidence(I)F
.end method

.method private native nativeGetFaceX0(I)F
.end method

.method private native nativeGetFaceX1(I)F
.end method

.method private native nativeGetFaceY0(I)F
.end method

.method private native nativeGetFaceY1(I)F
.end method

.method private native nativeGetId(I)I
.end method

.method private native nativeGetLeftEyeX(I)F
.end method

.method private native nativeGetLeftEyeY(I)F
.end method

.method private native nativeGetLowerLipX(I)F
.end method

.method private native nativeGetLowerLipY(I)F
.end method

.method private native nativeGetMouthLeftX(I)F
.end method

.method private native nativeGetMouthLeftY(I)F
.end method

.method private native nativeGetMouthRightX(I)F
.end method

.method private native nativeGetMouthRightY(I)F
.end method

.method private native nativeGetMouthX(I)F
.end method

.method private native nativeGetMouthY(I)F
.end method

.method private native nativeGetRightEyeX(I)F
.end method

.method private native nativeGetRightEyeY(I)F
.end method

.method private native nativeGetUpperLipX(I)F
.end method

.method private native nativeGetUpperLipY(I)F
.end method

.method private native nativeSetConfidence(IF)Z
.end method

.method private native nativeSetFaceX0(IF)Z
.end method

.method private native nativeSetFaceX1(IF)Z
.end method

.method private native nativeSetFaceY0(IF)Z
.end method

.method private native nativeSetFaceY1(IF)Z
.end method

.method private native nativeSetId(II)Z
.end method

.method private native nativeSetLeftEyeX(IF)Z
.end method

.method private native nativeSetLeftEyeY(IF)Z
.end method

.method private native nativeSetLowerLipX(IF)Z
.end method

.method private native nativeSetLowerLipY(IF)Z
.end method

.method private native nativeSetMouthLeftX(IF)Z
.end method

.method private native nativeSetMouthLeftY(IF)Z
.end method

.method private native nativeSetMouthRightX(IF)Z
.end method

.method private native nativeSetMouthRightY(IF)Z
.end method

.method private native nativeSetMouthX(IF)Z
.end method

.method private native nativeSetMouthY(IF)Z
.end method

.method private native nativeSetRightEyeX(IF)Z
.end method

.method private native nativeSetRightEyeY(IF)Z
.end method

.method private native nativeSetUpperLipX(IF)Z
.end method

.method private native nativeSetUpperLipY(IF)Z
.end method


# virtual methods
.method public getConfidence(I)F
    .registers 3
    .parameter "index"

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    .line 118
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetConfidence(I)F

    move-result v0

    return v0
.end method

.method public native getElementSize()I
.end method

.method public getFaceX0(I)F
    .registers 3
    .parameter "index"

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetFaceX0(I)F

    move-result v0

    return v0
.end method

.method public getFaceX1(I)F
    .registers 3
    .parameter "index"

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetFaceX1(I)F

    move-result v0

    return v0
.end method

.method public getFaceY0(I)F
    .registers 3
    .parameter "index"

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetFaceY0(I)F

    move-result v0

    return v0
.end method

.method public getFaceY1(I)F
    .registers 3
    .parameter "index"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetFaceY1(I)F

    move-result v0

    return v0
.end method

.method public getId(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetId(I)I

    move-result v0

    return v0
.end method

.method public getLeftEyeX(I)F
    .registers 3
    .parameter "index"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetLeftEyeX(I)F

    move-result v0

    return v0
.end method

.method public getLeftEyeY(I)F
    .registers 3
    .parameter "index"

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetLeftEyeY(I)F

    move-result v0

    return v0
.end method

.method public getLowerLipX(I)F
    .registers 3
    .parameter "index"

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetLowerLipX(I)F

    move-result v0

    return v0
.end method

.method public getLowerLipY(I)F
    .registers 3
    .parameter "index"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    .line 73
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetLowerLipY(I)F

    move-result v0

    return v0
.end method

.method public getMouthLeftX(I)F
    .registers 3
    .parameter "index"

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    .line 98
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetMouthLeftX(I)F

    move-result v0

    return v0
.end method

.method public getMouthLeftY(I)F
    .registers 3
    .parameter "index"

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    .line 103
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetMouthLeftY(I)F

    move-result v0

    return v0
.end method

.method public getMouthRightX(I)F
    .registers 3
    .parameter "index"

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    .line 108
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetMouthRightX(I)F

    move-result v0

    return v0
.end method

.method public getMouthRightY(I)F
    .registers 3
    .parameter "index"

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    .line 113
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetMouthRightY(I)F

    move-result v0

    return v0
.end method

.method public getMouthX(I)F
    .registers 3
    .parameter "index"

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    .line 88
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetMouthX(I)F

    move-result v0

    return v0
.end method

.method public getMouthY(I)F
    .registers 3
    .parameter "index"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetMouthY(I)F

    move-result v0

    return v0
.end method

.method public getRightEyeX(I)F
    .registers 3
    .parameter "index"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetRightEyeX(I)F

    move-result v0

    return v0
.end method

.method public getRightEyeY(I)F
    .registers 3
    .parameter "index"

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetRightEyeY(I)F

    move-result v0

    return v0
.end method

.method public getUpperLipX(I)F
    .registers 3
    .parameter "index"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    .line 78
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetUpperLipX(I)F

    move-result v0

    return v0
.end method

.method public getUpperLipY(I)F
    .registers 3
    .parameter "index"

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertReadable()V

    .line 83
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeGetUpperLipY(I)F

    move-result v0

    return v0
.end method

.method public setConfidence(IF)V
    .registers 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    .line 218
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetConfidence(IF)Z

    .line 219
    return-void
.end method

.method public setFaceX0(IF)V
    .registers 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetFaceX0(IF)Z

    .line 129
    return-void
.end method

.method public setFaceX1(IF)V
    .registers 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetFaceX1(IF)Z

    .line 139
    return-void
.end method

.method public setFaceY0(IF)V
    .registers 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetFaceY0(IF)Z

    .line 134
    return-void
.end method

.method public setFaceY1(IF)V
    .registers 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetFaceY1(IF)Z

    .line 144
    return-void
.end method

.method public setId(II)V
    .registers 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetId(II)Z

    .line 124
    return-void
.end method

.method public setLeftEyeX(IF)V
    .registers 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetLeftEyeX(IF)Z

    .line 149
    return-void
.end method

.method public setLeftEyeY(IF)V
    .registers 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetLeftEyeY(IF)Z

    .line 154
    return-void
.end method

.method public setLowerLipX(IF)V
    .registers 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetLowerLipX(IF)Z

    .line 169
    return-void
.end method

.method public setLowerLipY(IF)V
    .registers 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    .line 173
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetLowerLipY(IF)Z

    .line 174
    return-void
.end method

.method public setMouthLeftX(IF)V
    .registers 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    .line 198
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetMouthLeftX(IF)Z

    .line 199
    return-void
.end method

.method public setMouthLeftY(IF)V
    .registers 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetMouthLeftY(IF)Z

    .line 204
    return-void
.end method

.method public setMouthRightX(IF)V
    .registers 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    .line 208
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetMouthRightX(IF)Z

    .line 209
    return-void
.end method

.method public setMouthRightY(IF)V
    .registers 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    .line 213
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetMouthRightY(IF)Z

    .line 214
    return-void
.end method

.method public setMouthX(IF)V
    .registers 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    .line 188
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetMouthX(IF)Z

    .line 189
    return-void
.end method

.method public setMouthY(IF)V
    .registers 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    .line 193
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetMouthY(IF)Z

    .line 194
    return-void
.end method

.method public setRightEyeX(IF)V
    .registers 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetRightEyeX(IF)Z

    .line 159
    return-void
.end method

.method public setRightEyeY(IF)V
    .registers 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    .line 163
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetRightEyeY(IF)Z

    .line 164
    return-void
.end method

.method public setUpperLipX(IF)V
    .registers 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetUpperLipX(IF)Z

    .line 179
    return-void
.end method

.method public setUpperLipY(IF)V
    .registers 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->assertWritable()V

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->nativeSetUpperLipY(IF)Z

    .line 184
    return-void
.end method
