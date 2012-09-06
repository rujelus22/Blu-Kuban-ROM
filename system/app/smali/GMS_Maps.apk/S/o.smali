.class public LS/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS/d;


# instance fields
.field private final a:LS/d;

.field private final b:I

.field private final c:I

.field private d:I

.field private e:I

.field private final f:Ljava/lang/String;


# direct methods
.method constructor <init>(LS/d;Ljava/lang/String;IILjava/util/Hashtable;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, LS/o;->a:LS/d;

    .line 160
    iput p3, p0, LS/o;->b:I

    .line 161
    iput p4, p0, LS/o;->c:I

    .line 162
    iput-object p6, p0, LS/o;->f:Ljava/lang/String;

    .line 163
    if-eqz p5, :cond_f

    if-nez p2, :cond_13

    .line 164
    :cond_f
    invoke-direct {p0}, LS/o;->e()V

    .line 175
    :goto_12
    return-void

    .line 166
    :cond_13
    monitor-enter p5

    .line 167
    :try_start_14
    invoke-virtual {p5, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 168
    invoke-virtual {p0, p5, p2}, LS/o;->b(Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 173
    :goto_1d
    monitor-exit p5

    goto :goto_12

    :catchall_1f
    move-exception v0

    monitor-exit p5
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_1f

    throw v0

    .line 170
    :cond_22
    :try_start_22
    invoke-direct {p0}, LS/o;->e()V

    .line 171
    invoke-virtual {p0, p5, p2}, LS/o;->a(Ljava/util/Hashtable;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_1f

    goto :goto_1d
.end method

.method private a(I)I
    .registers 2
    .parameter

    .prologue
    .line 135
    return p1
.end method

.method private b(I)I
    .registers 4
    .parameter

    .prologue
    .line 139
    iget v0, p0, LS/o;->d:I

    sub-int v0, p1, v0

    iget v1, p0, LS/o;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method private d()Ljava/lang/String;
    .registers 3

    .prologue
    .line 54
    invoke-static {}, Lcom/google/googlenav/common/Config;->f()Ljava/lang/String;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_48

    .line 56
    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {}, Lcom/google/googlenav/common/Config;->v()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 57
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5bb5\u6e05\u8511Ag$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LS/o;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_29
    return-object v0

    .line 58
    :cond_2a
    const-string v1, "ko"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5bb5\u6e05\u8511Ag$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LS/o;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    .line 63
    :cond_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ATbdqyg$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LS/o;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29
.end method

.method private e()V
    .registers 15

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, LS/o;->d()Ljava/lang/String;

    move-result-object v8

    .line 75
    iget-object v0, p0, LS/o;->a:LS/d;

    invoke-interface {v0, v8}, LS/d;->a(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v3, v0, 0x14

    .line 76
    iget-object v0, p0, LS/o;->a:LS/d;

    invoke-interface {v0}, LS/d;->a()I

    move-result v0

    add-int/lit8 v10, v0, 0x14

    .line 78
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->n()LS/h;

    move-result-object v0

    invoke-interface {v0, v3, v10}, LS/h;->a(II)LS/f;

    move-result-object v0

    .line 80
    invoke-interface {v0}, LS/f;->c()LS/e;

    move-result-object v9

    .line 83
    iget-object v1, p0, LS/o;->a:LS/d;

    invoke-interface {v9, v1}, LS/e;->a(LS/d;)V

    .line 85
    iget-object v1, p0, LS/o;->a:LS/d;

    invoke-interface {v1}, LS/d;->b()I

    move-result v1

    const v4, 0xffffff

    xor-int/2addr v1, v4

    invoke-interface {v9, v1}, LS/e;->a(I)V

    .line 86
    invoke-interface {v9, v2, v2, v3, v10}, LS/e;->b(IIII)V

    .line 87
    add-int/lit8 v1, v3, 0x1

    new-array v1, v1, [I

    move v4, v2

    move v5, v2

    move v6, v3

    .line 88
    invoke-interface/range {v0 .. v7}, LS/f;->a([IIIIIII)V

    .line 89
    aget v11, v1, v2

    .line 90
    iget-object v4, p0, LS/o;->a:LS/d;

    invoke-interface {v4}, LS/d;->b()I

    move-result v4

    invoke-interface {v9, v4}, LS/e;->a(I)V

    .line 91
    const/4 v4, 0x3

    .line 92
    const/16 v12, 0xa

    .line 93
    invoke-interface {v9, v8, v4, v12}, LS/e;->a(Ljava/lang/String;II)V

    .line 94
    const/16 v9, 0x7f

    move v5, v2

    move v8, v2

    .line 98
    :goto_5a
    if-ge v5, v10, :cond_7a

    move v4, v2

    move v6, v3

    .line 99
    invoke-interface/range {v0 .. v7}, LS/f;->a([IIIIIII)V

    move v6, v8

    move v4, v9

    move v8, v2

    .line 100
    :goto_64
    if-ge v8, v3, :cond_75

    .line 101
    aget v9, v1, v8

    if-eq v9, v11, :cond_85

    .line 102
    if-ge v5, v4, :cond_6d

    move v4, v5

    :cond_6d
    move v6, v4

    move v4, v5

    .line 100
    :goto_6f
    add-int/lit8 v8, v8, 0x1

    move v13, v4

    move v4, v6

    move v6, v13

    goto :goto_64

    .line 98
    :cond_75
    add-int/lit8 v5, v5, 0x1

    move v8, v6

    move v9, v4

    goto :goto_5a

    .line 109
    :cond_7a
    sub-int v0, v9, v12

    iput v0, p0, LS/o;->d:I

    .line 110
    sub-int v0, v8, v9

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LS/o;->e:I

    .line 111
    return-void

    :cond_85
    move v13, v6

    move v6, v4

    move v4, v13

    goto :goto_6f
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 199
    iget v0, p0, LS/o;->e:I

    iget v1, p0, LS/o;->c:I

    add-int/2addr v0, v1

    iget v1, p0, LS/o;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public a(C)I
    .registers 3
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, LS/o;->a:LS/d;

    invoke-interface {v0, p1}, LS/d;->a(C)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .registers 3
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, LS/o;->a:LS/d;

    invoke-interface {v0, p1}, LS/d;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;II)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, LS/o;->a:LS/d;

    invoke-interface {v0, p1, p2, p3}, LS/d;->a(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public a(LS/e;Ljava/lang/String;II)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, LS/o;->a:LS/d;

    invoke-direct {p0, p3}, LS/o;->a(I)I

    move-result v1

    invoke-direct {p0, p4}, LS/o;->b(I)I

    move-result v2

    invoke-interface {v0, p1, p2, v1, v2}, LS/d;->a(LS/e;Ljava/lang/String;II)V

    .line 205
    return-void
.end method

.method a(Ljava/util/Hashtable;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 117
    iget v0, p0, LS/o;->d:I

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    iget v1, p0, LS/o;->e:I

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 119
    invoke-virtual {p1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, LS/o;->a:LS/d;

    invoke-interface {v0}, LS/d;->b()I

    move-result v0

    return v0
.end method

.method b(Ljava/util/Hashtable;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 128
    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    iput v1, p0, LS/o;->d:I

    .line 129
    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    iput v0, p0, LS/o;->e:I

    .line 130
    return-void
.end method

.method public c()I
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, LS/o;->a:LS/d;

    invoke-interface {v0}, LS/d;->c()I

    move-result v0

    invoke-direct {p0, v0}, LS/o;->b(I)I

    move-result v0

    return v0
.end method
