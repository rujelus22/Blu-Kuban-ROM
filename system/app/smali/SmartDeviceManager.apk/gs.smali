.class public final Lgs;
.super Lgh;
.source "a"


# static fields
.field protected static final g:[C


# instance fields
.field protected final h:Lgt;

.field protected final i:Ljava/io/Writer;

.field protected j:[C

.field protected k:I

.field protected l:I

.field protected m:I

.field protected n:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    invoke-static {}, Lng;->d()[C

    move-result-object v0

    sput-object v0, Lgs;->g:[C

    return-void
.end method

.method public constructor <init>(Lgt;ILfh;Ljava/io/Writer;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p2, p3}, Lgh;-><init>(ILfh;)V

    .line 47
    iput v0, p0, Lgs;->k:I

    .line 53
    iput v0, p0, Lgs;->l:I

    .line 77
    iput-object p1, p0, Lgs;->h:Lgt;

    .line 78
    iput-object p4, p0, Lgs;->i:Ljava/io/Writer;

    .line 79
    invoke-virtual {p1}, Lgt;->e()[C

    move-result-object v0

    iput-object v0, p0, Lgs;->j:[C

    .line 80
    iget-object v0, p0, Lgs;->j:[C

    array-length v0, v0

    iput v0, p0, Lgs;->m:I

    .line 81
    return-void
.end method

.method private static a(I[CI)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x5c

    const/16 v3, 0x30

    .line 1043
    if-gez p0, :cond_2e

    .line 1044
    add-int/lit8 v0, p0, 0x1

    neg-int v0, v0

    .line 1045
    aput-char v1, p1, p2

    .line 1046
    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x75

    aput-char v2, p1, v1

    .line 1048
    add-int/lit8 v1, v1, 0x1

    aput-char v3, p1, v1

    .line 1049
    add-int/lit8 v1, v1, 0x1

    aput-char v3, p1, v1

    .line 1050
    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lgs;->g:[C

    shr-int/lit8 v3, v0, 0x4

    aget-char v2, v2, v3

    aput-char v2, p1, v1

    .line 1051
    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lgs;->g:[C

    and-int/lit8 v0, v0, 0xf

    aget-char v0, v2, v0

    aput-char v0, p1, v1

    .line 1056
    :goto_2d
    return-void

    .line 1053
    :cond_2e
    aput-char v1, p1, p2

    .line 1054
    add-int/lit8 v0, p2, 0x1

    int-to-char v1, p0

    aput-char v1, p1, v0

    goto :goto_2d
.end method

.method private b(I)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x30

    const/4 v6, 0x6

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1020
    iget-object v0, p0, Lgs;->n:[C

    .line 1021
    if-nez v0, :cond_15

    .line 1022
    new-array v0, v6, [C

    .line 1023
    const/16 v1, 0x5c

    aput-char v1, v0, v5

    .line 1024
    aput-char v4, v0, v2

    .line 1025
    const/4 v1, 0x3

    aput-char v4, v0, v1

    .line 1028
    :cond_15
    if-gez p1, :cond_36

    .line 1029
    add-int/lit8 v1, p1, 0x1

    neg-int v1, v1

    .line 1030
    const/16 v2, 0x75

    aput-char v2, v0, v3

    .line 1032
    const/4 v2, 0x4

    sget-object v3, Lgs;->g:[C

    shr-int/lit8 v4, v1, 0x4

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 1033
    const/4 v2, 0x5

    sget-object v3, Lgs;->g:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v3, v1

    aput-char v1, v0, v2

    .line 1034
    iget-object v1, p0, Lgs;->i:Ljava/io/Writer;

    invoke-virtual {v1, v0, v5, v6}, Ljava/io/Writer;->write([CII)V

    .line 1039
    :goto_35
    return-void

    .line 1036
    :cond_36
    int-to-char v1, p1

    aput-char v1, v0, v3

    .line 1037
    iget-object v1, p0, Lgs;->i:Ljava/io/Writer;

    invoke-virtual {v1, v0, v5, v2}, Ljava/io/Writer;->write([CII)V

    goto :goto_35
.end method

.method private final b(Ljava/lang/Object;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 562
    iget v0, p0, Lgs;->l:I

    iget v1, p0, Lgs;->m:I

    if-lt v0, v1, :cond_b

    .line 563
    invoke-direct {p0}, Lgs;->n()V

    .line 565
    :cond_b
    iget-object v0, p0, Lgs;->j:[C

    iget v1, p0, Lgs;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgs;->l:I

    aput-char v3, v0, v1

    .line 566
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgs;->c(Ljava/lang/String;)V

    .line 567
    iget v0, p0, Lgs;->l:I

    iget v1, p0, Lgs;->m:I

    if-lt v0, v1, :cond_25

    .line 568
    invoke-direct {p0}, Lgs;->n()V

    .line 570
    :cond_25
    iget-object v0, p0, Lgs;->j:[C

    iget v1, p0, Lgs;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgs;->l:I

    aput-char v3, v0, v1

    .line 571
    return-void
.end method

.method private g(Ljava/lang/String;)V
    .registers 15
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 756
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 757
    iget v1, p0, Lgs;->m:I

    if-le v0, v1, :cond_68

    .line 758
    invoke-direct {p0}, Lgs;->n()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v10

    :cond_13
    iget v2, p0, Lgs;->m:I

    add-int v3, v1, v2

    if-le v3, v0, :cond_1b

    sub-int v2, v0, v1

    :cond_1b
    add-int v3, v1, v2

    iget-object v4, p0, Lgs;->j:[C

    invoke-virtual {p1, v1, v3, v4, v10}, Ljava/lang/String;->getChars(II[CI)V

    invoke-static {}, Lng;->c()[I

    move-result-object v3

    array-length v4, v3

    move v5, v10

    :goto_28
    if-ge v5, v2, :cond_64

    move v6, v5

    :cond_2b
    iget-object v7, p0, Lgs;->j:[C

    aget-char v7, v7, v6

    if-ge v7, v4, :cond_35

    aget v7, v3, v7

    if-nez v7, :cond_39

    :cond_35
    add-int/lit8 v6, v6, 0x1

    if-lt v6, v2, :cond_2b

    :cond_39
    sub-int v7, v6, v5

    if-lez v7, :cond_46

    iget-object v8, p0, Lgs;->i:Ljava/io/Writer;

    iget-object v9, p0, Lgs;->j:[C

    invoke-virtual {v8, v9, v5, v7}, Ljava/io/Writer;->write([CII)V

    if-ge v6, v2, :cond_64

    :cond_46
    iget-object v5, p0, Lgs;->j:[C

    aget-char v5, v5, v6

    aget v5, v3, v5

    add-int/lit8 v6, v6, 0x1

    if-gez v5, :cond_5a

    move v7, v12

    :goto_51
    iget v8, p0, Lgs;->l:I

    if-le v7, v8, :cond_5c

    invoke-direct {p0, v5}, Lgs;->b(I)V

    move v5, v6

    goto :goto_28

    :cond_5a
    move v7, v11

    goto :goto_51

    :cond_5c
    sub-int/2addr v6, v7

    iget-object v7, p0, Lgs;->j:[C

    invoke-static {v5, v7, v6}, Lgs;->a(I[CI)V

    move v5, v6

    goto :goto_28

    :cond_64
    add-int/2addr v1, v2

    if-lt v1, v0, :cond_13

    .line 815
    :cond_67
    return-void

    .line 764
    :cond_68
    iget v1, p0, Lgs;->l:I

    add-int/2addr v1, v0

    iget v2, p0, Lgs;->m:I

    if-le v1, v2, :cond_72

    .line 765
    invoke-direct {p0}, Lgs;->n()V

    .line 767
    :cond_72
    iget-object v1, p0, Lgs;->j:[C

    iget v2, p0, Lgs;->l:I

    invoke-virtual {p1, v10, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 770
    iget v1, p0, Lgs;->l:I

    add-int/2addr v0, v1

    .line 771
    invoke-static {}, Lng;->c()[I

    move-result-object v1

    .line 772
    array-length v2, v1

    .line 775
    :goto_81
    iget v3, p0, Lgs;->l:I

    if-ge v3, v0, :cond_67

    .line 779
    :goto_85
    iget-object v3, p0, Lgs;->j:[C

    iget v4, p0, Lgs;->l:I

    aget-char v3, v3, v4

    .line 780
    if-ge v3, v2, :cond_91

    aget v3, v1, v3

    if-nez v3, :cond_9a

    .line 781
    :cond_91
    iget v3, p0, Lgs;->l:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lgs;->l:I

    if-ge v3, v0, :cond_67

    goto :goto_85

    .line 792
    :cond_9a
    iget v3, p0, Lgs;->l:I

    iget v4, p0, Lgs;->k:I

    sub-int/2addr v3, v4

    .line 793
    if-lez v3, :cond_aa

    .line 794
    iget-object v4, p0, Lgs;->i:Ljava/io/Writer;

    iget-object v5, p0, Lgs;->j:[C

    iget v6, p0, Lgs;->k:I

    invoke-virtual {v4, v5, v6, v3}, Ljava/io/Writer;->write([CII)V

    .line 800
    :cond_aa
    iget-object v3, p0, Lgs;->j:[C

    iget v4, p0, Lgs;->l:I

    aget-char v3, v3, v4

    aget v3, v1, v3

    .line 801
    iget v4, p0, Lgs;->l:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lgs;->l:I

    .line 802
    if-gez v3, :cond_c7

    move v4, v12

    .line 804
    :goto_bb
    iget v5, p0, Lgs;->l:I

    if-le v4, v5, :cond_c9

    .line 805
    iget v4, p0, Lgs;->l:I

    iput v4, p0, Lgs;->k:I

    .line 806
    invoke-direct {p0, v3}, Lgs;->b(I)V

    goto :goto_81

    :cond_c7
    move v4, v11

    .line 802
    goto :goto_bb

    .line 809
    :cond_c9
    iget v5, p0, Lgs;->l:I

    sub-int v4, v5, v4

    .line 810
    iput v4, p0, Lgs;->k:I

    .line 811
    iget-object v5, p0, Lgs;->j:[C

    invoke-static {v3, v5, v4}, Lgs;->a(I[CI)V

    goto :goto_81
.end method

.method private final m()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x6c

    .line 1001
    iget v0, p0, Lgs;->l:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lgs;->m:I

    if-lt v0, v1, :cond_d

    .line 1002
    invoke-direct {p0}, Lgs;->n()V

    .line 1004
    :cond_d
    iget v0, p0, Lgs;->l:I

    .line 1005
    iget-object v1, p0, Lgs;->j:[C

    .line 1006
    const/16 v2, 0x6e

    aput-char v2, v1, v0

    .line 1007
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x75

    aput-char v2, v1, v0

    .line 1008
    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    .line 1009
    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    .line 1010
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgs;->l:I

    .line 1011
    return-void
.end method

.method private n()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1060
    iget v0, p0, Lgs;->l:I

    iget v1, p0, Lgs;->k:I

    sub-int/2addr v0, v1

    .line 1061
    if-lez v0, :cond_15

    .line 1062
    iget v1, p0, Lgs;->k:I

    .line 1063
    const/4 v2, 0x0

    iput v2, p0, Lgs;->k:I

    iput v2, p0, Lgs;->l:I

    .line 1064
    iget-object v2, p0, Lgs;->i:Ljava/io/Writer;

    iget-object v3, p0, Lgs;->j:[C

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/Writer;->write([CII)V

    .line 1066
    :cond_15
    return-void
.end method


# virtual methods
.method public final a(C)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 372
    iget v0, p0, Lgs;->l:I

    iget v1, p0, Lgs;->m:I

    if-lt v0, v1, :cond_9

    .line 373
    invoke-direct {p0}, Lgs;->n()V

    .line 375
    :cond_9
    iget-object v0, p0, Lgs;->j:[C

    iget v1, p0, Lgs;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgs;->l:I

    aput-char p1, v0, v1

    .line 376
    return-void
.end method

.method public final a(D)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 505
    iget-boolean v0, p0, Lgs;->d:Z

    if-nez v0, :cond_18

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_10
    sget-object v0, Lez$a;->QUOTE_NON_NUMERIC_NUMBERS:Lez$a;

    invoke-virtual {p0, v0}, Lgs;->a(Lez$a;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 509
    :cond_18
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgs;->b(Ljava/lang/String;)V

    .line 515
    :goto_1f
    return-void

    .line 513
    :cond_20
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lgs;->e(Ljava/lang/String;)V

    .line 514
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgs;->c(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public final a(F)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 521
    iget-boolean v0, p0, Lgs;->d:Z

    if-nez v0, :cond_18

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_10
    sget-object v0, Lez$a;->QUOTE_NON_NUMERIC_NUMBERS:Lez$a;

    invoke-virtual {p0, v0}, Lgs;->a(Lez$a;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 525
    :cond_18
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgs;->b(Ljava/lang/String;)V

    .line 531
    :goto_1f
    return-void

    .line 529
    :cond_20
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lgs;->e(Ljava/lang/String;)V

    .line 530
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgs;->c(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public final a(I)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 438
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lgs;->e(Ljava/lang/String;)V

    .line 440
    iget v0, p0, Lgs;->l:I

    add-int/lit8 v0, v0, 0xb

    iget v1, p0, Lgs;->m:I

    if-lt v0, v1, :cond_12

    .line 441
    invoke-direct {p0}, Lgs;->n()V

    .line 443
    :cond_12
    iget-boolean v0, p0, Lgs;->d:Z

    if-eqz v0, :cond_40

    .line 444
    iget v0, p0, Lgs;->l:I

    add-int/lit8 v0, v0, 0xd

    iget v1, p0, Lgs;->m:I

    if-lt v0, v1, :cond_21

    invoke-direct {p0}, Lgs;->n()V

    :cond_21
    iget-object v0, p0, Lgs;->j:[C

    iget v1, p0, Lgs;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgs;->l:I

    aput-char v3, v0, v1

    iget-object v0, p0, Lgs;->j:[C

    iget v1, p0, Lgs;->l:I

    invoke-static {p1, v0, v1}, Lgv;->a(I[CI)I

    move-result v0

    iput v0, p0, Lgs;->l:I

    iget-object v0, p0, Lgs;->j:[C

    iget v1, p0, Lgs;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgs;->l:I

    aput-char v3, v0, v1

    .line 448
    :goto_3f
    return-void

    .line 447
    :cond_40
    iget-object v0, p0, Lgs;->j:[C

    iget v1, p0, Lgs;->l:I

    invoke-static {p1, v0, v1}, Lgv;->a(I[CI)I

    move-result v0

    iput v0, p0, Lgs;->l:I

    goto :goto_3f
.end method

.method public final a(J)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 463
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lgs;->e(Ljava/lang/String;)V

    .line 464
    iget-boolean v0, p0, Lgs;->d:Z

    if-eqz v0, :cond_35

    .line 465
    iget v0, p0, Lgs;->l:I

    add-int/lit8 v0, v0, 0x17

    iget v1, p0, Lgs;->m:I

    if-lt v0, v1, :cond_16

    invoke-direct {p0}, Lgs;->n()V

    :cond_16
    iget-object v0, p0, Lgs;->j:[C

    iget v1, p0, Lgs;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgs;->l:I

    aput-char v3, v0, v1

    iget-object v0, p0, Lgs;->j:[C

    iget v1, p0, Lgs;->l:I

    invoke-static {p1, p2, v0, v1}, Lgv;->a(J[CI)I

    move-result v0

    iput v0, p0, Lgs;->l:I

    iget-object v0, p0, Lgs;->j:[C

    iget v1, p0, Lgs;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgs;->l:I

    aput-char v3, v0, v1

    .line 473
    :goto_34
    return-void

    .line 468
    :cond_35
    iget v0, p0, Lgs;->l:I

    add-int/lit8 v0, v0, 0x15

    iget v1, p0, Lgs;->m:I

    if-lt v0, v1, :cond_40

    .line 470
    invoke-direct {p0}, Lgs;->n()V

    .line 472
    :cond_40
    iget-object v0, p0, Lgs;->j:[C

    iget v1, p0, Lgs;->l:I

    invoke-static {p1, p2, v0, v1}, Lgv;->a(J[CI)I

    move-result v0

    iput v0, p0, Lgs;->l:I

    goto :goto_34
.end method

.method public final a(Lev;[BI)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 414
    const-string v0, "write binary value"

    invoke-virtual {p0, v0}, Lgs;->e(Ljava/lang/String;)V

    .line 416
    iget v0, p0, Lgs;->l:I

    iget v1, p0, Lgs;->m:I

    if-lt v0, v1, :cond_e

    .line 417
    invoke-direct {p0}, Lgs;->n()V

    .line 419
    :cond_e
    iget-object v0, p0, Lgs;->j:[C

    iget v1, p0, Lgs;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgs;->l:I

    const/16 v2, 0x22

    aput-char v2, v0, v1

    .line 420
    const/4 v0, 0x0

    add-int/lit8 v1, p3, 0x0

    const/4 v2, 0x3

    sub-int v2, v1, v2

    iget v3, p0, Lgs;->m:I

    const/4 v4, 0x6

    sub-int/2addr v3, v4

    iget v4, p1, Lev;->e:I

    shr-int/lit8 v4, v4, 0x2

    move v11, v4

    move v4, v0

    move v0, v11

    :goto_2b
    if-gt v4, v2, :cond_a0

    iget v5, p0, Lgs;->l:I

    if-le v5, v3, :cond_34

    invoke-direct {p0}, Lgs;->n()V

    :cond_34
    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p2, v4

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    iget-object v6, p0, Lgs;->j:[C

    iget v7, p0, Lgs;->l:I

    add-int/lit8 v8, v7, 0x1

    iget-object v9, p1, Lev;->a:[C

    shr-int/lit8 v10, v4, 0x12

    and-int/lit8 v10, v10, 0x3f

    aget-char v9, v9, v10

    aput-char v9, v6, v7

    add-int/lit8 v7, v8, 0x1

    iget-object v9, p1, Lev;->a:[C

    shr-int/lit8 v10, v4, 0xc

    and-int/lit8 v10, v10, 0x3f

    aget-char v9, v9, v10

    aput-char v9, v6, v8

    add-int/lit8 v8, v7, 0x1

    iget-object v9, p1, Lev;->a:[C

    shr-int/lit8 v10, v4, 0x6

    and-int/lit8 v10, v10, 0x3f

    aget-char v9, v9, v10

    aput-char v9, v6, v7

    add-int/lit8 v7, v8, 0x1

    iget-object v9, p1, Lev;->a:[C

    and-int/lit8 v4, v4, 0x3f

    aget-char v4, v9, v4

    aput-char v4, v6, v8

    iput v7, p0, Lgs;->l:I

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_9e

    iget-object v0, p0, Lgs;->j:[C

    iget v4, p0, Lgs;->l:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lgs;->l:I

    const/16 v6, 0x5c

    aput-char v6, v0, v4

    iget-object v0, p0, Lgs;->j:[C

    iget v4, p0, Lgs;->l:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lgs;->l:I

    const/16 v6, 0x6e

    aput-char v6, v0, v4

    iget v0, p1, Lev;->e:I

    shr-int/lit8 v0, v0, 0x2

    :cond_9e
    move v4, v5

    goto :goto_2b

    :cond_a0
    sub-int v0, v1, v4

    if-lez v0, :cond_f2

    iget v1, p0, Lgs;->l:I

    if-le v1, v3, :cond_ab

    invoke-direct {p0}, Lgs;->n()V

    :cond_ab
    add-int/lit8 v1, v4, 0x1

    aget-byte v2, p2, v4

    shl-int/lit8 v2, v2, 0x10

    const/4 v3, 0x2

    if-ne v0, v3, :cond_11d

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    :goto_bb
    iget-object v2, p0, Lgs;->j:[C

    iget v3, p0, Lgs;->l:I

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p1, Lev;->a:[C

    shr-int/lit8 v6, v1, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    iget-object v5, p1, Lev;->a:[C

    shr-int/lit8 v6, v1, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v2, v4

    iget-boolean v4, p1, Lev;->c:Z

    if-eqz v4, :cond_10b

    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x2

    if-ne v0, v5, :cond_108

    iget-object v0, p1, Lev;->a:[C

    shr-int/lit8 v1, v1, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    :goto_e8
    aput-char v0, v2, v3

    add-int/lit8 v0, v4, 0x1

    iget-char v1, p1, Lev;->d:C

    aput-char v1, v2, v4

    :goto_f0
    iput v0, p0, Lgs;->l:I

    .line 422
    :cond_f2
    iget v0, p0, Lgs;->l:I

    iget v1, p0, Lgs;->m:I

    if-lt v0, v1, :cond_fb

    .line 423
    invoke-direct {p0}, Lgs;->n()V

    .line 425
    :cond_fb
    iget-object v0, p0, Lgs;->j:[C

    iget v1, p0, Lgs;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgs;->l:I

    const/16 v2, 0x22

    aput-char v2, v0, v1

    .line 426
    return-void

    .line 420
    :cond_108
    iget-char v0, p1, Lev;->d:C

    goto :goto_e8

    :cond_10b
    const/4 v4, 0x2

    if-ne v0, v4, :cond_11b

    add-int/lit8 v0, v3, 0x1

    iget-object v4, p1, Lev;->a:[C

    shr-int/lit8 v1, v1, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-char v1, v4, v1

    aput-char v1, v2, v3

    goto :goto_f0

    :cond_11b
    move v0, v3

    goto :goto_f0

    :cond_11d
    move v1, v2

    goto :goto_bb
.end method

.method protected final a(Ljava/lang/String;Z)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 133
    iget-object v0, p0, Lgs;->a:Lfi;

    if-eqz v0, :cond_49

    .line 134
    if-eqz p2, :cond_3f

    iget-object v0, p0, Lgs;->a:Lfi;

    invoke-interface {v0, p0}, Lfi;->c(Lez;)V

    :goto_d
    sget-object v0, Lez$a;->QUOTE_FIELD_NAMES:Lez$a;

    invoke-virtual {p0, v0}, Lgs;->a(Lez$a;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget v0, p0, Lgs;->l:I

    iget v1, p0, Lgs;->m:I

    if-lt v0, v1, :cond_1e

    invoke-direct {p0}, Lgs;->n()V

    :cond_1e
    iget-object v0, p0, Lgs;->j:[C

    iget v1, p0, Lgs;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgs;->l:I

    aput-char v3, v0, v1

    invoke-direct {p0, p1}, Lgs;->g(Ljava/lang/String;)V

    iget v0, p0, Lgs;->l:I

    iget v1, p0, Lgs;->m:I

    if-lt v0, v1, :cond_34

    invoke-direct {p0}, Lgs;->n()V

    :cond_34
    iget-object v0, p0, Lgs;->j:[C

    iget v1, p0, Lgs;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgs;->l:I

    aput-char v3, v0, v1

    .line 162
    :goto_3e
    return-void

    .line 134
    :cond_3f
    iget-object v0, p0, Lgs;->a:Lfi;

    invoke-interface {v0, p0}, Lfi;->h(Lez;)V

    goto :goto_d

    :cond_45
    invoke-direct {p0, p1}, Lgs;->g(Ljava/lang/String;)V

    goto :goto_3e

    .line 138
    :cond_49
    iget v0, p0, Lgs;->l:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lgs;->m:I

    if-lt v0, v1, :cond_54

    .line 139
    invoke-direct {p0}, Lgs;->n()V

    .line 141
    :cond_54
    if-eqz p2, :cond_62

    .line 142
    iget-object v0, p0, Lgs;->j:[C

    iget v1, p0, Lgs;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgs;->l:I

    const/16 v2, 0x2c

    aput-char v2, v0, v1

    .line 148
    :cond_62
    sget-object v0, Lez$a;->QUOTE_FIELD_NAMES:Lez$a;

    invoke-virtual {p0, v0}, Lgs;->a(Lez$a;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 149
    invoke-direct {p0, p1}, Lgs;->g(Ljava/lang/String;)V

    goto :goto_3e

    .line 154
    :cond_6e
    iget-object v0, p0, Lgs;->j:[C

    iget v1, p0, Lgs;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgs;->l:I

    aput-char v3, v0, v1

    .line 156
    invoke-direct {p0, p1}, Lgs;->g(Ljava/lang/String;)V

    .line 158
    iget v0, p0, Lgs;->l:I

    iget v1, p0, Lgs;->m:I

    if-lt v0, v1, :cond_84

    .line 159
    invoke-direct {p0}, Lgs;->n()V

    .line 161
    :cond_84
    iget-object v0, p0, Lgs;->j:[C

    iget v1, p0, Lgs;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgs;->l:I

    aput-char v3, v0, v1

    goto :goto_3e
.end method

.method public final a(Ljava/math/BigDecimal;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 538
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lgs;->e(Ljava/lang/String;)V

    .line 539
    if-nez p1, :cond_b

    .line 540
    invoke-direct {p0}, Lgs;->m()V

    .line 546
    :goto_a
    return-void

    .line 541
    :cond_b
    iget-boolean v0, p0, Lgs;->d:Z

    if-eqz v0, :cond_13

    .line 542
    invoke-direct {p0, p1}, Lgs;->b(Ljava/lang/Object;)V

    goto :goto_a

    .line 544
    :cond_13
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgs;->c(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public final a(Ljava/math/BigInteger;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 490
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lgs;->e(Ljava/lang/String;)V

    .line 491
    if-nez p1, :cond_b

    .line 492
    invoke-direct {p0}, Lgs;->m()V

    .line 498
    :goto_a
    return-void

    .line 493
    :cond_b
    iget-boolean v0, p0, Lgs;->d:Z

    if-eqz v0, :cond_13

    .line 494
    invoke-direct {p0, p1}, Lgs;->b(Ljava/lang/Object;)V

    goto :goto_a

    .line 496
    :cond_13
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgs;->c(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public final a(Z)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    const/16 v3, 0x65

    .line 577
    const-string v0, "write boolean value"

    invoke-virtual {p0, v0}, Lgs;->e(Ljava/lang/String;)V

    .line 578
    iget v0, p0, Lgs;->l:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lgs;->m:I

    if-lt v0, v1, :cond_12

    .line 579
    invoke-direct {p0}, Lgs;->n()V

    .line 581
    :cond_12
    iget v0, p0, Lgs;->l:I

    .line 582
    iget-object v1, p0, Lgs;->j:[C

    .line 583
    if-eqz p1, :cond_31

    .line 584
    const/16 v2, 0x74

    aput-char v2, v1, v0

    .line 585
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x72

    aput-char v2, v1, v0

    .line 586
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x75

    aput-char v2, v1, v0

    .line 587
    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    .line 595
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgs;->l:I

    .line 596
    return-void

    .line 589
    :cond_31
    const/16 v2, 0x66

    aput-char v2, v1, v0

    .line 590
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x61

    aput-char v2, v1, v0

    .line 591
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x6c

    aput-char v2, v1, v0

    .line 592
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x73

    aput-char v2, v1, v0

    .line 593
    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    goto :goto_2c
.end method

.method public final a([CI)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 354
    const/16 v0, 0x20

    if-ge p2, v0, :cond_1c

    .line 355
    iget v0, p0, Lgs;->m:I

    iget v1, p0, Lgs;->l:I

    sub-int/2addr v0, v1

    .line 356
    if-le p2, v0, :cond_f

    .line 357
    invoke-direct {p0}, Lgs;->n()V

    .line 359
    :cond_f
    iget-object v0, p0, Lgs;->j:[C

    iget v1, p0, Lgs;->l:I

    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    iget v0, p0, Lgs;->l:I

    add-int/2addr v0, p2

    iput v0, p0, Lgs;->l:I

    .line 366
    :goto_1b
    return-void

    .line 364
    :cond_1c
    invoke-direct {p0}, Lgs;->n()V

    .line 365
    iget-object v0, p0, Lgs;->i:Ljava/io/Writer;

    invoke-virtual {v0, p1, v2, p2}, Ljava/io/Writer;->write([CII)V

    goto :goto_1b
.end method

.method public final a([CII)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    const/16 v8, 0x22

    .line 289
    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lgs;->e(Ljava/lang/String;)V

    .line 290
    iget v0, p0, Lgs;->l:I

    iget v1, p0, Lgs;->m:I

    if-lt v0, v1, :cond_10

    .line 291
    invoke-direct {p0}, Lgs;->n()V

    .line 293
    :cond_10
    iget-object v0, p0, Lgs;->j:[C

    iget v1, p0, Lgs;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgs;->l:I

    aput-char v8, v0, v1

    .line 294
    add-int v0, p3, p2

    invoke-static {}, Lng;->c()[I

    move-result-object v1

    array-length v2, v1

    move v3, p2

    :goto_22
    if-ge v3, v0, :cond_7d

    move v4, v3

    :cond_25
    aget-char v5, p1, v4

    if-ge v5, v2, :cond_2d

    aget v5, v1, v5

    if-nez v5, :cond_31

    :cond_2d
    add-int/lit8 v4, v4, 0x1

    if-lt v4, v0, :cond_25

    :cond_31
    sub-int v5, v4, v3

    const/16 v6, 0x20

    if-ge v5, v6, :cond_72

    iget v6, p0, Lgs;->l:I

    add-int/2addr v6, v5

    iget v7, p0, Lgs;->m:I

    if-le v6, v7, :cond_41

    invoke-direct {p0}, Lgs;->n()V

    :cond_41
    if-lez v5, :cond_4f

    iget-object v6, p0, Lgs;->j:[C

    iget v7, p0, Lgs;->l:I

    invoke-static {p1, v3, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lgs;->l:I

    add-int/2addr v3, v5

    iput v3, p0, Lgs;->l:I

    :cond_4f
    :goto_4f
    if-ge v4, v0, :cond_7d

    aget-char v3, p1, v4

    aget v3, v1, v3

    add-int/lit8 v4, v4, 0x1

    if-gez v3, :cond_7b

    const/4 v5, 0x6

    :goto_5a
    iget v6, p0, Lgs;->l:I

    add-int/2addr v6, v5

    iget v7, p0, Lgs;->m:I

    if-le v6, v7, :cond_64

    invoke-direct {p0}, Lgs;->n()V

    :cond_64
    iget-object v6, p0, Lgs;->j:[C

    iget v7, p0, Lgs;->l:I

    invoke-static {v3, v6, v7}, Lgs;->a(I[CI)V

    iget v3, p0, Lgs;->l:I

    add-int/2addr v3, v5

    iput v3, p0, Lgs;->l:I

    move v3, v4

    goto :goto_22

    :cond_72
    invoke-direct {p0}, Lgs;->n()V

    iget-object v6, p0, Lgs;->i:Ljava/io/Writer;

    invoke-virtual {v6, p1, v3, v5}, Ljava/io/Writer;->write([CII)V

    goto :goto_4f

    :cond_7b
    const/4 v5, 0x2

    goto :goto_5a

    .line 296
    :cond_7d
    iget v0, p0, Lgs;->l:I

    iget v1, p0, Lgs;->m:I

    if-lt v0, v1, :cond_86

    .line 297
    invoke-direct {p0}, Lgs;->n()V

    .line 299
    :cond_86
    iget-object v0, p0, Lgs;->j:[C

    iget v1, p0, Lgs;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgs;->l:I

    aput-char v8, v0, v1

    .line 300
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 268
    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lgs;->e(Ljava/lang/String;)V

    .line 269
    if-nez p1, :cond_d

    .line 270
    invoke-direct {p0}, Lgs;->m()V

    .line 283
    :goto_c
    return-void

    .line 273
    :cond_d
    iget v0, p0, Lgs;->l:I

    iget v1, p0, Lgs;->m:I

    if-lt v0, v1, :cond_16

    .line 274
    invoke-direct {p0}, Lgs;->n()V

    .line 276
    :cond_16
    iget-object v0, p0, Lgs;->j:[C

    iget v1, p0, Lgs;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgs;->l:I

    aput-char v3, v0, v1

    .line 277
    invoke-direct {p0, p1}, Lgs;->g(Ljava/lang/String;)V

    .line 279
    iget v0, p0, Lgs;->l:I

    iget v1, p0, Lgs;->m:I

    if-lt v0, v1, :cond_2c

    .line 280
    invoke-direct {p0}, Lgs;->n()V

    .line 282
    :cond_2c
    iget-object v0, p0, Lgs;->j:[C

    iget v1, p0, Lgs;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgs;->l:I

    aput-char v3, v0, v1

    goto :goto_c
.end method

.method public final c(Ljava/lang/String;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 313
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 314
    iget v1, p0, Lgs;->m:I

    iget v2, p0, Lgs;->l:I

    sub-int/2addr v1, v2

    .line 316
    if-nez v1, :cond_14

    .line 317
    invoke-direct {p0}, Lgs;->n()V

    .line 318
    iget v1, p0, Lgs;->m:I

    iget v2, p0, Lgs;->l:I

    sub-int/2addr v1, v2

    .line 321
    :cond_14
    if-lt v1, v0, :cond_23

    .line 322
    iget-object v1, p0, Lgs;->j:[C

    iget v2, p0, Lgs;->l:I

    invoke-virtual {p1, v5, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 323
    iget v1, p0, Lgs;->l:I

    add-int/2addr v0, v1

    iput v0, p0, Lgs;->l:I

    .line 327
    :goto_22
    return-void

    .line 325
    :cond_23
    iget v0, p0, Lgs;->m:I

    iget v1, p0, Lgs;->l:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lgs;->j:[C

    iget v2, p0, Lgs;->l:I

    invoke-virtual {p1, v5, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget v1, p0, Lgs;->l:I

    add-int/2addr v1, v0

    iput v1, p0, Lgs;->l:I

    invoke-direct {p0}, Lgs;->n()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_3f
    iget v2, p0, Lgs;->m:I

    if-le v0, v2, :cond_56

    iget v2, p0, Lgs;->m:I

    add-int v3, v1, v2

    iget-object v4, p0, Lgs;->j:[C

    invoke-virtual {p1, v1, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    iput v5, p0, Lgs;->k:I

    iput v2, p0, Lgs;->l:I

    invoke-direct {p0}, Lgs;->n()V

    add-int/2addr v1, v2

    sub-int/2addr v0, v2

    goto :goto_3f

    :cond_56
    add-int v2, v1, v0

    iget-object v3, p0, Lgs;->j:[C

    invoke-virtual {p1, v1, v2, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    iput v5, p0, Lgs;->k:I

    iput v0, p0, Lgs;->l:I

    goto :goto_22
.end method

.method public final close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 695
    invoke-super {p0}, Lgh;->close()V

    .line 701
    iget-object v0, p0, Lgs;->j:[C

    if-eqz v0, :cond_27

    sget-object v0, Lez$a;->AUTO_CLOSE_JSON_CONTENT:Lez$a;

    invoke-virtual {p0, v0}, Lgs;->a(Lez$a;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 704
    :goto_f
    invoke-virtual {p0}, Lgs;->h()Lgm;

    move-result-object v0

    .line 705
    invoke-virtual {v0}, Lff;->a()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 706
    invoke-virtual {p0}, Lgs;->c()V

    goto :goto_f

    .line 707
    :cond_1d
    invoke-virtual {v0}, Lff;->c()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 708
    invoke-virtual {p0}, Lgs;->e()V

    goto :goto_f

    .line 714
    :cond_27
    invoke-direct {p0}, Lgs;->n()V

    .line 722
    iget-object v0, p0, Lgs;->h:Lgt;

    invoke-virtual {v0}, Lgt;->b()Z

    move-result v0

    if-nez v0, :cond_3a

    sget-object v0, Lez$a;->AUTO_CLOSE_TARGET:Lez$a;

    invoke-virtual {p0, v0}, Lgs;->a(Lez$a;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 723
    :cond_3a
    iget-object v0, p0, Lgs;->i:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 729
    :goto_3f
    iget-object v0, p0, Lgs;->j:[C

    if-eqz v0, :cond_4b

    const/4 v1, 0x0

    iput-object v1, p0, Lgs;->j:[C

    iget-object v1, p0, Lgs;->h:Lgt;

    invoke-virtual {v1, v0}, Lgt;->b([C)V

    .line 730
    :cond_4b
    return-void

    .line 726
    :cond_4c
    iget-object v0, p0, Lgs;->i:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    goto :goto_3f
.end method

.method public final d(Ljava/lang/String;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 552
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lgs;->e(Ljava/lang/String;)V

    .line 553
    iget-boolean v0, p0, Lgs;->d:Z

    if-eqz v0, :cond_d

    .line 554
    invoke-direct {p0, p1}, Lgs;->b(Ljava/lang/Object;)V

    .line 558
    :goto_c
    return-void

    .line 556
    :cond_d
    invoke-virtual {p0, p1}, Lgs;->c(Ljava/lang/String;)V

    goto :goto_c
.end method

.method protected final e(Ljava/lang/String;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 616
    iget-object v0, p0, Lgs;->e:Lgm;

    invoke-virtual {v0}, Lgm;->g()I

    move-result v0

    .line 617
    const/4 v1, 0x5

    if-ne v0, v1, :cond_25

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expecting field name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgs;->f(Ljava/lang/String;)V

    .line 620
    :cond_25
    iget-object v1, p0, Lgs;->a:Lfi;

    if-nez v1, :cond_4b

    .line 622
    packed-switch v0, :pswitch_data_84

    .line 645
    :cond_2c
    :goto_2c
    return-void

    .line 624
    :pswitch_2d
    const/16 v0, 0x2c

    .line 636
    :goto_2f
    iget v1, p0, Lgs;->l:I

    iget v2, p0, Lgs;->m:I

    if-lt v1, v2, :cond_38

    .line 637
    invoke-direct {p0}, Lgs;->n()V

    .line 639
    :cond_38
    iget-object v1, p0, Lgs;->j:[C

    iget v2, p0, Lgs;->l:I

    aput-char v0, v1, v2

    .line 640
    iget v0, p0, Lgs;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgs;->l:I

    goto :goto_2c

    .line 627
    :pswitch_45
    const/16 v0, 0x3a

    .line 628
    goto :goto_2f

    .line 630
    :pswitch_48
    const/16 v0, 0x20

    .line 631
    goto :goto_2f

    .line 644
    :cond_4b
    packed-switch v0, :pswitch_data_8e

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error: should never end up through this code path"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_56
    iget-object v0, p0, Lgs;->a:Lfi;

    invoke-interface {v0, p0}, Lfi;->f(Lez;)V

    goto :goto_2c

    :pswitch_5c
    iget-object v0, p0, Lgs;->a:Lfi;

    invoke-interface {v0, p0}, Lfi;->d(Lez;)V

    goto :goto_2c

    :pswitch_62
    iget-object v0, p0, Lgs;->a:Lfi;

    invoke-interface {v0, p0}, Lfi;->a(Lez;)V

    goto :goto_2c

    :pswitch_68
    iget-object v0, p0, Lgs;->e:Lgm;

    invoke-virtual {v0}, Lgm;->a()Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lgs;->a:Lfi;

    invoke-interface {v0, p0}, Lfi;->g(Lez;)V

    goto :goto_2c

    :cond_76
    iget-object v0, p0, Lgs;->e:Lgm;

    invoke-virtual {v0}, Lgm;->c()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lgs;->a:Lfi;

    invoke-interface {v0, p0}, Lfi;->h(Lez;)V

    goto :goto_2c

    .line 622
    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_45
        :pswitch_48
    .end packed-switch

    .line 644
    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_68
        :pswitch_56
        :pswitch_5c
        :pswitch_62
    .end packed-switch
.end method

.method public final f()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 602
    const-string v0, "write null value"

    invoke-virtual {p0, v0}, Lgs;->e(Ljava/lang/String;)V

    .line 603
    invoke-direct {p0}, Lgs;->m()V

    .line 604
    return-void
.end method

.method public final g()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 685
    invoke-direct {p0}, Lgs;->n()V

    .line 686
    iget-object v0, p0, Lgs;->i:Ljava/io/Writer;

    if-eqz v0, :cond_c

    .line 687
    iget-object v0, p0, Lgs;->i:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 689
    :cond_c
    return-void
.end method

.method protected final i()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 93
    iget v0, p0, Lgs;->l:I

    iget v1, p0, Lgs;->m:I

    if-lt v0, v1, :cond_9

    .line 94
    invoke-direct {p0}, Lgs;->n()V

    .line 96
    :cond_9
    iget-object v0, p0, Lgs;->j:[C

    iget v1, p0, Lgs;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgs;->l:I

    const/16 v2, 0x5b

    aput-char v2, v0, v1

    .line 97
    return-void
.end method

.method protected final j()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 103
    iget v0, p0, Lgs;->l:I

    iget v1, p0, Lgs;->m:I

    if-lt v0, v1, :cond_9

    .line 104
    invoke-direct {p0}, Lgs;->n()V

    .line 106
    :cond_9
    iget-object v0, p0, Lgs;->j:[C

    iget v1, p0, Lgs;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgs;->l:I

    const/16 v2, 0x5d

    aput-char v2, v0, v1

    .line 107
    return-void
.end method

.method protected final k()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 113
    iget v0, p0, Lgs;->l:I

    iget v1, p0, Lgs;->m:I

    if-lt v0, v1, :cond_9

    .line 114
    invoke-direct {p0}, Lgs;->n()V

    .line 116
    :cond_9
    iget-object v0, p0, Lgs;->j:[C

    iget v1, p0, Lgs;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgs;->l:I

    const/16 v2, 0x7b

    aput-char v2, v0, v1

    .line 117
    return-void
.end method

.method protected final l()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 123
    iget v0, p0, Lgs;->l:I

    iget v1, p0, Lgs;->m:I

    if-lt v0, v1, :cond_9

    .line 124
    invoke-direct {p0}, Lgs;->n()V

    .line 126
    :cond_9
    iget-object v0, p0, Lgs;->j:[C

    iget v1, p0, Lgs;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgs;->l:I

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    .line 127
    return-void
.end method
