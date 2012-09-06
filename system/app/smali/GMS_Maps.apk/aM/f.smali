.class public abstract LaM/F;
.super LaM/i;
.source "SourceFile"


# static fields
.field private static final v:Lat/Y;

.field private static final w:I

.field private static final x:I

.field private static final y:I


# instance fields
.field protected u:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v1, 0x9

    const/4 v2, 0x7

    .line 40
    const/16 v0, 0x12

    invoke-static {v0}, Lat/Y;->b(I)Lat/Y;

    move-result-object v0

    sput-object v0, LaM/F;->v:Lat/Y;

    .line 46
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_27

    move v0, v1

    :goto_12
    sput v0, LaM/F;->w:I

    .line 48
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1b

    move v1, v2

    :cond_1b
    sput v1, LaM/F;->x:I

    .line 49
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v2, 0x5

    :cond_24
    sput v2, LaM/F;->y:I

    return-void

    .line 46
    :cond_27
    const/16 v0, 0xe

    goto :goto_12
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/F;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct/range {p0 .. p5}, LaM/i;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/F;)V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, LaM/F;->u:Z

    .line 60
    return-void
.end method

.method private a([Lat/B;I)[Lat/B;
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 204
    new-array v0, p2, [Lat/B;

    .line 205
    array-length v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    return-object v0
.end method

.method public static b()I
    .registers 4

    .prologue
    .line 126
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->w()D

    move-result-wide v0

    .line 127
    const-wide/high16 v2, 0x3ff0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_12

    .line 128
    sget v0, LaM/F;->y:I

    neg-int v0, v0

    .line 132
    :goto_11
    return v0

    .line 129
    :cond_12
    const-wide/high16 v2, 0x3ff8

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1c

    .line 130
    sget v0, LaM/F;->x:I

    neg-int v0, v0

    goto :goto_11

    .line 132
    :cond_1c
    sget v0, LaM/F;->w:I

    neg-int v0, v0

    goto :goto_11
.end method


# virtual methods
.method public a()Lad/b;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, LaM/F;->f:Lcom/google/googlenav/F;

    check-cast v0, Lad/b;

    return-object v0
.end method

.method protected a(IZZ)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, LaM/F;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->c()I

    move-result v4

    .line 149
    iget-object v0, p0, LaM/F;->f:Lcom/google/googlenav/F;

    check-cast v0, Lad/k;

    .line 150
    iget-object v2, p0, LaM/F;->d:Lat/u;

    invoke-virtual {v2}, Lat/u;->d()Lat/Y;

    move-result-object v5

    .line 151
    iget-boolean v2, p0, LaM/F;->u:Z

    if-eqz v2, :cond_1f

    sget-object v2, LaM/F;->v:Lat/Y;

    invoke-virtual {v2, v5}, Lat/Y;->b(Lat/Y;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 152
    sget-object v5, LaM/F;->v:Lat/Y;

    .line 156
    :cond_1f
    iput-boolean v1, p0, LaM/F;->u:Z

    .line 157
    invoke-virtual {p0, p1}, LaM/F;->b(I)V

    .line 158
    invoke-virtual {p0}, LaM/F;->an()Z

    .line 160
    if-ltz p1, :cond_50

    iget-object v2, p0, LaM/F;->f:Lcom/google/googlenav/F;

    invoke-interface {v2}, Lcom/google/googlenav/F;->f()I

    move-result v2

    if-ge p1, v2, :cond_50

    .line 161
    if-eqz p2, :cond_50

    .line 162
    if-eqz p3, :cond_74

    .line 165
    const/4 v2, -0x1

    if-eq v4, v2, :cond_79

    .line 166
    invoke-interface {v0, v4}, Lad/k;->m(I)I

    move-result v2

    .line 167
    invoke-interface {v0, p1}, Lad/k;->m(I)I

    move-result v3

    .line 173
    :goto_40
    if-ne v2, v3, :cond_51

    .line 175
    invoke-virtual {p0, v1, v5}, LaM/F;->a(ZLat/Y;)V

    .line 196
    :goto_45
    const/16 v0, 0x12

    const-string v1, "dd"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_50
    return-void

    .line 177
    :cond_51
    invoke-interface {v0}, Lad/k;->ad()[Lat/B;

    move-result-object v0

    .line 180
    const/4 v1, 0x0

    .line 181
    if-eqz v0, :cond_69

    .line 183
    array-length v1, v0

    invoke-direct {p0, v0, v1}, LaM/F;->a([Lat/B;I)[Lat/B;

    move-result-object v1

    .line 184
    iget-object v0, p0, LaM/F;->f:Lcom/google/googlenav/F;

    invoke-interface {v0, p1}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, LaM/F;->a(Lcom/google/googlenav/E;Lat/Y;)Lat/B;

    move-result-object v0

    aput-object v0, v1, v3

    .line 187
    :cond_69
    iget-object v0, p0, LaM/F;->d:Lat/u;

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lat/u;->a([Lat/B;IIILat/Y;)V

    goto :goto_45

    .line 192
    :cond_74
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v5}, LaM/F;->a(ZLat/Y;)V

    goto :goto_45

    :cond_79
    move v3, v1

    move v2, v1

    goto :goto_40
.end method

.method protected a(Lad/y;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, LaM/F;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/A;

    invoke-direct {v1, p2}, Lcom/google/googlenav/ui/wizard/A;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 93
    const/4 v0, 0x0

    .line 94
    iget-object v1, p0, LaM/F;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {p1}, Lad/y;->j()Lcom/google/googlenav/ai;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/ai;BZ)V

    .line 96
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 216
    const/4 v0, 0x4

    const-string v1, "v"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "v="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "s="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method protected a(Lcom/google/googlenav/ui/view/J;I)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 70
    iget-object v0, p0, LaM/F;->g:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_9

    iget-object v0, p0, LaM/F;->g:Lcom/google/googlenav/ui/view/d;

    if-eq p1, v0, :cond_e

    .line 71
    :cond_9
    invoke-super {p0, p1}, LaM/i;->a(Lcom/google/googlenav/ui/view/J;)Z

    move-result v0

    .line 87
    :goto_d
    return v0

    .line 76
    :cond_e
    iget-object v0, p0, LaM/F;->h:Lcom/google/googlenav/E;

    if-eqz v0, :cond_37

    iget-object v0, p0, LaM/F;->h:Lcom/google/googlenav/E;

    instance-of v0, v0, Lad/m;

    if-eqz v0, :cond_37

    iget-object v0, p0, LaM/F;->h:Lcom/google/googlenav/E;

    check-cast v0, Lad/m;

    invoke-virtual {v0}, Lad/m;->s()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 78
    invoke-virtual {p0}, LaM/F;->a()Lad/b;

    move-result-object v0

    invoke-virtual {v0}, Lad/b;->as()Lad/y;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Lad/y;->j()Lcom/google/googlenav/ai;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 81
    invoke-virtual {p0, v0, p2}, LaM/F;->a(Lad/y;I)V

    move v0, v1

    .line 82
    goto :goto_d

    .line 86
    :cond_37
    const/16 v0, 0x23

    const/16 v2, 0xd

    invoke-virtual {p0, v0, v2}, LaM/F;->a(CI)Z

    move v0, v1

    .line 87
    goto :goto_d
.end method

.method public b(Lcom/google/googlenav/E;)I
    .registers 3
    .parameter

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public c(Lcom/google/googlenav/E;)I
    .registers 4
    .parameter

    .prologue
    .line 110
    invoke-interface {p1}, Lcom/google/googlenav/E;->c()B

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    .line 113
    invoke-static {}, LaM/F;->b()I

    move-result v0

    .line 115
    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0, p1}, LaM/F;->f(Lcom/google/googlenav/E;)I

    move-result v0

    neg-int v0, v0

    goto :goto_b
.end method

.method public e(LZ/a;)Z
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x36

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 224
    invoke-virtual {p0}, LaM/F;->ae()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 258
    :cond_a
    :goto_a
    return v1

    .line 228
    :cond_b
    invoke-virtual {p1}, LZ/a;->b()I

    move-result v3

    .line 229
    if-eq v3, v4, :cond_15

    const/16 v0, 0x34

    if-ne v3, v0, :cond_a

    .line 230
    :cond_15
    invoke-virtual {p0}, LaM/F;->ac()Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 234
    invoke-virtual {p0}, LaM/F;->a()Lad/b;

    move-result-object v0

    invoke-virtual {v0}, Lad/b;->ay()I

    move-result v0

    .line 235
    if-ltz v0, :cond_37

    iget-object v3, p0, LaM/F;->f:Lcom/google/googlenav/F;

    invoke-interface {v3}, Lcom/google/googlenav/F;->f()I

    move-result v3

    if-lt v0, v3, :cond_38

    :cond_37
    move v0, v1

    .line 238
    :cond_38
    iget-object v1, p0, LaM/F;->f:Lcom/google/googlenav/F;

    invoke-interface {v1, v0}, Lcom/google/googlenav/F;->a(I)V

    .line 242
    invoke-virtual {p0}, LaM/F;->ba()Lcom/google/googlenav/ui/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, LaM/am;->a(LaM/i;I)V

    move v1, v2

    .line 243
    goto :goto_a

    .line 246
    :cond_4a
    iget-object v0, p0, LaM/F;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->c()I

    move-result v0

    .line 248
    if-ne v3, v4, :cond_6c

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, LaM/F;->f:Lcom/google/googlenav/F;

    invoke-interface {v1}, Lcom/google/googlenav/F;->f()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 251
    :goto_60
    invoke-virtual {p0, v0, v2, v2}, LaM/F;->a(IZZ)V

    .line 252
    if-ne v3, v4, :cond_73

    const-string v0, "cn"

    :goto_67
    invoke-static {v0}, LaM/O;->b(Ljava/lang/String;)V

    move v1, v2

    .line 255
    goto :goto_a

    .line 248
    :cond_6c
    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_60

    .line 252
    :cond_73
    const-string v0, "cp"

    goto :goto_67
.end method

.method protected p()I
    .registers 2

    .prologue
    .line 212
    invoke-virtual {p0}, LaM/F;->q()I

    move-result v0

    neg-int v0, v0

    return v0
.end method
