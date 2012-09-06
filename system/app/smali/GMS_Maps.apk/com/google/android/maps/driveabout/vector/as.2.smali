.class public Lcom/google/android/maps/driveabout/vector/aS;
.super Lcom/google/android/maps/driveabout/vector/aD;
.source "SourceFile"


# static fields
.field private static final a:F

.field private static final b:F


# instance fields
.field private c:Ln/Q;

.field private d:I

.field private e:Lcom/google/android/maps/driveabout/vector/D;

.field private f:Z

.field private final g:Lcom/google/android/maps/driveabout/vector/dY;

.field private final h:Lcom/google/android/maps/driveabout/vector/p;

.field private final i:Lcom/google/android/maps/driveabout/vector/p;

.field private final j:Ln/Q;

.field private final k:Ln/Q;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17
    const-wide v0, 0x3fb657184ae74487L

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/vector/aS;->a:F

    .line 22
    const-wide v0, 0x3faacee9f37bebd6L

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/vector/aS;->b:F

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x6

    .line 42
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aD;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aS;->d:I

    .line 27
    sget-object v0, Lcom/google/android/maps/driveabout/vector/D;->f:Lcom/google/android/maps/driveabout/vector/D;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aS;->e:Lcom/google/android/maps/driveabout/vector/D;

    .line 38
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aS;->j:Ln/Q;

    .line 39
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aS;->k:Ln/Q;

    .line 45
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dY;

    invoke-direct {v0, v2}, Lcom/google/android/maps/driveabout/vector/dY;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aS;->g:Lcom/google/android/maps/driveabout/vector/dY;

    .line 49
    new-instance v0, Lcom/google/android/maps/driveabout/vector/p;

    invoke-direct {v0, v2}, Lcom/google/android/maps/driveabout/vector/p;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aS;->h:Lcom/google/android/maps/driveabout/vector/p;

    .line 50
    sget-object v0, Lcom/google/android/maps/driveabout/vector/D;->a:Lcom/google/android/maps/driveabout/vector/D;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/D;)[I

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/aS;->a([I)I

    move-result v0

    .line 52
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aS;->h:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1, v0, v3}, Lcom/google/android/maps/driveabout/vector/p;->a(II)V

    .line 53
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aS;->h:Lcom/google/android/maps/driveabout/vector/p;

    or-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0, v4}, Lcom/google/android/maps/driveabout/vector/p;->a(II)V

    .line 55
    new-instance v0, Lcom/google/android/maps/driveabout/vector/p;

    invoke-direct {v0, v2}, Lcom/google/android/maps/driveabout/vector/p;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aS;->i:Lcom/google/android/maps/driveabout/vector/p;

    .line 56
    sget-object v0, Lcom/google/android/maps/driveabout/vector/D;->c:Lcom/google/android/maps/driveabout/vector/D;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/D;)[I

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/aS;->a([I)I

    move-result v0

    .line 58
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aS;->i:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1, v0, v3}, Lcom/google/android/maps/driveabout/vector/p;->a(II)V

    .line 59
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aS;->i:Lcom/google/android/maps/driveabout/vector/p;

    or-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0, v4}, Lcom/google/android/maps/driveabout/vector/p;->a(II)V

    .line 60
    return-void
.end method

.method private static a([I)I
    .registers 4
    .parameter

    .prologue
    const v2, 0xff00

    .line 161
    const/4 v0, 0x0

    aget v0, p0, v0

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    aget v1, p0, v1

    and-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p0, v1

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/D;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 112
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aS;->g:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 113
    sget-object v0, Lcom/google/android/maps/driveabout/vector/D;->f:Lcom/google/android/maps/driveabout/vector/D;

    if-eq p3, v0, :cond_17

    sget-object v0, Lcom/google/android/maps/driveabout/vector/D;->e:Lcom/google/android/maps/driveabout/vector/D;

    if-eq p3, v0, :cond_17

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->k()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_18

    .line 157
    :cond_17
    :goto_17
    return-void

    .line 117
    :cond_18
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->n()Ln/Q;

    move-result-object v0

    invoke-virtual {v0}, Ln/Q;->h()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/k;->c(F)F

    move-result v1

    .line 119
    sget-object v0, Lcom/google/android/maps/driveabout/vector/D;->b:Lcom/google/android/maps/driveabout/vector/D;

    if-ne p3, v0, :cond_c2

    const/high16 v0, 0x4040

    :goto_2b
    sub-float v0, v1, v0

    .line 121
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->k()F

    move-result v1

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->h()F

    move-result v2

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    cmpg-float v1, v1, v0

    if-lez v1, :cond_17

    .line 132
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->i()F

    move-result v1

    float-to-int v1, v1

    .line 133
    iput v1, p0, Lcom/google/android/maps/driveabout/vector/aS;->d:I

    .line 135
    invoke-virtual {p2, v0}, Lcom/google/android/maps/driveabout/vector/k;->d(F)Ln/aK;

    move-result-object v0

    invoke-virtual {v0}, Ln/aK;->c()Ln/ab;

    move-result-object v0

    check-cast v0, Ln/r;

    .line 137
    invoke-virtual {v0}, Ln/r;->g()Ln/Q;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aS;->c:Ln/Q;

    .line 138
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aS;->j:Ln/Q;

    invoke-virtual {v2, v4, v4}, Ln/Q;->d(II)V

    .line 139
    invoke-virtual {v0}, Ln/r;->f()Ln/Q;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aS;->c:Ln/Q;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aS;->k:Ln/Q;

    invoke-static {v0, v2, v3}, Ln/Q;->b(Ln/Q;Ln/Q;Ln/Q;)V

    .line 140
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aS;->g:Lcom/google/android/maps/driveabout/vector/dY;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aS;->j:Ln/Q;

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aS;->d:I

    invoke-virtual {v0, v2, v3}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 141
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aS;->g:Lcom/google/android/maps/driveabout/vector/dY;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aS;->k:Ln/Q;

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aS;->d:I

    invoke-virtual {v0, v2, v3}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 143
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aS;->c:Ln/Q;

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->n()Ln/Q;

    move-result-object v2

    invoke-virtual {v0, v2}, Ln/Q;->c(Ln/Q;)F

    move-result v2

    .line 145
    sget-object v0, Lcom/google/android/maps/driveabout/vector/D;->b:Lcom/google/android/maps/driveabout/vector/D;

    if-ne p3, v0, :cond_c6

    sget v0, Lcom/google/android/maps/driveabout/vector/aS;->b:F

    :goto_86
    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 148
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aS;->j:Ln/Q;

    invoke-virtual {v2, v0}, Ln/Q;->b(I)V

    .line 149
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aS;->k:Ln/Q;

    invoke-virtual {v2, v0}, Ln/Q;->b(I)V

    .line 150
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aS;->g:Lcom/google/android/maps/driveabout/vector/dY;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aS;->j:Ln/Q;

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aS;->d:I

    invoke-virtual {v0, v2, v3}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 151
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aS;->g:Lcom/google/android/maps/driveabout/vector/dY;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aS;->k:Ln/Q;

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aS;->d:I

    invoke-virtual {v0, v2, v3}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 153
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aS;->j:Ln/Q;

    invoke-virtual {v0, v1}, Ln/Q;->b(I)V

    .line 154
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aS;->k:Ln/Q;

    invoke-virtual {v0, v1}, Ln/Q;->b(I)V

    .line 155
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aS;->g:Lcom/google/android/maps/driveabout/vector/dY;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aS;->j:Ln/Q;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aS;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 156
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aS;->g:Lcom/google/android/maps/driveabout/vector/dY;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aS;->k:Ln/Q;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aS;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    goto/16 :goto_17

    .line 119
    :cond_c2
    const/high16 v0, 0x40a0

    goto/16 :goto_2b

    .line 145
    :cond_c6
    sget v0, Lcom/google/android/maps/driveabout/vector/aS;->a:F

    goto :goto_86
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/D;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 103
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aS;->f:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aS;->e:Lcom/google/android/maps/driveabout/vector/D;

    if-eq p1, v1, :cond_e

    .line 104
    :cond_9
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/aS;->e:Lcom/google/android/maps/driveabout/vector/D;

    .line 105
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aS;->f:Z

    .line 106
    const/4 v0, 0x1

    .line 108
    :cond_e
    return v0
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->a()Lcom/google/android/maps/driveabout/vector/D;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/aS;->a(Lcom/google/android/maps/driveabout/vector/D;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 70
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->a()Lcom/google/android/maps/driveabout/vector/D;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/maps/driveabout/vector/aS;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/D;)V

    .line 72
    :cond_11
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aS;->g:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dY;->a()I

    move-result v0

    if-nez v0, :cond_1a

    .line 90
    :goto_19
    return-void

    .line 75
    :cond_1a
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 76
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 78
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aS;->c:Ln/Q;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aS;->d:I

    int-to-float v2, v2

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/maps/driveabout/vector/dz;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Ln/Q;F)V

    .line 79
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->m()V

    .line 80
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->s()V

    .line 81
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 82
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aS;->g:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 83
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->a()Lcom/google/android/maps/driveabout/vector/D;

    move-result-object v1

    sget-object v2, Lcom/google/android/maps/driveabout/vector/D;->c:Lcom/google/android/maps/driveabout/vector/D;

    if-ne v1, v2, :cond_55

    .line 84
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aS;->i:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/p;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 88
    :goto_46
    const/4 v1, 0x5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aS;->g:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/dY;->a()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 89
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_19

    .line 86
    :cond_55
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aS;->h:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/p;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    goto :goto_46
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aS;->f:Z

    .line 95
    return v0
.end method

.method public u_()I
    .registers 2

    .prologue
    .line 64
    const v0, 0x61a80

    return v0
.end method
