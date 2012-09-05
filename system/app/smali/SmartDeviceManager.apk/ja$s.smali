.class public final Lja$s;
.super Ljf;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "s"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljf",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 579
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljf;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private b(Lfd;Lhc;)Ljava/lang/String;
    .registers 14
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    .line 585
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    .line 587
    sget-object v1, Lfg;->VALUE_STRING:Lfg;

    if-ne v0, v1, :cond_e

    .line 588
    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v0

    .line 604
    :goto_d
    return-object v0

    .line 591
    :cond_e
    sget-object v1, Lfg;->VALUE_EMBEDDED_OBJECT:Lfg;

    if-ne v0, v1, :cond_ed

    .line 592
    invoke-virtual {p1}, Lfd;->w()Ljava/lang/Object;

    move-result-object p0

    .line 593
    if-nez p0, :cond_1a

    .line 594
    const/4 v0, 0x0

    goto :goto_d

    .line 596
    :cond_1a
    instance-of v0, p0, [B

    if-eqz v0, :cond_e7

    .line 597
    invoke-static {}, Lew;->a()Lev;

    move-result-object v0

    check-cast p0, [B

    array-length v1, p0

    shr-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v1

    shr-int/lit8 v3, v1, 0x3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v2, v0, Lev;->e:I

    shr-int/lit8 v2, v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x3

    sub-int v5, v1, v5

    move v10, v4

    move v4, v2

    move v2, v10

    :goto_3b
    if-gt v2, v5, :cond_92

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v6, v7, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v2, v7

    iget-object v7, v0, Lev;->a:[C

    shr-int/lit8 v8, v2, 0x12

    and-int/lit8 v8, v8, 0x3f

    aget-char v7, v7, v8

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lev;->a:[C

    shr-int/lit8 v8, v2, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-char v7, v7, v8

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lev;->a:[C

    shr-int/lit8 v8, v2, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-char v7, v7, v8

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lev;->a:[C

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, v7, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v4, -0x1

    if-gtz v2, :cond_8f

    const/16 v2, 0x5c

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x6e

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, v0, Lev;->e:I

    shr-int/lit8 v2, v2, 0x2

    :cond_8f
    move v4, v2

    move v2, v6

    goto :goto_3b

    :cond_92
    sub-int/2addr v1, v2

    if-lez v1, :cond_d0

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x10

    if-ne v1, v9, :cond_a4

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    :cond_a4
    iget-object v4, v0, Lev;->a:[C

    shr-int/lit8 v5, v2, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lev;->a:[C

    shr-int/lit8 v5, v2, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lev;->c:Z

    if-eqz v4, :cond_d9

    if-ne v1, v9, :cond_d6

    iget-object v1, v0, Lev;->a:[C

    shr-int/lit8 v2, v2, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    :goto_c8
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-char v0, v0, Lev;->d:C

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_d0
    :goto_d0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    :cond_d6
    iget-char v1, v0, Lev;->d:C

    goto :goto_c8

    :cond_d9
    if-ne v1, v9, :cond_d0

    iget-object v0, v0, Lev;->a:[C

    shr-int/lit8 v1, v2, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d0

    .line 600
    :cond_e7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 603
    :cond_ed
    invoke-virtual {v0}, Lfg;->isScalarValue()Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 604
    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 606
    :cond_f9
    iget-object v0, p0, Lja$s;->m:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final bridge synthetic a(Lfd;Lhc;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 575
    invoke-direct {p0, p1, p2}, Lja$s;->b(Lfd;Lhc;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lfd;Lhc;Lht;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 575
    invoke-direct {p0, p1, p2}, Lja$s;->b(Lfd;Lhc;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
