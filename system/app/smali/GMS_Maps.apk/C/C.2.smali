.class public LC/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC/T;
.implements LC/x;


# instance fields
.field private final a:LaP/d;

.field private final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final c:Lcom/google/googlenav/common/a;

.field private final d:LF/i;

.field private final e:LC/q;

.field private final f:LC/Y;

.field private final g:LC/F;

.field private final h:LC/F;

.field private i:Z


# direct methods
.method public constructor <init>(LaP/d;LC/q;Lcom/google/googlenav/common/a;LF/i;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p3, p0, LC/C;->c:Lcom/google/googlenav/common/a;

    .line 83
    iput-object p1, p0, LC/C;->a:LaP/d;

    .line 84
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, LC/C;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 85
    iput-object p2, p0, LC/C;->e:LC/q;

    .line 86
    iput-object p4, p0, LC/C;->d:LF/i;

    .line 87
    new-instance v0, LC/Y;

    invoke-direct {v0}, LC/Y;-><init>()V

    iput-object v0, p0, LC/C;->f:LC/Y;

    .line 88
    new-instance v0, LC/f;

    invoke-direct {v0, p1}, LC/f;-><init>(LaP/d;)V

    iput-object v0, p0, LC/C;->g:LC/F;

    .line 89
    new-instance v0, LC/W;

    iget-object v1, p0, LC/C;->f:LC/Y;

    invoke-direct {v0, p1, v1}, LC/W;-><init>(LaP/d;LC/Y;)V

    iput-object v0, p0, LC/C;->h:LC/F;

    .line 93
    invoke-virtual {p2, p0}, LC/q;->a(LC/T;)V

    .line 94
    return-void
.end method

.method static synthetic a(LC/C;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, LC/C;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method private a(LC/z;)V
    .registers 4
    .parameter

    .prologue
    .line 234
    iget-object v0, p0, LC/C;->f:LC/Y;

    invoke-virtual {v0}, LC/Y;->a()LC/z;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 235
    invoke-direct {p0, p1}, LC/C;->b(LC/z;)V

    .line 241
    :cond_b
    :goto_b
    iget-object v0, p0, LC/C;->f:LC/Y;

    invoke-virtual {v0, p1}, LC/Y;->a(LC/z;)V

    .line 242
    iget-object v0, p0, LC/C;->d:LF/i;

    new-instance v1, LC/D;

    invoke-direct {v1, p0, p1}, LC/D;-><init>(LC/C;LC/z;)V

    invoke-interface {v0, v1}, LF/i;->b(Ljava/lang/Runnable;)Z

    .line 250
    return-void

    .line 236
    :cond_1b
    iget-boolean v0, p0, LC/C;->i:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, LC/C;->f:LC/Y;

    invoke-virtual {v0}, LC/Y;->a()LC/z;

    move-result-object v0

    iget-object v0, v0, LC/z;->a:LC/R;

    invoke-virtual {v0}, LC/R;->a()LC/S;

    move-result-object v0

    sget-object v1, LC/S;->c:LC/S;

    if-ne v0, v1, :cond_b

    iget-object v0, p1, LC/z;->a:LC/R;

    invoke-virtual {v0}, LC/R;->a()LC/S;

    move-result-object v0

    sget-object v1, LC/S;->c:LC/S;

    if-eq v0, v1, :cond_b

    .line 239
    iget-object v0, p0, LC/C;->f:LC/Y;

    invoke-virtual {v0}, LC/Y;->a()LC/z;

    move-result-object v0

    invoke-direct {p0, v0, p1}, LC/C;->a(LC/z;LC/z;)V

    goto :goto_b
.end method

.method private a(LC/z;LC/z;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 279
    const-string v1, ""

    .line 280
    const-string v0, ""

    .line 281
    sget-object v2, LC/E;->c:[I

    iget-object v3, p2, LC/z;->b:LC/A;

    invoke-virtual {v3}, LC/A;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_8a

    .line 295
    :cond_11
    :goto_11
    iget-object v2, p1, LC/z;->a:LC/R;

    invoke-virtual {v2}, LC/R;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_86

    const-string v2, "T"

    .line 296
    :goto_1b
    const/16 v3, 0x61

    const-string v4, "t"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "t="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "s="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "d="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v5}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 300
    return-void

    .line 283
    :pswitch_6c
    const-string v1, "o"

    goto :goto_11

    .line 286
    :pswitch_6f
    const-string v1, "c"

    .line 288
    iget-object v2, p1, LC/z;->b:LC/A;

    sget-object v3, LC/A;->a:LC/A;

    if-ne v2, v3, :cond_11

    .line 289
    iget-object v0, p0, LC/C;->a:LaP/d;

    iget-object v2, p1, LC/z;->c:LaP/a;

    iget-object v3, p2, LC/z;->c:LaP/a;

    invoke-static {v0, v2, v3}, LF/g;->a(LaP/d;LaP/a;LaP/a;)F

    move-result v0

    .line 291
    invoke-static {v0}, LF/r;->a(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 295
    :cond_86
    const-string v2, "F"

    goto :goto_1b

    .line 281
    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_6f
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 379
    iget-object v0, p0, LC/C;->f:LC/Y;

    invoke-virtual {v0}, LC/Y;->c()LC/R;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, LC/C;->f:LC/Y;

    invoke-virtual {v0}, LC/Y;->c()LC/R;

    move-result-object v0

    invoke-virtual {v0}, LC/R;->a()LC/S;

    move-result-object v0

    invoke-virtual {v0}, LC/S;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private b(J)V
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 390
    iget-object v0, p0, LC/C;->e:LC/q;

    const-string v2, "speed_provider"

    invoke-virtual {v0, v2}, LC/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 391
    iget-object v0, p0, LC/C;->f:LC/Y;

    invoke-virtual {v0}, LC/Y;->e()J

    move-result-wide v2

    .line 392
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2a

    sub-long v2, p1, v2

    const-wide/16 v4, 0x7530

    cmp-long v0, v2, v4

    if-lez v0, :cond_2a

    const/4 v0, 0x1

    :goto_20
    iput-boolean v0, p0, LC/C;->i:Z

    .line 394
    iget-object v0, p0, LC/C;->e:LC/q;

    const-string v2, "speed_provider"

    invoke-virtual {v0, v2, v1}, LC/q;->a(Ljava/lang/String;Z)Z

    .line 396
    :cond_29
    return-void

    :cond_2a
    move v0, v1

    .line 392
    goto :goto_20
.end method

.method private b(LC/z;)V
    .registers 10
    .parameter

    .prologue
    .line 257
    const-string v0, ""

    .line 258
    sget-object v1, LC/E;->b:[I

    iget-object v2, p1, LC/z;->a:LC/R;

    invoke-virtual {v2}, LC/R;->a()LC/S;

    move-result-object v2

    invoke-virtual {v2}, LC/S;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_5a

    .line 266
    :goto_13
    iget-object v1, p0, LC/C;->a:LaP/d;

    invoke-static {v1, p1}, LF/r;->a(LaP/d;LC/z;)Ljava/lang/String;

    move-result-object v1

    .line 267
    const/16 v2, 0x61

    const-string v3, "fl"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "s="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "m="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v4}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void

    .line 260
    :pswitch_54
    const-string v0, "g"

    goto :goto_13

    .line 263
    :pswitch_57
    const-string v0, "n"

    goto :goto_13

    .line 258
    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_54
        :pswitch_57
    .end packed-switch
.end method

.method private c(LC/R;)V
    .registers 5
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, LC/C;->g:LC/F;

    invoke-interface {v0, p1}, LC/F;->a(LC/R;)LC/G;

    move-result-object v0

    .line 98
    iget-object v1, v0, LC/G;->a:LC/H;

    sget-object v2, LC/H;->b:LC/H;

    if-ne v1, v2, :cond_18

    .line 99
    invoke-virtual {p1}, LC/R;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, LC/C;->a(J)LC/B;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LC/C;->a(LC/R;LC/B;)V

    .line 109
    :goto_17
    return-void

    .line 100
    :cond_18
    iget-object v1, v0, LC/G;->a:LC/H;

    sget-object v2, LC/H;->c:LC/H;

    if-ne v1, v2, :cond_2a

    .line 101
    iget-object v0, v0, LC/G;->b:LaP/a;

    .line 102
    new-instance v1, LaP/c;

    invoke-direct {v1, v0, v0}, LaP/c;-><init>(LaP/a;LaP/a;)V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, LC/C;->a(LC/R;LaP/a;LaP/c;Z)V

    goto :goto_17

    .line 105
    :cond_2a
    iget-object v0, v0, LC/G;->b:LaP/a;

    .line 106
    new-instance v1, LaP/c;

    invoke-direct {v1, v0, v0}, LaP/c;-><init>(LaP/a;LaP/a;)V

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, LC/C;->a(LC/R;LaP/a;LaP/c;Z)V

    goto :goto_17
.end method

.method private d(LC/R;)V
    .registers 5
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, LC/C;->h:LC/F;

    invoke-interface {v0, p1}, LC/F;->a(LC/R;)LC/G;

    move-result-object v0

    .line 113
    iget-object v1, v0, LC/G;->a:LC/H;

    sget-object v2, LC/H;->a:LC/H;

    if-ne v1, v2, :cond_10

    .line 114
    invoke-virtual {p0, p1}, LC/C;->b(LC/R;)V

    .line 121
    :goto_f
    return-void

    .line 116
    :cond_10
    iget-object v0, v0, LC/G;->b:LaP/a;

    .line 117
    new-instance v1, LaP/c;

    iget-object v2, p0, LC/C;->f:LC/Y;

    invoke-virtual {v2}, LC/Y;->b()LC/z;

    move-result-object v2

    iget-object v2, v2, LC/z;->c:LaP/a;

    invoke-direct {v1, v2, v0}, LaP/c;-><init>(LaP/a;LaP/a;)V

    .line 119
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, LC/C;->a(LC/R;LaP/a;LaP/c;Z)V

    goto :goto_f
.end method


# virtual methods
.method a(J)LC/B;
    .registers 13
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 140
    iget-object v2, p0, LC/C;->f:LC/Y;

    invoke-virtual {v2}, LC/Y;->b()LC/z;

    move-result-object v2

    .line 141
    if-nez v2, :cond_d

    .line 142
    sget-object v0, LC/B;->c:LC/B;

    .line 182
    :goto_c
    return-object v0

    .line 144
    :cond_d
    iget-object v3, v2, LC/z;->c:LaP/a;

    iget-object v3, v3, LaP/a;->a:LaP/t;

    .line 145
    iget-object v4, p0, LC/C;->a:LaP/d;

    invoke-virtual {v4, v3}, LaP/d;->a(LaP/t;)LaP/h;

    move-result-object v4

    .line 146
    iget-object v5, v2, LC/z;->a:LC/R;

    invoke-virtual {v5}, LC/R;->getTime()J

    move-result-wide v5

    sub-long v5, p1, v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 148
    invoke-virtual {v4}, LaP/h;->o()I

    move-result v7

    .line 149
    invoke-virtual {v4}, LaP/h;->y()I

    move-result v8

    .line 150
    invoke-virtual {v4}, LaP/h;->n()Z

    move-result v9

    if-eqz v9, :cond_33

    const/4 v9, -0x1

    if-ne v8, v9, :cond_36

    .line 152
    :cond_33
    sget-object v0, LC/B;->c:LC/B;

    goto :goto_c

    .line 154
    :cond_36
    int-to-float v7, v7

    iget-object v2, v2, LC/z;->c:LaP/a;

    iget v2, v2, LaP/a;->b:F

    mul-float/2addr v2, v7

    float-to-int v2, v2

    .line 155
    sub-int v2, v8, v2

    .line 156
    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-lez v2, :cond_47

    .line 159
    sget-object v0, LC/B;->c:LC/B;

    goto :goto_c

    .line 161
    :cond_47
    sget-object v2, LC/E;->a:[I

    invoke-virtual {v4}, LaP/h;->b()LaP/q;

    move-result-object v4

    invoke-virtual {v4}, LaP/q;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_84

    .line 182
    sget-object v0, LC/B;->a:LC/B;

    goto :goto_c

    .line 164
    :pswitch_59
    sget-object v0, LC/B;->b:LC/B;

    goto :goto_c

    .line 168
    :pswitch_5c
    iget-object v2, p0, LC/C;->a:LaP/d;

    invoke-virtual {v2, v3}, LaP/d;->d(LaP/t;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 174
    :cond_64
    :goto_64
    if-eqz v0, :cond_81

    .line 175
    sget-object v0, LC/B;->b:LC/B;

    goto :goto_c

    .line 171
    :cond_69
    iget-object v2, p0, LC/C;->a:LaP/d;

    iget v3, v3, LaP/t;->a:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, LaP/d;->a(I)LaP/g;

    move-result-object v2

    .line 172
    invoke-virtual {v2, v1}, LaP/g;->a(I)LaP/h;

    move-result-object v2

    invoke-virtual {v2}, LaP/h;->b()LaP/q;

    move-result-object v2

    sget-object v3, LaP/q;->a:LaP/q;

    if-eq v2, v3, :cond_64

    move v0, v1

    goto :goto_64

    .line 177
    :cond_81
    sget-object v0, LC/B;->a:LC/B;

    goto :goto_c

    .line 161
    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_59
        :pswitch_59
        :pswitch_5c
    .end packed-switch
.end method

.method public a()V
    .registers 1

    .prologue
    .line 406
    return-void
.end method

.method public a(LC/R;)V
    .registers 4
    .parameter

    .prologue
    .line 327
    invoke-virtual {p1}, LC/R;->a()LC/S;

    move-result-object v0

    sget-object v1, LC/S;->a:LC/S;

    if-eq v0, v1, :cond_10

    invoke-virtual {p1}, LC/R;->a()LC/S;

    move-result-object v0

    sget-object v1, LC/S;->b:LC/S;

    if-ne v0, v1, :cond_14

    .line 329
    :cond_10
    invoke-direct {p0, p1}, LC/C;->c(LC/R;)V

    .line 333
    :cond_13
    :goto_13
    return-void

    .line 330
    :cond_14
    invoke-virtual {p1}, LC/R;->a()LC/S;

    move-result-object v0

    sget-object v1, LC/S;->c:LC/S;

    if-ne v0, v1, :cond_13

    .line 331
    invoke-direct {p0, p1}, LC/C;->d(LC/R;)V

    goto :goto_13
.end method

.method a(LC/R;LC/B;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 200
    invoke-virtual {p1}, LC/R;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, LC/C;->b(J)V

    .line 201
    invoke-static {p1, p2}, LC/z;->a(LC/R;LC/B;)LC/z;

    move-result-object v0

    invoke-direct {p0, v0}, LC/C;->a(LC/z;)V

    .line 202
    return-void
.end method

.method a(LC/R;LaP/a;LaP/c;Z)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 207
    invoke-static {p1, p2, p3, p4}, LC/z;->a(LC/R;LaP/a;LaP/c;Z)LC/z;

    move-result-object v0

    .line 209
    invoke-virtual {p1}, LC/R;->a()LC/S;

    move-result-object v1

    sget-object v2, LC/S;->c:LC/S;

    if-eq v1, v2, :cond_13

    .line 210
    invoke-virtual {p1}, LC/R;->getTime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, LC/C;->b(J)V

    .line 212
    :cond_13
    invoke-direct {p0, v0}, LC/C;->a(LC/z;)V

    .line 213
    return-void
.end method

.method public a(LC/y;)V
    .registers 3
    .parameter

    .prologue
    .line 309
    iget-object v0, p0, LC/C;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 353
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 357
    const-string v0, "gps"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "network"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 359
    :cond_11
    if-ne p3, v2, :cond_23

    .line 362
    invoke-direct {p0, p2}, LC/C;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 371
    const/4 v0, 0x0

    iput-boolean v0, p0, LC/C;->i:Z

    .line 372
    iget-object v0, p0, LC/C;->e:LC/q;

    const-string v1, "speed_provider"

    invoke-virtual {v0, v1, v2}, LC/q;->a(Ljava/lang/String;Z)Z

    .line 376
    :cond_23
    return-void
.end method

.method b(LC/R;)V
    .registers 4
    .parameter

    .prologue
    .line 191
    invoke-virtual {p1}, LC/R;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, LC/C;->b(J)V

    .line 192
    invoke-static {p1}, LC/z;->a(LC/R;)LC/z;

    move-result-object v0

    invoke-direct {p0, v0}, LC/C;->a(LC/z;)V

    .line 193
    return-void
.end method

.method public b(LC/y;)V
    .registers 3
    .parameter

    .prologue
    .line 319
    iget-object v0, p0, LC/C;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 320
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 341
    const-string v0, "integrated_location_provider"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 342
    new-instance v0, LC/R;

    new-instance v1, Landroid/location/Location;

    const-string v2, "integrated_location_provider"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, LC/R;-><init>(Landroid/location/Location;)V

    .line 344
    sget-object v1, LC/S;->c:LC/S;

    invoke-virtual {v0, v1}, LC/R;->a(LC/S;)V

    .line 345
    iget-object v1, p0, LC/C;->c:Lcom/google/googlenav/common/a;

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LC/R;->setTime(J)V

    .line 346
    invoke-virtual {p0, v0}, LC/C;->b(LC/R;)V

    .line 348
    :cond_25
    return-void
.end method
