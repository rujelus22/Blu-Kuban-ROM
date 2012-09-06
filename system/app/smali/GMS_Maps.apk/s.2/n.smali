.class public Ls/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:[Ls/q;

.field protected final b:[Ls/q;

.field protected c:I

.field private final d:Ljava/lang/Thread;

.field private e:Landroid/content/Context;

.field private final f:Lcom/google/android/maps/driveabout/app/cK;

.field private g:Lcom/google/android/maps/driveabout/app/cI;

.field private final h:Lcom/google/android/maps/driveabout/app/aN;

.field private final i:Lo/r;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/cK;Lcom/google/android/maps/driveabout/app/cI;Lcom/google/android/maps/driveabout/app/aN;Lo/r;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget v0, Ls/q;->b:I

    new-array v0, v0, [Ls/q;

    iput-object v0, p0, Ls/n;->a:[Ls/q;

    .line 34
    sget v0, Ls/q;->b:I

    new-array v0, v0, [Ls/q;

    iput-object v0, p0, Ls/n;->b:[Ls/q;

    .line 96
    iput-object p1, p0, Ls/n;->e:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Ls/n;->f:Lcom/google/android/maps/driveabout/app/cK;

    .line 98
    iput-object p3, p0, Ls/n;->g:Lcom/google/android/maps/driveabout/app/cI;

    .line 99
    iput-object p4, p0, Ls/n;->h:Lcom/google/android/maps/driveabout/app/aN;

    .line 100
    iput-object p5, p0, Ls/n;->i:Lo/r;

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Ls/n;->c:I

    .line 102
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ls/n;->d:Ljava/lang/Thread;

    .line 103
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/cK;Lcom/google/android/maps/driveabout/app/cI;Lcom/google/android/maps/driveabout/app/aN;Lo/r;)Ls/n;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    new-instance v0, Ls/n;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ls/n;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/cK;Lcom/google/android/maps/driveabout/app/cI;Lcom/google/android/maps/driveabout/app/aN;Lo/r;)V

    .line 132
    invoke-virtual {v0}, Ls/n;->a()V

    .line 133
    return-object v0
.end method

.method private a(I)V
    .registers 5
    .parameter

    .prologue
    .line 321
    :goto_0
    iget v0, p0, Ls/n;->c:I

    if-ge p1, v0, :cond_11

    .line 322
    iget-object v0, p0, Ls/n;->b:[Ls/q;

    iget-object v1, p0, Ls/n;->b:[Ls/q;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    aput-object v1, v0, p1

    .line 321
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 324
    :cond_11
    iget v0, p0, Ls/n;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ls/n;->c:I

    .line 325
    return-void
.end method


# virtual methods
.method public a(Ls/w;)Ls/q;
    .registers 4
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Ls/n;->a:[Ls/q;

    invoke-virtual {p1}, Ls/w;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected a()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-static {}, Ls/w;->values()[Ls/w;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_7
    if-ge v0, v3, :cond_1a

    aget-object v4, v2, v0

    .line 109
    iget-object v5, p0, Ls/n;->a:[Ls/q;

    invoke-virtual {v4}, Ls/w;->ordinal()I

    move-result v6

    invoke-virtual {v4, p0}, Ls/w;->a(Ls/n;)Ls/q;

    move-result-object v4

    aput-object v4, v5, v6

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 111
    :cond_1a
    iget-object v0, p0, Ls/n;->b:[Ls/q;

    sget-object v2, Ls/w;->a:Ls/w;

    invoke-virtual {p0, v2}, Ls/n;->a(Ls/w;)Ls/q;

    move-result-object v2

    aput-object v2, v0, v1

    .line 112
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/cI;)V
    .registers 2
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Ls/n;->g:Lcom/google/android/maps/driveabout/app/cI;

    .line 150
    return-void
.end method

.method public a(Ls/p;)V
    .registers 7
    .parameter

    .prologue
    .line 263
    invoke-virtual {p0}, Ls/n;->j()V

    .line 264
    iget-object v0, p0, Ls/n;->b:[Ls/q;

    iget v1, p0, Ls/n;->c:I

    aget-object v2, v0, v1

    .line 266
    invoke-virtual {p1}, Ls/p;->a()Ls/q;

    move-result-object v3

    .line 268
    invoke-virtual {p1}, Ls/p;->b()I

    move-result v0

    .line 269
    new-instance v1, Lk/z;

    invoke-direct {v1, v2, v3}, Lk/z;-><init>(Ls/q;Ls/q;)V

    invoke-static {v1}, LA/f;->b(LA/j;)V

    .line 275
    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v0, :cond_27

    .line 276
    iget-object v4, p0, Ls/n;->b:[Ls/q;

    aget-object v4, v4, v1

    if-ne v4, v3, :cond_4c

    .line 277
    invoke-direct {p0, v1}, Ls/n;->a(I)V

    .line 278
    add-int/lit8 v0, v0, -0x1

    .line 283
    :cond_27
    iget v1, p0, Ls/n;->c:I

    if-le v0, v1, :cond_2e

    .line 284
    invoke-virtual {v2}, Ls/q;->p()V

    .line 286
    :cond_2e
    invoke-virtual {v2}, Ls/q;->d()V

    .line 288
    iput v0, p0, Ls/n;->c:I

    .line 289
    iget-object v0, p0, Ls/n;->b:[Ls/q;

    iget v1, p0, Ls/n;->c:I

    aput-object v3, v0, v1

    .line 291
    invoke-virtual {v3}, Ls/q;->a()V

    .line 292
    invoke-virtual {p1}, Ls/p;->c()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 293
    invoke-virtual {v3}, Ls/q;->q()V

    .line 295
    :cond_45
    invoke-virtual {v3}, Ls/q;->E()V

    .line 296
    invoke-virtual {v3}, Ls/q;->c()V

    .line 297
    return-void

    .line 275
    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a
.end method

.method protected a(Ls/q;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 170
    iget-object v2, p0, Ls/n;->b:[Ls/q;

    iget v3, p0, Ls/n;->c:I

    aget-object v2, v2, v3

    .line 171
    invoke-virtual {v2}, Ls/q;->C()Ls/w;

    move-result-object v2

    .line 172
    invoke-virtual {p1}, Ls/q;->C()Ls/w;

    move-result-object v3

    .line 174
    sget-object v4, Ls/w;->a:Ls/w;

    if-ne v2, v4, :cond_1b

    .line 175
    sget-object v2, Ls/w;->b:Ls/w;

    if-ne v3, v2, :cond_19

    .line 187
    :cond_18
    :goto_18
    return v0

    :cond_19
    move v0, v1

    .line 175
    goto :goto_18

    .line 176
    :cond_1b
    sget-object v4, Ls/w;->b:Ls/w;

    if-ne v2, v4, :cond_25

    .line 177
    sget-object v2, Ls/w;->c:Ls/w;

    if-eq v3, v2, :cond_18

    move v0, v1

    goto :goto_18

    .line 178
    :cond_25
    sget-object v4, Ls/w;->c:Ls/w;

    if-ne v2, v4, :cond_34

    .line 180
    sget-object v2, Ls/w;->d:Ls/w;

    if-eq v3, v2, :cond_31

    sget-object v2, Ls/w;->e:Ls/w;

    if-ne v3, v2, :cond_32

    :cond_31
    move v1, v0

    :cond_32
    move v0, v1

    goto :goto_18

    .line 182
    :cond_34
    sget-object v4, Ls/w;->d:Ls/w;

    if-ne v2, v4, :cond_3e

    .line 183
    sget-object v2, Ls/w;->e:Ls/w;

    if-eq v3, v2, :cond_18

    move v0, v1

    goto :goto_18

    .line 184
    :cond_3e
    sget-object v4, Ls/w;->e:Ls/w;

    if-ne v2, v4, :cond_18

    .line 185
    sget-object v2, Ls/w;->h:Ls/w;

    if-eq v3, v2, :cond_18

    move v0, v1

    goto :goto_18
.end method

.method public a(Ls/w;Z)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 238
    invoke-virtual {p0}, Ls/n;->j()V

    .line 239
    invoke-virtual {p0, p1}, Ls/n;->a(Ls/w;)Ls/q;

    move-result-object v3

    .line 240
    iget-object v0, p0, Ls/n;->b:[Ls/q;

    iget v4, p0, Ls/n;->c:I

    aget-object v0, v0, v4

    .line 241
    if-ne v3, v0, :cond_13

    move v0, v1

    .line 254
    :goto_12
    return v0

    .line 244
    :cond_13
    invoke-virtual {p0, v3}, Ls/n;->a(Ls/q;)Z

    move-result v4

    if-nez v4, :cond_4a

    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 245
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to transition from: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ls/q;->D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ls/q;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :cond_4a
    new-instance v4, Ls/p;

    if-eqz p2, :cond_63

    iget v0, p0, Ls/n;->c:I

    :goto_50
    const/4 v5, 0x0

    invoke-direct {v4, v3, v0, v2, v5}, Ls/p;-><init>(Ls/q;IZLs/o;)V

    .line 250
    invoke-virtual {p0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0, v4}, Ls/q;->a(Ls/p;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 251
    invoke-virtual {p0, v4}, Ls/n;->a(Ls/p;)V

    move v0, v1

    .line 252
    goto :goto_12

    .line 248
    :cond_63
    iget v0, p0, Ls/n;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    :cond_68
    move v0, v2

    .line 254
    goto :goto_12
.end method

.method b()Landroid/content/Context;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Ls/n;->e:Landroid/content/Context;

    return-object v0
.end method

.method public b(Ls/w;)Z
    .registers 3
    .parameter

    .prologue
    .line 201
    invoke-virtual {p0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->C()Ls/w;

    move-result-object v0

    if-ne v0, p1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method c()Lcom/google/android/maps/driveabout/app/cK;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Ls/n;->f:Lcom/google/android/maps/driveabout/app/cK;

    return-object v0
.end method

.method d()Lcom/google/android/maps/driveabout/app/cI;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Ls/n;->g:Lcom/google/android/maps/driveabout/app/cI;

    return-object v0
.end method

.method e()Lcom/google/android/maps/driveabout/app/aN;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Ls/n;->h:Lcom/google/android/maps/driveabout/app/aN;

    return-object v0
.end method

.method f()Lo/r;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Ls/n;->i:Lo/r;

    return-object v0
.end method

.method public g()Ls/q;
    .registers 3

    .prologue
    .line 205
    iget-object v0, p0, Ls/n;->b:[Ls/q;

    iget v1, p0, Ls/n;->c:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public h()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 214
    invoke-virtual {p0}, Ls/n;->j()V

    .line 215
    iget-object v0, p0, Ls/n;->b:[Ls/q;

    iget v1, p0, Ls/n;->c:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ls/q;->C()Ls/w;

    move-result-object v0

    sget-object v1, Ls/w;->a:Ls/w;

    if-eq v0, v1, :cond_2f

    iget-object v0, p0, Ls/n;->b:[Ls/q;

    iget v1, p0, Ls/n;->c:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ls/q;->C()Ls/w;

    move-result-object v0

    sget-object v1, Ls/w;->b:Ls/w;

    if-eq v0, v1, :cond_2f

    .line 217
    new-instance v0, Ls/p;

    sget-object v1, Ls/w;->d:Ls/w;

    invoke-virtual {p0, v1}, Ls/n;->a(Ls/w;)Ls/q;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Ls/p;-><init>(Ls/q;IZLs/o;)V

    invoke-virtual {p0, v0}, Ls/n;->a(Ls/p;)V

    .line 220
    :cond_2f
    return-void
.end method

.method public i()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 333
    invoke-virtual {p0}, Ls/n;->j()V

    .line 334
    iget v1, p0, Ls/n;->c:I

    if-lt v1, v0, :cond_28

    .line 335
    new-instance v1, Ls/p;

    iget-object v2, p0, Ls/n;->b:[Ls/q;

    iget v3, p0, Ls/n;->c:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    iget v3, p0, Ls/n;->c:I

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Ls/p;-><init>(Ls/q;IZLs/o;)V

    .line 337
    invoke-virtual {p0}, Ls/n;->g()Ls/q;

    move-result-object v2

    invoke-virtual {v2, v1}, Ls/q;->a(Ls/p;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 338
    invoke-virtual {p0, v1}, Ls/n;->a(Ls/p;)V

    .line 342
    :cond_27
    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public final j()V
    .registers 3

    .prologue
    .line 350
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Ls/n;->d:Ljava/lang/Thread;

    if-eq v0, v1, :cond_16

    .line 351
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operation must be called on main (UI) thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_16
    return-void
.end method
