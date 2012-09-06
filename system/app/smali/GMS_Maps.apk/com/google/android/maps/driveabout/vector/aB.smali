.class public Lcom/google/android/maps/driveabout/vector/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/aV;


# instance fields
.field private final a:Ln/aa;

.field private final b:Ln/am;

.field private final c:Lcom/google/android/maps/driveabout/vector/dg;

.field private d:[Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:I

.field private g:Lcom/google/android/maps/driveabout/vector/aO;

.field private h:[F

.field private i:J

.field private j:Lcom/google/android/maps/driveabout/vector/ad;


# direct methods
.method private constructor <init>(Ln/am;Lcom/google/android/maps/driveabout/vector/dg;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->h:[F

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->i:J

    .line 59
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ab;->b:Ln/am;

    .line 60
    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/ab;->c:Lcom/google/android/maps/driveabout/vector/dg;

    .line 61
    invoke-virtual {p1}, Ln/am;->h()Ln/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->a:Ln/aa;

    .line 62
    return-void
.end method

.method public static a(Ln/al;Lcom/google/android/maps/driveabout/vector/aU;)Lcom/google/android/maps/driveabout/vector/ab;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 48
    new-instance v0, Lcom/google/android/maps/driveabout/vector/ab;

    invoke-interface {p0}, Ln/al;->d()Ln/am;

    move-result-object v1

    invoke-interface {p0}, Ln/al;->g()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/ab;-><init>(Ln/am;Lcom/google/android/maps/driveabout/vector/dg;)V

    .line 49
    instance-of v1, p0, Ln/v;

    if-eqz v1, :cond_17

    .line 50
    check-cast p0, Ln/v;

    .line 51
    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/driveabout/vector/ab;->a(Ln/v;Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 55
    :goto_16
    return-object v0

    .line 53
    :cond_17
    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/ab;->k()V

    goto :goto_16
.end method

.method private a(Ln/v;Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-virtual {p1}, Ln/v;->f()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ab;->b:Ln/am;

    invoke-static {v0, v1, p2}, Lcom/google/android/maps/driveabout/vector/aO;->a([BLn/am;Lcom/google/android/maps/driveabout/vector/aU;)Lcom/google/android/maps/driveabout/vector/aO;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->g:Lcom/google/android/maps/driveabout/vector/aO;

    .line 72
    invoke-virtual {p1}, Ln/v;->a()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->d:[Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Ln/v;->b()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->e:[Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Ln/v;->c()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->f:I

    .line 75
    return-void
.end method

.method private k()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 65
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->d:[Ljava/lang/String;

    .line 66
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->e:[Ljava/lang/String;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->f:I

    .line 68
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/D;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    sget-boolean v1, Lcom/google/android/maps/driveabout/vector/cy;->a:Z

    if-eqz v1, :cond_8

    .line 118
    const v0, 0x8000

    .line 120
    :cond_8
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ab;->g:Lcom/google/android/maps/driveabout/vector/aO;

    if-eqz v1, :cond_e

    .line 121
    or-int/lit8 v0, v0, 0x2

    .line 123
    :cond_e
    return v0
.end method

.method public a(J)V
    .registers 4
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->g:Lcom/google/android/maps/driveabout/vector/aO;

    if-eqz v0, :cond_9

    .line 241
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->g:Lcom/google/android/maps/driveabout/vector/aO;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/aO;->a(J)V

    .line 243
    :cond_9
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->g:Lcom/google/android/maps/driveabout/vector/aO;

    if-eqz v0, :cond_9

    .line 91
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->g:Lcom/google/android/maps/driveabout/vector/aO;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/aO;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 93
    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->j:Lcom/google/android/maps/driveabout/vector/ad;

    if-eqz v0, :cond_15

    .line 94
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->j:Lcom/google/android/maps/driveabout/vector/ad;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/ad;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->j:Lcom/google/android/maps/driveabout/vector/ad;

    .line 97
    :cond_15
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 143
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->g:Lcom/google/android/maps/driveabout/vector/aO;

    if-nez v0, :cond_d

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->b()I

    move-result v0

    if-ne v0, v6, :cond_d

    .line 175
    :goto_c
    return-void

    .line 148
    :cond_d
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 149
    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 150
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/vector/ab;->i:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_74

    .line 151
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/maps/driveabout/vector/ab;->i:J

    .line 152
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->a:Ln/aa;

    invoke-virtual {v0}, Ln/aa;->d()Ln/Q;

    move-result-object v0

    .line 156
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->d()Z

    move-result v2

    if-nez v2, :cond_68

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->k()F

    move-result v2

    cmpl-float v2, v2, v7

    if-nez v2, :cond_68

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->j()F

    move-result v2

    cmpl-float v2, v2, v7

    if-nez v2, :cond_68

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_68

    .line 159
    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/aU;->k:[F

    invoke-virtual {p2, v0, v2}, Lcom/google/android/maps/driveabout/vector/k;->a(Ln/Q;[F)V

    .line 160
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->k:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/aU;->k:[F

    aget v2, v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v0, v2}, Lcom/google/android/maps/driveabout/vector/k;->d(FF)Ln/Q;

    move-result-object v0

    .line 164
    :cond_68
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ab;->a:Ln/aa;

    invoke-virtual {v2}, Ln/aa;->g()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ab;->h:[F

    invoke-static {p1, p2, v0, v2, v3}, Lcom/google/android/maps/driveabout/vector/dz;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Ln/Q;F[F)V

    .line 167
    :cond_74
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->h:[F

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/vector/dz;->a(Ljavax/microedition/khronos/opengles/GL10;[F)V

    .line 169
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->b()I

    move-result v0

    if-ne v0, v6, :cond_88

    .line 170
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->g:Lcom/google/android/maps/driveabout/vector/aO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/aO;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V

    .line 174
    :cond_84
    :goto_84
    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_c

    .line 171
    :cond_88
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->b()I

    move-result v0

    const/16 v2, 0xf

    if-ne v0, v2, :cond_84

    .line 172
    sget-object v0, Lcom/google/android/maps/driveabout/vector/aW;->a:Lcom/google/android/maps/driveabout/vector/aW;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/aW;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V

    goto :goto_84
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/ad;)V
    .registers 2
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ab;->j:Lcom/google/android/maps/driveabout/vector/ad;

    .line 204
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bY;)V
    .registers 2
    .parameter

    .prologue
    .line 112
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;ILjava/util/Collection;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 247
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ab;->d:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    .line 248
    invoke-interface {p3, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 250
    :cond_e
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 214
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;Ljava/util/Collection;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 254
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ab;->e:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    .line 255
    invoke-interface {p2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 257
    :cond_e
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 209
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/ct;)Z
    .registers 3
    .parameter

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/google/googlenav/common/a;)Z
    .registers 3
    .parameter

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public b()Ln/am;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->b:Ln/am;

    return-object v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->g:Lcom/google/android/maps/driveabout/vector/aO;

    if-eqz v0, :cond_9

    .line 80
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->g:Lcom/google/android/maps/driveabout/vector/aO;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/aO;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 82
    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->j:Lcom/google/android/maps/driveabout/vector/ad;

    if-eqz v0, :cond_15

    .line 83
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->j:Lcom/google/android/maps/driveabout/vector/ad;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/ad;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->j:Lcom/google/android/maps/driveabout/vector/ad;

    .line 86
    :cond_15
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->a()Lcom/google/android/maps/driveabout/vector/D;

    move-result-object v0

    .line 130
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->b()I

    .line 132
    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/vector/aO;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/D;)V

    .line 136
    return-void
.end method

.method public b(Lcom/google/googlenav/common/a;)Z
    .registers 3
    .parameter

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public c()Lcom/google/android/maps/driveabout/vector/dg;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->c:Lcom/google/android/maps/driveabout/vector/dg;

    return-object v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 184
    const/4 v0, -0x1

    return v0
.end method

.method public e()Lcom/google/android/maps/driveabout/vector/ad;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->j:Lcom/google/android/maps/driveabout/vector/ad;

    return-object v0
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->g:Lcom/google/android/maps/driveabout/vector/aO;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->g:Lcom/google/android/maps/driveabout/vector/aO;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aO;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public g()V
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->g:Lcom/google/android/maps/driveabout/vector/aO;

    if-eqz v0, :cond_9

    .line 234
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->g:Lcom/google/android/maps/driveabout/vector/aO;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aO;->e()V

    .line 236
    :cond_9
    return-void
.end method

.method public h()I
    .registers 2

    .prologue
    .line 261
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->f:I

    return v0
.end method

.method public i()I
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->g:Lcom/google/android/maps/driveabout/vector/aO;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ab;->g:Lcom/google/android/maps/driveabout/vector/aO;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aO;->a()I

    move-result v0

    goto :goto_5
.end method

.method public j()I
    .registers 3

    .prologue
    .line 271
    const/16 v0, 0x88

    .line 272
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ab;->g:Lcom/google/android/maps/driveabout/vector/aO;

    if-eqz v1, :cond_d

    .line 273
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ab;->g:Lcom/google/android/maps/driveabout/vector/aO;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/aO;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 275
    :cond_d
    return v0
.end method
