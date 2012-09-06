.class public Lcom/google/android/maps/driveabout/vector/bI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/bJ;


# instance fields
.field protected a:[S

.field protected b:I

.field c:I

.field d:Ljava/nio/ShortBuffer;

.field e:I

.field protected f:I

.field protected g:Lv/h;

.field private h:Z


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(IZ)V

    .line 75
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->f:I

    .line 84
    iput-boolean p2, p0, Lcom/google/android/maps/driveabout/vector/bI;->h:Z

    .line 85
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/bI;->b:I

    .line 86
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bI;->f()V

    .line 87
    return-void
.end method

.method private a([SII)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lv/h;

    if-nez v0, :cond_16

    .line 240
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    .line 253
    :cond_10
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:I

    .line 254
    return-void

    .line 243
    :cond_16
    add-int v0, p2, p3

    .line 244
    :goto_18
    if-ge p2, v0, :cond_10

    .line 245
    sub-int v1, v0, p2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    rsub-int v2, v2, 0x800

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 247
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    add-int/2addr p2, v1

    .line 249
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    .line 250
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bI;->e()V

    goto :goto_18
.end method

.method private e()V
    .registers 3

    .prologue
    .line 98
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    const/16 v1, 0x800

    if-lt v0, v1, :cond_9

    .line 99
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bI;->a()V

    .line 101
    :cond_9
    return-void
.end method

.method private f()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 266
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    .line 267
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    if-nez v0, :cond_2a

    .line 268
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->b:I

    const/16 v1, 0x800

    if-lt v0, v1, :cond_11

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->h:Z

    if-eqz v0, :cond_1d

    .line 269
    :cond_11
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->b:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    .line 279
    :cond_17
    :goto_17
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:I

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->d:Ljava/nio/ShortBuffer;

    .line 281
    return-void

    .line 271
    :cond_1d
    new-instance v0, Lv/h;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->b:I

    invoke-direct {v0, v1}, Lv/h;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lv/h;

    .line 272
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bI;->a()V

    goto :goto_17

    .line 274
    :cond_2a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lv/h;

    if-eqz v0, :cond_17

    .line 275
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lv/h;

    invoke-virtual {v0}, Lv/h;->a()V

    .line 276
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bI;->a()V

    goto :goto_17
.end method


# virtual methods
.method protected a()V
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lv/h;

    if-eqz v0, :cond_19

    .line 91
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lv/h;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    invoke-virtual {v0, v1}, Lv/h;->b(I)V

    .line 92
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lv/h;

    iget-object v0, v0, Lv/h;->c:Ljava/lang/Object;

    check-cast v0, [S

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    .line 93
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lv/h;

    iget v0, v0, Lv/h;->d:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    .line 95
    :cond_19
    return-void
.end method

.method public a(III)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    int-to-short v2, p1

    aput-short v2, v0, v1

    .line 166
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    int-to-short v2, p2

    aput-short v2, v0, v1

    .line 167
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    int-to-short v2, p3

    aput-short v2, v0, v1

    .line 168
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:I

    .line 171
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    const/16 v1, 0x800

    if-lt v0, v1, :cond_30

    .line 172
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bI;->a()V

    .line 174
    :cond_30
    return-void
.end method

.method public a(IIII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    int-to-short v2, p1

    aput-short v2, v0, v1

    .line 183
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    int-to-short v2, p2

    aput-short v2, v0, v1

    .line 184
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    int-to-short v2, p3

    aput-short v2, v0, v1

    .line 185
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    int-to-short v2, p3

    aput-short v2, v0, v1

    .line 186
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    int-to-short v2, p2

    aput-short v2, v0, v1

    .line 187
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    int-to-short v2, p4

    aput-short v2, v0, v1

    .line 188
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:I

    .line 191
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    const/16 v1, 0x800

    if-lt v0, v1, :cond_51

    .line 192
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bI;->a()V

    .line 194
    :cond_51
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 2
    .parameter

    .prologue
    .line 285
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 286
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bI;->f()V

    .line 287
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->d:Ljava/nio/ShortBuffer;

    if-nez v0, :cond_7

    .line 346
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 348
    :cond_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->d:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->f:I

    .line 349
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:I

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bI;->d:Ljava/nio/ShortBuffer;

    invoke-interface {v0, p2, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 350
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bI;II)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/16 v4, 0x800

    const/4 v1, 0x0

    .line 205
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/bI;->g:Lv/h;

    if-eqz v0, :cond_c

    iget v0, p1, Lcom/google/android/maps/driveabout/vector/bI;->c:I

    if-ge v0, v4, :cond_39

    :cond_c
    move v0, v2

    .line 207
    :goto_d
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lv/h;

    if-eqz v3, :cond_16

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    add-int/2addr v3, p3

    if-gt v3, v4, :cond_3b

    .line 211
    :cond_16
    :goto_16
    if-eqz v0, :cond_3d

    if-eqz v2, :cond_3d

    .line 212
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    invoke-static {v0, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    .line 214
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:I

    .line 215
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    if-lt v0, v4, :cond_38

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lv/h;

    if-eqz v0, :cond_38

    .line 216
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bI;->a()V

    .line 235
    :cond_38
    :goto_38
    return-void

    :cond_39
    move v0, v1

    .line 205
    goto :goto_d

    :cond_3b
    move v2, v1

    .line 207
    goto :goto_16

    .line 221
    :cond_3d
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/bI;->g:Lv/h;

    if-nez v0, :cond_47

    .line 222
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/maps/driveabout/vector/bI;->a([SII)V

    goto :goto_38

    .line 224
    :cond_47
    invoke-direct {p1}, Lcom/google/android/maps/driveabout/vector/bI;->e()V

    .line 225
    shr-int/lit8 v2, p2, 0xb

    .line 226
    and-int/lit16 v0, p2, 0x7ff

    move v3, v2

    move v2, v0

    .line 227
    :goto_50
    if-lez p3, :cond_38

    .line 228
    rsub-int v0, v2, 0x800

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 229
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/bI;->g:Lv/h;

    invoke-virtual {v0, v3}, Lv/h;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    invoke-direct {p0, v0, v2, v4}, Lcom/google/android/maps/driveabout/vector/bI;->a([SII)V

    .line 230
    add-int/lit8 v0, v3, 0x1

    .line 232
    sub-int/2addr p3, v4

    move v2, v1

    move v3, v0

    .line 233
    goto :goto_50
.end method

.method public a(S)V
    .registers 5
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    aput-short p1, v0, v1

    .line 108
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:I

    .line 111
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    const/16 v1, 0x800

    if-lt v0, v1, :cond_19

    .line 112
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bI;->a()V

    .line 114
    :cond_19
    return-void
.end method

.method public a(SS)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    aput-short p1, v0, v1

    .line 136
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    aput-short p2, v0, v1

    .line 137
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:I

    .line 140
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    const/16 v1, 0x800

    if-lt v0, v1, :cond_23

    .line 141
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bI;->a()V

    .line 143
    :cond_23
    return-void
.end method

.method public a(SSS)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    aput-short p1, v0, v1

    .line 150
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    aput-short p2, v0, v1

    .line 151
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    aput-short p3, v0, v1

    .line 152
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:I

    .line 155
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    const/16 v1, 0x800

    if-lt v0, v1, :cond_2d

    .line 156
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bI;->a()V

    .line 158
    :cond_2d
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 261
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:I

    return v0
.end method

.method public b(I)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 311
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->b:I

    if-le p1, v0, :cond_3e

    .line 312
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->b:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 314
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lv/h;

    if-nez v0, :cond_5e

    .line 315
    const/16 v0, 0x800

    if-lt v1, v0, :cond_19

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->h:Z

    if-eqz v0, :cond_3f

    .line 316
    :cond_19
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->h:Z

    if-eqz v0, :cond_31

    .line 317
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-static {}, Lcom/google/googlenav/common/c;->b()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 318
    :cond_29
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempt to grow fixed size buffer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_31
    new-array v0, v1, [S

    .line 324
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    .line 335
    :goto_3c
    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->b:I

    .line 337
    :cond_3e
    return-void

    .line 327
    :cond_3f
    new-instance v0, Lv/h;

    invoke-direct {v0, v1}, Lv/h;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lv/h;

    .line 328
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lv/h;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    invoke-virtual {v0, v2, v3}, Lv/h;->a(Ljava/lang/Object;I)V

    .line 329
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lv/h;

    iget-object v0, v0, Lv/h;->c:Ljava/lang/Object;

    check-cast v0, [S

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    .line 330
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lv/h;

    iget v0, v0, Lv/h;->d:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    goto :goto_3c

    .line 333
    :cond_5e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lv/h;

    invoke-virtual {v0, v1}, Lv/h;->c(I)V

    goto :goto_3c
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 2
    .parameter

    .prologue
    .line 294
    return-void
.end method

.method public c()I
    .registers 2

    .prologue
    .line 371
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->f:I

    return v0
.end method

.method public c(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 301
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 302
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lv/h;

    if-eqz v0, :cond_f

    .line 303
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lv/h;

    invoke-virtual {v0}, Lv/h;->c()V

    .line 304
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lv/h;

    .line 306
    :cond_f
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    .line 307
    return-void
.end method

.method public d()I
    .registers 3

    .prologue
    .line 379
    const/16 v0, 0x20

    .line 380
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lv/h;

    if-eqz v1, :cond_1d

    .line 382
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lv/h;

    invoke-virtual {v1}, Lv/h;->b()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 386
    :cond_f
    :goto_f
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->d:Ljava/nio/ShortBuffer;

    if-eqz v1, :cond_1c

    .line 387
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->d:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 389
    :cond_1c
    return v0

    .line 383
    :cond_1d
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    if-eqz v1, :cond_f

    .line 384
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    goto :goto_f
.end method

.method public d(I)V
    .registers 5
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    int-to-short v2, p1

    aput-short v2, v0, v1

    .line 123
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:I

    .line 126
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->e:I

    const/16 v1, 0x800

    if-lt v0, v1, :cond_1a

    .line 127
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bI;->a()V

    .line 129
    :cond_1a
    return-void
.end method

.method protected d(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 354
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->k()Lcom/google/android/maps/driveabout/vector/cp;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cp;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 355
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 356
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->d:Ljava/nio/ShortBuffer;

    .line 357
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lv/h;

    if-nez v0, :cond_30

    .line 358
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->d:Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bI;->c:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 365
    :goto_28
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->d:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 366
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/bI;->a:[S

    .line 367
    return-void

    .line 360
    :cond_30
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bI;->a()V

    .line 361
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lv/h;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bI;->d:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Lv/h;->a(Ljava/nio/ShortBuffer;)V

    .line 362
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lv/h;

    invoke-virtual {v0}, Lv/h;->c()V

    .line 363
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/bI;->g:Lv/h;

    goto :goto_28
.end method
