.class public LZ/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[LZ/b;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/16 v0, 0x8

    new-array v0, v0, [LZ/b;

    iput-object v0, p0, LZ/c;->a:[LZ/b;

    .line 62
    iput v1, p0, LZ/c;->b:I

    .line 63
    iput v1, p0, LZ/c;->c:I

    .line 73
    return-void
.end method

.method private a(LZ/b;LZ/b;I)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    invoke-virtual {p2}, LZ/b;->k()I

    move-result v0

    invoke-virtual {p1}, LZ/b;->k()I

    move-result v1

    sub-int v1, v0, v1

    .line 206
    invoke-virtual {p2}, LZ/b;->l()I

    move-result v0

    invoke-virtual {p1}, LZ/b;->l()I

    move-result v2

    sub-int v2, v0, v2

    .line 208
    iget v0, p0, LZ/c;->d:I

    if-nez v0, :cond_3c

    iget v0, p0, LZ/c;->e:I

    if-nez v0, :cond_3c

    const/4 v0, 0x1

    .line 209
    :goto_1d
    iget v3, p0, LZ/c;->d:I

    mul-int/lit16 v1, v1, 0x3e8

    div-int/2addr v1, p3

    add-int/2addr v1, v3

    iput v1, p0, LZ/c;->d:I

    .line 210
    iget v1, p0, LZ/c;->e:I

    mul-int/lit16 v2, v2, 0x3e8

    div-int/2addr v2, p3

    add-int/2addr v1, v2

    iput v1, p0, LZ/c;->e:I

    .line 211
    if-nez v0, :cond_3b

    .line 212
    iget v0, p0, LZ/c;->d:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, LZ/c;->d:I

    .line 213
    iget v0, p0, LZ/c;->e:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, LZ/c;->e:I

    .line 215
    :cond_3b
    return-void

    .line 208
    :cond_3c
    const/4 v0, 0x0

    goto :goto_1d
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 104
    move v0, v1

    :goto_2
    const/16 v2, 0x8

    if-ge v0, v2, :cond_e

    .line 105
    iget-object v2, p0, LZ/c;->a:[LZ/b;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 107
    :cond_e
    iput v1, p0, LZ/c;->c:I

    .line 108
    iput v1, p0, LZ/c;->b:I

    .line 109
    return-void
.end method

.method public a(LZ/b;)V
    .registers 7
    .parameter

    .prologue
    .line 80
    iget v0, p0, LZ/c;->b:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_14

    .line 81
    iget v0, p0, LZ/c;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LZ/c;->b:I

    .line 82
    iget v0, p0, LZ/c;->c:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x8

    iput v0, p0, LZ/c;->c:I

    .line 86
    :cond_14
    iget v0, p0, LZ/c;->b:I

    if-lez v0, :cond_3c

    .line 87
    iget v0, p0, LZ/c;->c:I

    iget v1, p0, LZ/c;->b:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x8

    .line 88
    invoke-virtual {p1}, LZ/b;->n()J

    move-result-wide v1

    .line 89
    iget-object v3, p0, LZ/c;->a:[LZ/b;

    aget-object v0, v3, v0

    invoke-virtual {v0}, LZ/b;->n()J

    move-result-wide v3

    .line 90
    cmp-long v0, v1, v3

    if-ltz v0, :cond_39

    sub-long v0, v1, v3

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_3c

    .line 91
    :cond_39
    invoke-virtual {p0}, LZ/c;->a()V

    .line 95
    :cond_3c
    iget v0, p0, LZ/c;->c:I

    iget v1, p0, LZ/c;->b:I

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x8

    .line 96
    iget-object v1, p0, LZ/c;->a:[LZ/b;

    aput-object p1, v1, v0

    .line 97
    iget v0, p0, LZ/c;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LZ/c;->b:I

    .line 98
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 116
    iget v0, p0, LZ/c;->d:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, LZ/c;->e:I

    return v0
.end method

.method public d()V
    .registers 14

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 134
    iput v2, p0, LZ/c;->d:I

    .line 135
    iput v2, p0, LZ/c;->e:I

    .line 142
    const-wide/16 v0, 0x0

    .line 143
    iget v4, p0, LZ/c;->b:I

    if-lez v4, :cond_1d

    .line 144
    iget v0, p0, LZ/c;->c:I

    iget v1, p0, LZ/c;->b:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x8

    .line 145
    iget-object v1, p0, LZ/c;->a:[LZ/b;

    aget-object v0, v1, v0

    invoke-virtual {v0}, LZ/b;->n()J

    move-result-wide v0

    :cond_1d
    move v6, v2

    move-object v4, v3

    .line 152
    :goto_1f
    iget v5, p0, LZ/c;->b:I

    if-ge v6, v5, :cond_51

    .line 153
    iget-object v5, p0, LZ/c;->a:[LZ/b;

    iget v7, p0, LZ/c;->c:I

    add-int/2addr v7, v6

    rem-int/lit8 v7, v7, 0x8

    aget-object v5, v5, v7

    .line 154
    invoke-virtual {v5}, LZ/b;->n()J

    move-result-wide v7

    .line 157
    sub-long v9, v0, v7

    const-wide/16 v11, 0xc8

    cmp-long v9, v9, v11

    if-lez v9, :cond_3c

    .line 152
    :cond_38
    :goto_38
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_1f

    .line 162
    :cond_3c
    if-nez v3, :cond_41

    move-object v3, v4

    move-object v4, v5

    .line 165
    goto :goto_38

    .line 168
    :cond_41
    invoke-virtual {v3}, LZ/b;->n()J

    move-result-wide v9

    sub-long/2addr v7, v9

    long-to-int v7, v7

    .line 171
    if-eqz v7, :cond_38

    .line 175
    invoke-direct {p0, v3, v5, v7}, LZ/c;->a(LZ/b;LZ/b;I)V

    .line 179
    add-int/lit8 v2, v2, 0x1

    move-object v3, v4

    move-object v4, v5

    goto :goto_38

    .line 184
    :cond_51
    if-nez v2, :cond_66

    if-eqz v4, :cond_66

    if-eqz v3, :cond_66

    .line 185
    invoke-virtual {v4}, LZ/b;->n()J

    move-result-wide v0

    invoke-virtual {v3}, LZ/b;->n()J

    move-result-wide v5

    sub-long/2addr v0, v5

    long-to-int v0, v0

    .line 187
    if-lez v0, :cond_66

    .line 188
    invoke-direct {p0, v3, v4, v0}, LZ/c;->a(LZ/b;LZ/b;I)V

    .line 193
    :cond_66
    iget v0, p0, LZ/c;->d:I

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x9

    iput v0, p0, LZ/c;->d:I

    .line 194
    iget v0, p0, LZ/c;->e:I

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x9

    iput v0, p0, LZ/c;->e:I

    .line 198
    return-void
.end method
