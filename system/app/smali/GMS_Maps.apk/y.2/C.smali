.class public Ly/c;
.super Ly/a;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:Lcom/google/android/maps/driveabout/vector/cR;

.field private final c:F

.field private d:[F

.field private e:Lcom/google/android/maps/driveabout/vector/cV;

.field private final f:Lcom/google/android/maps/driveabout/vector/cM;

.field private volatile g:Ljava/lang/String;

.field private volatile h:I

.field private volatile i:I

.field private j:Lcom/google/android/maps/driveabout/vector/D;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ly/a;-><init>()V

    .line 34
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cR;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/cR;-><init>()V

    iput-object v0, p0, Ly/c;->b:Lcom/google/android/maps/driveabout/vector/cR;

    .line 37
    iput-object v1, p0, Ly/c;->e:Lcom/google/android/maps/driveabout/vector/cV;

    .line 39
    iput-object v1, p0, Ly/c;->g:Ljava/lang/String;

    .line 40
    const/16 v0, 0x32

    iput v0, p0, Ly/c;->h:I

    .line 41
    const/4 v0, 0x4

    iput v0, p0, Ly/c;->i:I

    .line 42
    sget-object v0, Lcom/google/android/maps/driveabout/vector/D;->f:Lcom/google/android/maps/driveabout/vector/D;

    iput-object v0, p0, Ly/c;->j:Lcom/google/android/maps/driveabout/vector/D;

    .line 46
    iput-object p1, p0, Ly/c;->a:Landroid/content/res/Resources;

    .line 47
    const v0, 0x7f0b004a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Ly/c;->c:F

    .line 48
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cM;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cM;-><init>(I)V

    iput-object v0, p0, Ly/c;->f:Lcom/google/android/maps/driveabout/vector/cM;

    .line 49
    return-void
.end method

.method private static a(Ljava/util/HashSet;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 133
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 134
    const-string v0, ""

    .line 147
    :goto_8
    return-object v0

    .line 136
    :cond_9
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    const/4 v0, 0x1

    .line 139
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 140
    if-nez v0, :cond_2c

    .line 141
    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    .line 145
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_13

    .line 143
    :cond_2c
    const/4 v1, 0x0

    goto :goto_21

    .line 147
    :cond_2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/D;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 102
    const/high16 v6, -0x100

    .line 103
    sget-object v0, Lcom/google/android/maps/driveabout/vector/D;->b:Lcom/google/android/maps/driveabout/vector/D;

    if-ne p2, v0, :cond_51

    .line 104
    const/4 v6, -0x1

    .line 108
    :cond_9
    :goto_9
    iget-object v0, p0, Ly/c;->b:Lcom/google/android/maps/driveabout/vector/cR;

    iget-object v2, p0, Ly/c;->g:Ljava/lang/String;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/cR;->b:Lcom/google/android/maps/driveabout/vector/cT;

    sget-object v4, Lcom/google/android/maps/driveabout/vector/cR;->a:Ln/ak;

    iget v5, p0, Ly/c;->c:F

    move-object v1, p1

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cR;->a(Lcom/google/android/maps/driveabout/vector/aU;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;FIII)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    iput-object v0, p0, Ly/c;->e:Lcom/google/android/maps/driveabout/vector/cV;

    .line 112
    iget-object v2, p0, Ly/c;->b:Lcom/google/android/maps/driveabout/vector/cR;

    iget-object v3, p0, Ly/c;->g:Ljava/lang/String;

    sget-object v4, Lcom/google/android/maps/driveabout/vector/cR;->b:Lcom/google/android/maps/driveabout/vector/cT;

    sget-object v5, Lcom/google/android/maps/driveabout/vector/cR;->a:Ln/ak;

    iget v6, p0, Ly/c;->c:F

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/maps/driveabout/vector/cR;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;FZ)[F

    move-result-object v0

    iput-object v0, p0, Ly/c;->d:[F

    .line 115
    iget-object v0, p0, Ly/c;->f:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 116
    iget-object v0, p0, Ly/c;->e:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->b()F

    move-result v0

    .line 117
    iget-object v1, p0, Ly/c;->e:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cV;->c()F

    move-result v1

    .line 119
    iget-object v2, p0, Ly/c;->f:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v2, v9, v9}, Lcom/google/android/maps/driveabout/vector/cM;->a(FF)V

    .line 120
    iget-object v2, p0, Ly/c;->f:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v2, v9, v1}, Lcom/google/android/maps/driveabout/vector/cM;->a(FF)V

    .line 121
    iget-object v2, p0, Ly/c;->f:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v2, v0, v9}, Lcom/google/android/maps/driveabout/vector/cM;->a(FF)V

    .line 122
    iget-object v2, p0, Ly/c;->f:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/cM;->a(FF)V

    .line 123
    return-void

    .line 105
    :cond_51
    sget-object v0, Lcom/google/android/maps/driveabout/vector/D;->c:Lcom/google/android/maps/driveabout/vector/D;

    if-ne p2, v0, :cond_9

    .line 106
    const v6, -0x3f3f40

    goto :goto_9
.end method

.method private j()V
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Ly/c;->e:Lcom/google/android/maps/driveabout/vector/cV;

    if-eqz v0, :cond_c

    .line 127
    iget-object v0, p0, Ly/c;->e:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->g()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Ly/c;->e:Lcom/google/android/maps/driveabout/vector/cV;

    .line 130
    :cond_c
    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 52
    iput p1, p0, Ly/c;->h:I

    .line 53
    iput p2, p0, Ly/c;->i:I

    .line 54
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 62
    iget-object v0, p0, Ly/c;->g:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 99
    :goto_5
    return-void

    .line 66
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    .line 68
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->a()Lcom/google/android/maps/driveabout/vector/D;

    move-result-object v1

    iget-object v2, p0, Ly/c;->j:Lcom/google/android/maps/driveabout/vector/D;

    if-eq v1, v2, :cond_1b

    .line 70
    invoke-direct {p0}, Ly/c;->j()V

    .line 71
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->a()Lcom/google/android/maps/driveabout/vector/D;

    move-result-object v1

    iput-object v1, p0, Ly/c;->j:Lcom/google/android/maps/driveabout/vector/D;

    .line 74
    :cond_1b
    iget-object v1, p0, Ly/c;->e:Lcom/google/android/maps/driveabout/vector/cV;

    if-nez v1, :cond_26

    .line 75
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->a()Lcom/google/android/maps/driveabout/vector/D;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Ly/c;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/D;)V

    .line 78
    :cond_26
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 85
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->e()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Ly/c;->d:[F

    aget v2, v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Ly/c;->h:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Ly/c;->i:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 88
    iget-object v1, p0, Ly/c;->d:[F

    aget v1, v1, v4

    iget-object v2, p0, Ly/c;->d:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    const/high16 v3, 0x3f80

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 90
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->o()V

    .line 91
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 92
    iget-object v1, p0, Ly/c;->f:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/cM;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 93
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aU;->f:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 95
    iget-object v1, p0, Ly/c;->e:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cV;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 96
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 97
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->p()V

    .line 98
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_5
.end method

.method public a(Ljava/util/HashSet;Ljava/util/HashSet;ILcom/google/android/maps/driveabout/vector/D;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 152
    const/4 v0, -0x1

    if-eq p3, v0, :cond_4c

    .line 154
    :goto_7
    invoke-static {p1}, Ly/c;->a(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {p2}, Ly/c;->a(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_55

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_55

    .line 158
    iget-object v2, p0, Ly/c;->a:Landroid/content/res/Resources;

    const v3, 0x7f0d010e

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v1, v4, v8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v9

    const/4 v1, 0x4

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 170
    :goto_3e
    iget-object v1, p0, Ly/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 171
    iput-object v0, p0, Ly/c;->g:Ljava/lang/String;

    .line 172
    invoke-direct {p0}, Ly/c;->j()V

    .line 174
    :cond_4b
    return-void

    .line 152
    :cond_4c
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result p3

    goto :goto_7

    .line 160
    :cond_55
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 161
    iget-object v0, p0, Ly/c;->a:Landroid/content/res/Resources;

    const v1, 0x7f0d010d

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    .line 163
    :cond_73
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_93

    .line 164
    iget-object v1, p0, Ly/c;->a:Landroid/content/res/Resources;

    const v2, 0x7f0d0110

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v0, v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    .line 167
    :cond_93
    iget-object v0, p0, Ly/c;->a:Landroid/content/res/Resources;

    const v2, 0x7f0d010f

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v1, v3, v8

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3e
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 178
    invoke-direct {p0}, Ly/c;->j()V

    .line 179
    iget-object v0, p0, Ly/c;->b:Lcom/google/android/maps/driveabout/vector/cR;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cR;->a()V

    .line 180
    return-void
.end method
