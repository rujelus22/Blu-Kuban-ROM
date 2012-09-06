.class public final Ln/aL;
.super Ln/aM;
.source "SourceFile"


# instance fields
.field private b:Ln/aa;

.field private c:Ln/Q;

.field private d:Ln/Q;

.field private e:I

.field private f:I

.field private g:I

.field private volatile h:Ln/Q;

.field private volatile i:Ln/Q;

.field private volatile j:Ln/Q;

.field private volatile k:Ln/Q;

.field private volatile l:Ln/Q;

.field private volatile m:Ln/Q;


# direct methods
.method private constructor <init>(Ln/aa;)V
    .registers 6
    .parameter

    .prologue
    const/high16 v3, 0x4000

    .line 33
    invoke-direct {p0}, Ln/aM;-><init>()V

    .line 34
    iput-object p1, p0, Ln/aL;->b:Ln/aa;

    .line 35
    invoke-virtual {p1}, Ln/aa;->d()Ln/Q;

    move-result-object v1

    .line 36
    invoke-virtual {p1}, Ln/aa;->e()Ln/Q;

    move-result-object v2

    .line 37
    iget v0, v1, Ln/Q;->a:I

    if-gez v0, :cond_4c

    .line 38
    iget v0, v1, Ln/Q;->a:I

    neg-int v0, v0

    iput v0, p0, Ln/aL;->e:I

    .line 42
    :cond_18
    :goto_18
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Ln/aL;->c:Ln/Q;

    .line 43
    iget-object v0, p0, Ln/aL;->c:Ln/Q;

    invoke-virtual {v1, v0}, Ln/Q;->i(Ln/Q;)V

    .line 44
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Ln/aL;->d:Ln/Q;

    .line 45
    iget-object v0, p0, Ln/aL;->d:Ln/Q;

    invoke-virtual {v2, v0}, Ln/Q;->i(Ln/Q;)V

    .line 46
    iget-object v0, p0, Ln/aL;->c:Ln/Q;

    iget v0, v0, Ln/Q;->a:I

    iget-object v3, p0, Ln/aL;->d:Ln/Q;

    iget v3, v3, Ln/Q;->a:I

    if-le v0, v3, :cond_57

    const/4 v0, 0x1

    :goto_3b
    iput-boolean v0, p0, Ln/aL;->a:Z

    .line 47
    iget v0, v1, Ln/Q;->a:I

    iget v1, p0, Ln/aL;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Ln/aL;->f:I

    .line 48
    iget v0, v2, Ln/Q;->a:I

    iget v1, p0, Ln/aL;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Ln/aL;->g:I

    .line 49
    return-void

    .line 39
    :cond_4c
    iget v0, v2, Ln/Q;->a:I

    if-le v0, v3, :cond_18

    .line 40
    iget v0, v2, Ln/Q;->a:I

    sub-int v0, v3, v0

    iput v0, p0, Ln/aL;->e:I

    goto :goto_18

    .line 46
    :cond_57
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method public static a(Ln/aa;)Ln/aL;
    .registers 2
    .parameter

    .prologue
    .line 52
    new-instance v0, Ln/aL;

    invoke-direct {v0, p0}, Ln/aL;-><init>(Ln/aa;)V

    return-object v0
.end method


# virtual methods
.method public a(I)Ln/Q;
    .registers 5
    .parameter

    .prologue
    .line 158
    packed-switch p1, :pswitch_data_3c

    .line 171
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 160
    :pswitch_9
    iget-object v0, p0, Ln/aL;->h:Ln/Q;

    if-nez v0, :cond_1c

    .line 161
    new-instance v0, Ln/Q;

    iget-object v1, p0, Ln/aL;->d:Ln/Q;

    iget v1, v1, Ln/Q;->a:I

    iget-object v2, p0, Ln/aL;->c:Ln/Q;

    iget v2, v2, Ln/Q;->b:I

    invoke-direct {v0, v1, v2}, Ln/Q;-><init>(II)V

    iput-object v0, p0, Ln/aL;->h:Ln/Q;

    .line 163
    :cond_1c
    iget-object v0, p0, Ln/aL;->h:Ln/Q;

    .line 170
    :goto_1e
    return-object v0

    .line 164
    :pswitch_1f
    iget-object v0, p0, Ln/aL;->d:Ln/Q;

    goto :goto_1e

    .line 166
    :pswitch_22
    iget-object v0, p0, Ln/aL;->i:Ln/Q;

    if-nez v0, :cond_35

    .line 167
    new-instance v0, Ln/Q;

    iget-object v1, p0, Ln/aL;->c:Ln/Q;

    iget v1, v1, Ln/Q;->a:I

    iget-object v2, p0, Ln/aL;->d:Ln/Q;

    iget v2, v2, Ln/Q;->b:I

    invoke-direct {v0, v1, v2}, Ln/Q;-><init>(II)V

    iput-object v0, p0, Ln/aL;->i:Ln/Q;

    .line 169
    :cond_35
    iget-object v0, p0, Ln/aL;->i:Ln/Q;

    goto :goto_1e

    .line 170
    :pswitch_38
    iget-object v0, p0, Ln/aL;->c:Ln/Q;

    goto :goto_1e

    .line 158
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_1f
        :pswitch_22
        :pswitch_38
    .end packed-switch
.end method

.method public a()Ln/aL;
    .registers 1

    .prologue
    .line 98
    return-object p0
.end method

.method public a(I[Ln/Q;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x2

    const v2, -0x20000001

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 187
    iget-boolean v0, p0, Ln/aL;->a:Z

    if-eqz v0, :cond_96

    .line 188
    packed-switch p1, :pswitch_data_a8

    .line 230
    :goto_e
    return-void

    .line 190
    :pswitch_f
    invoke-virtual {p0, v3}, Ln/aL;->a(I)Ln/Q;

    move-result-object v0

    aput-object v0, p2, v3

    .line 191
    invoke-virtual {p0, v4}, Ln/aL;->a(I)Ln/Q;

    move-result-object v0

    aput-object v0, p2, v4

    goto :goto_e

    .line 194
    :pswitch_1c
    invoke-virtual {p0, v4}, Ln/aL;->a(I)Ln/Q;

    move-result-object v0

    aput-object v0, p2, v3

    .line 195
    iget-object v0, p0, Ln/aL;->j:Ln/Q;

    if-nez v0, :cond_31

    .line 196
    new-instance v0, Ln/Q;

    iget-object v1, p0, Ln/aL;->d:Ln/Q;

    iget v1, v1, Ln/Q;->b:I

    invoke-direct {v0, v2, v1}, Ln/Q;-><init>(II)V

    iput-object v0, p0, Ln/aL;->j:Ln/Q;

    .line 198
    :cond_31
    iget-object v0, p0, Ln/aL;->j:Ln/Q;

    aput-object v0, p2, v4

    goto :goto_e

    .line 201
    :pswitch_36
    iget-object v0, p0, Ln/aL;->k:Ln/Q;

    if-nez v0, :cond_47

    .line 202
    new-instance v0, Ln/Q;

    const/high16 v1, 0x2000

    iget-object v2, p0, Ln/aL;->d:Ln/Q;

    iget v2, v2, Ln/Q;->b:I

    invoke-direct {v0, v1, v2}, Ln/Q;-><init>(II)V

    iput-object v0, p0, Ln/aL;->k:Ln/Q;

    .line 204
    :cond_47
    iget-object v0, p0, Ln/aL;->k:Ln/Q;

    aput-object v0, p2, v3

    .line 205
    invoke-virtual {p0, v5}, Ln/aL;->a(I)Ln/Q;

    move-result-object v0

    aput-object v0, p2, v4

    goto :goto_e

    .line 208
    :pswitch_52
    invoke-virtual {p0, v5}, Ln/aL;->a(I)Ln/Q;

    move-result-object v0

    aput-object v0, p2, v3

    .line 209
    invoke-virtual {p0, v1}, Ln/aL;->a(I)Ln/Q;

    move-result-object v0

    aput-object v0, p2, v4

    goto :goto_e

    .line 212
    :pswitch_5f
    invoke-virtual {p0, v1}, Ln/aL;->a(I)Ln/Q;

    move-result-object v0

    aput-object v0, p2, v3

    .line 213
    iget-object v0, p0, Ln/aL;->l:Ln/Q;

    if-nez v0, :cond_76

    .line 214
    new-instance v0, Ln/Q;

    const/high16 v1, 0x2000

    iget-object v2, p0, Ln/aL;->c:Ln/Q;

    iget v2, v2, Ln/Q;->b:I

    invoke-direct {v0, v1, v2}, Ln/Q;-><init>(II)V

    iput-object v0, p0, Ln/aL;->l:Ln/Q;

    .line 216
    :cond_76
    iget-object v0, p0, Ln/aL;->l:Ln/Q;

    aput-object v0, p2, v4

    goto :goto_e

    .line 219
    :pswitch_7b
    iget-object v0, p0, Ln/aL;->m:Ln/Q;

    if-nez v0, :cond_8a

    .line 220
    new-instance v0, Ln/Q;

    iget-object v1, p0, Ln/aL;->c:Ln/Q;

    iget v1, v1, Ln/Q;->b:I

    invoke-direct {v0, v2, v1}, Ln/Q;-><init>(II)V

    iput-object v0, p0, Ln/aL;->m:Ln/Q;

    .line 222
    :cond_8a
    iget-object v0, p0, Ln/aL;->m:Ln/Q;

    aput-object v0, p2, v3

    .line 223
    invoke-virtual {p0, v3}, Ln/aL;->a(I)Ln/Q;

    move-result-object v0

    aput-object v0, p2, v4

    goto/16 :goto_e

    .line 227
    :cond_96
    invoke-virtual {p0, p1}, Ln/aL;->a(I)Ln/Q;

    move-result-object v0

    aput-object v0, p2, v3

    .line 228
    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ln/aL;->a(I)Ln/Q;

    move-result-object v0

    aput-object v0, p2, v4

    goto/16 :goto_e

    .line 188
    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_f
        :pswitch_1c
        :pswitch_36
        :pswitch_52
        :pswitch_5f
        :pswitch_7b
    .end packed-switch
.end method

.method public a(Ln/Q;)Z
    .registers 4
    .parameter

    .prologue
    .line 91
    iget v0, p1, Ln/Q;->a:I

    iget v1, p0, Ln/aL;->e:I

    add-int/2addr v0, v1

    const v1, 0x3fffffff

    and-int/2addr v0, v1

    .line 92
    iget v1, p0, Ln/aL;->f:I

    if-lt v0, v1, :cond_23

    iget v1, p0, Ln/aL;->g:I

    if-gt v0, v1, :cond_23

    iget v0, p1, Ln/Q;->b:I

    iget-object v1, p0, Ln/aL;->c:Ln/Q;

    iget v1, v1, Ln/Q;->b:I

    if-lt v0, v1, :cond_23

    iget v0, p1, Ln/Q;->b:I

    iget-object v1, p0, Ln/aL;->d:Ln/Q;

    iget v1, v1, Ln/Q;->b:I

    if-gt v0, v1, :cond_23

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public a(Ln/ab;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v7, 0x2000

    const/high16 v6, -0x2000

    const/high16 v5, 0x4000

    .line 103
    iget-boolean v0, p0, Ln/aL;->a:Z

    if-nez v0, :cond_13

    .line 104
    iget-object v0, p0, Ln/aL;->b:Ln/aa;

    invoke-virtual {v0, p1}, Ln/aa;->b(Ln/ab;)Z

    move-result v1

    .line 130
    :cond_12
    :goto_12
    return v1

    .line 106
    :cond_13
    invoke-virtual {p1}, Ln/ab;->a()Ln/aa;

    move-result-object v0

    .line 107
    iget-object v3, p0, Ln/aL;->c:Ln/Q;

    iget v3, v3, Ln/Q;->b:I

    iget-object v4, v0, Ln/aa;->a:Ln/Q;

    iget v4, v4, Ln/Q;->b:I

    if-gt v3, v4, :cond_2b

    iget-object v3, p0, Ln/aL;->d:Ln/Q;

    iget v3, v3, Ln/Q;->b:I

    iget-object v4, v0, Ln/aa;->b:Ln/Q;

    iget v4, v4, Ln/Q;->b:I

    if-ge v3, v4, :cond_2d

    :cond_2b
    move v1, v2

    .line 108
    goto :goto_12

    .line 110
    :cond_2d
    iget-object v3, v0, Ln/aa;->a:Ln/Q;

    iget v3, v3, Ln/Q;->a:I

    .line 111
    iget-object v0, v0, Ln/aa;->b:Ln/Q;

    iget v0, v0, Ln/Q;->a:I

    .line 114
    iget-object v4, p0, Ln/aL;->c:Ln/Q;

    iget v4, v4, Ln/Q;->a:I

    if-gt v4, v3, :cond_3d

    if-gt v7, v0, :cond_12

    :cond_3d
    if-gt v6, v3, :cond_45

    iget-object v4, p0, Ln/aL;->d:Ln/Q;

    iget v4, v4, Ln/Q;->a:I

    if-ge v4, v0, :cond_12

    .line 120
    :cond_45
    if-ge v3, v6, :cond_5a

    .line 121
    add-int/2addr v3, v5

    .line 125
    :cond_48
    :goto_48
    if-ge v0, v6, :cond_5e

    .line 126
    add-int/2addr v0, v5

    .line 130
    :cond_4b
    :goto_4b
    iget-object v4, p0, Ln/aL;->c:Ln/Q;

    iget v4, v4, Ln/Q;->a:I

    if-gt v4, v3, :cond_62

    iget-object v3, p0, Ln/aL;->d:Ln/Q;

    iget v3, v3, Ln/Q;->a:I

    if-lt v3, v0, :cond_62

    move v0, v1

    :goto_58
    move v1, v0

    goto :goto_12

    .line 122
    :cond_5a
    if-lt v3, v7, :cond_48

    .line 123
    sub-int/2addr v3, v5

    goto :goto_48

    .line 127
    :cond_5e
    if-lt v0, v7, :cond_4b

    .line 128
    sub-int/2addr v0, v5

    goto :goto_4b

    :cond_62
    move v0, v2

    .line 130
    goto :goto_58
.end method

.method public b()Ln/Q;
    .registers 3

    .prologue
    .line 61
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    .line 62
    iget-object v1, p0, Ln/aL;->b:Ln/aa;

    invoke-virtual {v1}, Ln/aa;->f()Ln/Q;

    move-result-object v1

    invoke-virtual {v1, v0}, Ln/Q;->i(Ln/Q;)V

    .line 63
    return-object v0
.end method

.method public b(Ln/ab;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 135
    iget-boolean v1, p0, Ln/aL;->a:Z

    if-nez v1, :cond_c

    .line 136
    iget-object v0, p0, Ln/aL;->b:Ln/aa;

    invoke-virtual {v0, p1}, Ln/aa;->a(Ln/ab;)Z

    move-result v0

    .line 147
    :cond_b
    :goto_b
    return v0

    .line 138
    :cond_c
    instance-of v1, p1, Ln/aa;

    if-eqz v1, :cond_4c

    .line 139
    check-cast p1, Ln/aa;

    .line 140
    iget-object v1, p0, Ln/aL;->c:Ln/Q;

    iget v1, v1, Ln/Q;->b:I

    iget-object v2, p1, Ln/aa;->b:Ln/Q;

    iget v2, v2, Ln/Q;->b:I

    if-gt v1, v2, :cond_b

    iget-object v1, p0, Ln/aL;->d:Ln/Q;

    iget v1, v1, Ln/Q;->b:I

    iget-object v2, p1, Ln/aa;->a:Ln/Q;

    iget v2, v2, Ln/Q;->b:I

    if-lt v1, v2, :cond_b

    .line 143
    iget-object v1, p0, Ln/aL;->c:Ln/Q;

    iget v1, v1, Ln/Q;->a:I

    iget-object v2, p1, Ln/aa;->b:Ln/Q;

    iget v2, v2, Ln/Q;->a:I

    if-gt v1, v2, :cond_38

    const/high16 v1, 0x2000

    iget-object v2, p1, Ln/aa;->a:Ln/Q;

    iget v2, v2, Ln/Q;->a:I

    if-gt v1, v2, :cond_4a

    :cond_38
    const/high16 v1, -0x2000

    iget-object v2, p1, Ln/aa;->b:Ln/Q;

    iget v2, v2, Ln/Q;->a:I

    if-gt v1, v2, :cond_b

    iget-object v1, p0, Ln/aL;->d:Ln/Q;

    iget v1, v1, Ln/Q;->a:I

    iget-object v2, p1, Ln/aa;->a:Ln/Q;

    iget v2, v2, Ln/Q;->a:I

    if-lt v1, v2, :cond_b

    :cond_4a
    const/4 v0, 0x1

    goto :goto_b

    .line 147
    :cond_4c
    invoke-super {p0, p1}, Ln/aM;->b(Ln/ab;)Z

    move-result v0

    goto :goto_b
.end method

.method public c()Ln/ab;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Ln/aL;->b:Ln/aa;

    return-object v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Ln/aL;->b:Ln/aa;

    invoke-virtual {v0}, Ln/aa;->g()I

    move-result v0

    return v0
.end method

.method public e()I
    .registers 3

    .prologue
    .line 71
    iget-object v0, p0, Ln/aL;->d:Ln/Q;

    iget v0, v0, Ln/Q;->b:I

    iget-object v1, p0, Ln/aL;->c:Ln/Q;

    iget v1, v1, Ln/Q;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public f()Ln/Q;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Ln/aL;->c:Ln/Q;

    return-object v0
.end method

.method public g()Ln/Q;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Ln/aL;->d:Ln/Q;

    return-object v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 182
    iget-boolean v0, p0, Ln/aL;->a:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x4

    goto :goto_5
.end method
