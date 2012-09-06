.class public Lat/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/A;


# instance fields
.field private final A:Lat/t;

.field private B:Lat/r;

.field private C:I

.field private D:Z

.field private E:Lat/w;

.field private F:Ljava/lang/String;

.field private G:Ln/A;

.field protected final a:Lat/D;

.field protected b:Lat/H;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Lat/P;

.field private s:Lat/P;

.field private t:[Lat/P;

.field private u:Lat/Q;

.field private v:Z

.field private w:I

.field private x:Z

.field private y:J

.field private z:J


# direct methods
.method public constructor <init>(IIILat/B;Lat/Y;I)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v6, p0, Lat/p;->c:I

    .line 61
    iput v6, p0, Lat/p;->d:I

    .line 67
    iput v6, p0, Lat/p;->e:I

    .line 70
    iput v6, p0, Lat/p;->f:I

    .line 73
    iput v6, p0, Lat/p;->g:I

    .line 112
    iput v6, p0, Lat/p;->h:I

    .line 122
    iput v6, p0, Lat/p;->i:I

    .line 125
    iput v6, p0, Lat/p;->j:I

    .line 128
    iput v6, p0, Lat/p;->k:I

    .line 134
    iput v6, p0, Lat/p;->l:I

    .line 140
    iput v6, p0, Lat/p;->m:I

    .line 146
    iput v6, p0, Lat/p;->n:I

    .line 152
    iput v6, p0, Lat/p;->o:I

    .line 242
    iput v6, p0, Lat/p;->w:I

    .line 255
    new-instance v0, Lat/t;

    invoke-direct {v0}, Lat/t;-><init>()V

    iput-object v0, p0, Lat/p;->A:Lat/t;

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lat/p;->B:Lat/r;

    .line 315
    iput v6, p0, Lat/p;->C:I

    .line 322
    iput-boolean v6, p0, Lat/p;->D:Z

    .line 358
    new-instance v0, Lat/D;

    const-string v5, "Tiles"

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p6

    invoke-direct/range {v0 .. v5}, Lat/D;-><init>(IIIILjava/lang/String;)V

    iput-object v0, p0, Lat/p;->a:Lat/D;

    .line 360
    new-instance v0, Lat/H;

    const/4 v1, 0x3

    invoke-static {v1}, Lat/Y;->b(I)Lat/Y;

    move-result-object v1

    invoke-direct {v0, p4, v1, v6}, Lat/H;-><init>(Lat/B;Lat/Y;I)V

    iput-object v0, p0, Lat/p;->b:Lat/H;

    .line 361
    invoke-direct {p0, p4, p5}, Lat/p;->a(Lat/B;Lat/Y;)V

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lat/p;->v:Z

    .line 363
    return-void
.end method

.method public static a(I)I
    .registers 2
    .parameter

    .prologue
    .line 1570
    const/16 v0, 0x100

    invoke-static {p0, v0}, Lcom/google/googlenav/common/util/j;->a(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private declared-synchronized a(IILat/H;)Lat/Y;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 575
    monitor-enter p0

    :try_start_1
    invoke-virtual {p3}, Lat/H;->a()Lat/B;

    move-result-object v0

    invoke-virtual {p0, v0}, Lat/p;->e(Lat/B;)I

    move-result v0

    invoke-static {v0}, Lat/Y;->b(I)Lat/Y;

    move-result-object v0

    .line 576
    :goto_d
    invoke-virtual {v0}, Lat/Y;->d()Lat/Y;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-virtual {p3, v0}, Lat/H;->a(Lat/Y;)Lat/H;

    move-result-object v1

    invoke-virtual {p0, v1}, Lat/p;->b(Lat/H;)I

    move-result v1

    if-lt v1, p1, :cond_27

    invoke-virtual {p3, v0}, Lat/H;->a(Lat/Y;)Lat/H;

    move-result-object v1

    invoke-virtual {p0, v1}, Lat/p;->c(Lat/H;)I

    move-result v1

    if-ge v1, p2, :cond_2c

    .line 579
    :cond_27
    invoke-virtual {v0}, Lat/Y;->d()Lat/Y;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2e

    move-result-object v0

    goto :goto_d

    .line 582
    :cond_2c
    monitor-exit p0

    return-object v0

    .line 575
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/util/HashSet;Ljava/util/HashSet;I)Ljava/lang/String;
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1113
    const/4 v0, -0x1

    if-eq p3, v0, :cond_53

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1115
    :goto_1a
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, ", "

    invoke-static {v1, v2}, Laa/b;->a(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1116
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v3, ", "

    invoke-static {v2, v3}, Laa/b;->a(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1118
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6f

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6f

    .line 1119
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v5

    aput-object v0, v3, v4

    aput-object v2, v3, v6

    aput-object v0, v3, v7

    const/4 v0, 0x4

    aput-object v1, v3, v0

    .line 1120
    const/16 v0, 0x2b1

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1134
    :goto_52
    return-object v0

    .line 1113
    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 1122
    :cond_6f
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8a

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 1123
    const/16 v1, 0x2b2

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    .line 1125
    :cond_8a
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 1126
    new-array v2, v7, [Ljava/lang/String;

    aput-object v0, v2, v5

    aput-object v0, v2, v4

    aput-object v1, v2, v6

    .line 1127
    const/16 v0, 0x2b4

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    .line 1130
    :cond_a3
    new-array v1, v7, [Ljava/lang/String;

    aput-object v0, v1, v5

    aput-object v0, v1, v4

    aput-object v2, v1, v6

    .line 1131
    const/16 v0, 0x2b3

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_52
.end method

.method private a(Lat/B;Lat/Y;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 817
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    const-string v1, "Map info"

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->a_(Ljava/lang/String;)[B

    move-result-object v1

    .line 819
    const/4 v0, 0x0

    .line 824
    if-eqz v1, :cond_89

    .line 826
    :try_start_14
    invoke-static {v1}, Lcom/google/googlenav/common/io/i;->a([B)Ljava/io/DataInput;

    move-result-object v4

    .line 828
    invoke-interface {v4}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    .line 829
    if-ne v1, v6, :cond_84

    .line 830
    invoke-static {v4}, Lat/B;->a(Ljava/io/DataInput;)Lat/B;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_21} :catch_51

    move-result-object v3

    .line 831
    :try_start_22
    invoke-interface {v4}, Ljava/io/DataInput;->readInt()I
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_7f

    move-result v1

    .line 832
    :try_start_26
    invoke-interface {v4}, Ljava/io/DataInput;->readUnsignedByte()I
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_82

    move-result v0

    move-object v4, v3

    move v3, v1

    move v1, v2

    :goto_2d
    move v7, v3

    move v3, v1

    move-object v1, v4

    .line 845
    :goto_30
    if-eqz v3, :cond_76

    .line 848
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_6c

    move v3, v2

    .line 855
    :goto_37
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_74

    move v4, v2

    .line 856
    :goto_3c
    new-instance v0, Lat/H;

    invoke-static {v1}, Lat/p;->f(Lat/B;)I

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Lat/Y;->b(I)Lat/Y;

    move-result-object v2

    invoke-direct/range {v0 .. v5}, Lat/H;-><init>(Lat/B;Lat/Y;IZZ)V

    invoke-virtual {p0, v0}, Lat/p;->a(Lat/H;)V

    .line 862
    :goto_50
    return-void

    .line 837
    :catch_51
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move v1, v5

    .line 839
    :goto_55
    const-string v4, "MAP"

    invoke-static {v4, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 840
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    const-string v4, "Map info"

    invoke-interface {v0, v4}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    move v0, v5

    move v7, v1

    move-object v1, v3

    move v3, v5

    goto :goto_30

    .line 850
    :cond_6c
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_72

    move v3, v6

    .line 851
    goto :goto_37

    :cond_72
    move v3, v5

    .line 853
    goto :goto_37

    :cond_74
    move v4, v5

    .line 855
    goto :goto_3c

    .line 860
    :cond_76
    new-instance v0, Lat/H;

    invoke-direct {v0, p1, p2, v5}, Lat/H;-><init>(Lat/B;Lat/Y;I)V

    invoke-virtual {p0, v0}, Lat/p;->a(Lat/H;)V

    goto :goto_50

    .line 837
    :catch_7f
    move-exception v0

    move v1, v5

    goto :goto_55

    :catch_82
    move-exception v0

    goto :goto_55

    :cond_84
    move v1, v5

    move v3, v5

    move-object v4, v0

    move v0, v5

    goto :goto_2d

    :cond_89
    move v3, v5

    move v7, v5

    move-object v1, v0

    move v0, v5

    goto :goto_30
.end method

.method private a(Lat/B;Lat/Y;IILandroid/graphics/Point;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 689
    if-nez p1, :cond_3

    .line 711
    :cond_2
    :goto_2
    return-void

    .line 693
    :cond_3
    invoke-virtual {p1, p2}, Lat/B;->a(Lat/Y;)I

    move-result v0

    sub-int/2addr v0, p3

    iput v0, p5, Landroid/graphics/Point;->x:I

    .line 697
    invoke-virtual {p2}, Lat/Y;->b()I

    move-result v0

    .line 698
    iget v1, p5, Landroid/graphics/Point;->x:I

    neg-int v2, v0

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_47

    .line 699
    iget v1, p5, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Point;->x:I

    .line 703
    :cond_1a
    :goto_1a
    invoke-virtual {p1, p2}, Lat/B;->b(Lat/Y;)I

    move-result v0

    sub-int/2addr v0, p4

    iput v0, p5, Landroid/graphics/Point;->y:I

    .line 704
    iget-object v0, p0, Lat/p;->B:Lat/r;

    if-eqz v0, :cond_2

    .line 705
    iget v0, p5, Landroid/graphics/Point;->x:I

    iget v1, p0, Lat/p;->j:I

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Point;->x:I

    .line 706
    iget v0, p5, Landroid/graphics/Point;->y:I

    iget v1, p0, Lat/p;->k:I

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Point;->y:I

    .line 707
    iget-object v0, p0, Lat/p;->B:Lat/r;

    invoke-interface {v0, p5}, Lat/r;->a(Landroid/graphics/Point;)V

    .line 708
    iget v0, p5, Landroid/graphics/Point;->x:I

    iget v1, p0, Lat/p;->j:I

    sub-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Point;->x:I

    .line 709
    iget v0, p5, Landroid/graphics/Point;->y:I

    iget v1, p0, Lat/p;->k:I

    sub-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 700
    :cond_47
    iget v1, p5, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v0, 0x2

    if-le v1, v2, :cond_1a

    .line 701
    iget v1, p5, Landroid/graphics/Point;->x:I

    sub-int v0, v1, v0

    iput v0, p5, Landroid/graphics/Point;->x:I

    goto :goto_1a
.end method

.method private a(Lat/I;)V
    .registers 6
    .parameter

    .prologue
    .line 1248
    invoke-virtual {p1}, Lat/I;->i()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 1249
    invoke-virtual {p1}, Lat/I;->h()J

    move-result-wide v0

    iget-wide v2, p0, Lat/p;->y:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lat/p;->y:J

    .line 1252
    :cond_13
    return-void
.end method

.method private a(ZZ)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 519
    iget-object v0, p0, Lat/p;->r:Lat/P;

    .line 520
    iget-object v1, p0, Lat/p;->s:Lat/P;

    .line 522
    iget v2, p0, Lat/p;->l:I

    iget v3, p0, Lat/p;->m:I

    invoke-virtual {p0, v2, v3}, Lat/p;->a(II)Lat/P;

    move-result-object v2

    iput-object v2, p0, Lat/p;->r:Lat/P;

    .line 523
    iget v2, p0, Lat/p;->n:I

    iget v3, p0, Lat/p;->o:I

    invoke-virtual {p0, v2, v3}, Lat/p;->a(II)Lat/P;

    move-result-object v2

    iput-object v2, p0, Lat/p;->s:Lat/P;

    .line 527
    if-nez p1, :cond_24

    if-eqz v0, :cond_24

    iget-object v2, p0, Lat/p;->r:Lat/P;

    invoke-virtual {v0, v2}, Lat/P;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 528
    :cond_24
    invoke-direct {p0}, Lat/p;->w()V

    .line 532
    :cond_27
    if-nez p2, :cond_33

    if-eqz v1, :cond_33

    iget-object v0, p0, Lat/p;->s:Lat/P;

    invoke-virtual {v1, v0}, Lat/P;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 534
    :cond_33
    iget-object v0, p0, Lat/p;->a:Lat/D;

    invoke-virtual {v0}, Lat/D;->l()V

    .line 537
    const/4 v0, 0x1

    iput-boolean v0, p0, Lat/p;->D:Z

    .line 539
    :cond_3b
    return-void
.end method

.method private static a([Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1099
    if-eqz p0, :cond_12

    .line 1100
    const/4 v0, 0x0

    :goto_3
    array-length v1, p0

    if-ge v0, v1, :cond_12

    .line 1101
    aget-object v1, p0, v0

    if-eqz v1, :cond_f

    .line 1102
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1100
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1106
    :cond_12
    return-void
.end method

.method private static a(J)Z
    .registers 6
    .parameter

    .prologue
    .line 1485
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private a(LS/e;ZZ)Z
    .registers 26
    .parameter
    .parameter
    .parameter

    .prologue
    .line 920
    move-object/from16 v0, p0

    iget v1, v0, Lat/p;->f:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lat/p;->r:Lat/P;

    invoke-virtual {v2}, Lat/P;->f()I

    move-result v2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lat/p;->b:Lat/H;

    invoke-virtual {v2}, Lat/H;->a()Lat/B;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lat/p;->b:Lat/H;

    invoke-virtual {v3}, Lat/H;->b()Lat/Y;

    move-result-object v3

    invoke-virtual {v2, v3}, Lat/B;->a(Lat/Y;)I

    move-result v2

    sub-int v6, v1, v2

    .line 922
    move-object/from16 v0, p0

    iget v1, v0, Lat/p;->g:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lat/p;->r:Lat/P;

    invoke-virtual {v2}, Lat/P;->g()I

    move-result v2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lat/p;->b:Lat/H;

    invoke-virtual {v2}, Lat/H;->a()Lat/B;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lat/p;->b:Lat/H;

    invoke-virtual {v3}, Lat/H;->b()Lat/Y;

    move-result-object v3

    invoke-virtual {v2, v3}, Lat/B;->b(Lat/Y;)I

    move-result v2

    sub-int v7, v1, v2

    .line 929
    :goto_46
    if-lez v6, :cond_56

    .line 930
    move-object/from16 v0, p0

    iget-object v1, v0, Lat/p;->b:Lat/H;

    invoke-virtual {v1}, Lat/H;->b()Lat/Y;

    move-result-object v1

    invoke-virtual {v1}, Lat/Y;->b()I

    move-result v1

    sub-int/2addr v6, v1

    goto :goto_46

    .line 933
    :cond_56
    move-object/from16 v0, p0

    iget-object v1, v0, Lat/p;->u:Lat/Q;

    if-eqz v1, :cond_63

    .line 934
    move-object/from16 v0, p0

    iget-object v1, v0, Lat/p;->u:Lat/Q;

    invoke-interface {v1}, Lat/Q;->a()V

    .line 936
    :cond_63
    const/4 v2, 0x0

    .line 937
    const/4 v15, 0x0

    .line 938
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    .line 939
    invoke-interface {v1}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v11

    .line 940
    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v17

    .line 941
    const/4 v1, 0x1

    .line 942
    if-nez p1, :cond_79

    .line 944
    const/4 v1, 0x0

    .line 954
    :cond_79
    const-wide v3, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    iput-wide v3, v0, Lat/p;->y:J

    .line 957
    move-object/from16 v0, p0

    iget v0, v0, Lat/p;->l:I

    move/from16 v19, v0

    .line 958
    move-object/from16 v0, p0

    iget v0, v0, Lat/p;->m:I

    move/from16 v20, v0

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lat/p;->t:[Lat/P;

    move-object/from16 v21, v0

    .line 960
    mul-int v3, v19, v20

    move-object/from16 v0, v21

    array-length v4, v0

    if-eq v3, v4, :cond_9d

    .line 964
    const/4 v1, 0x0

    .line 1033
    :goto_9c
    return v1

    .line 967
    :cond_9d
    const/4 v3, 0x0

    move v10, v1

    move v1, v15

    :goto_a0
    move/from16 v0, v19

    if-ge v3, v0, :cond_d8

    .line 968
    const/4 v4, 0x0

    move v15, v1

    move v1, v2

    :goto_a7
    move/from16 v0, v20

    if-ge v4, v0, :cond_d3

    .line 972
    int-to-long v8, v1

    add-long v13, v17, v8

    .line 974
    add-int/lit8 v16, v1, 0x1

    aget-object v2, v21, v1

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v1 .. v14}, Lat/p;->a(Lat/P;IILS/e;IIZZZJJ)Z

    move-result v1

    if-eqz v1, :cond_d1

    const/4 v1, 0x1

    :goto_c1
    add-int/2addr v1, v15

    .line 991
    if-eqz v10, :cond_cb

    invoke-static {v11, v12}, Lat/p;->a(J)Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 993
    const/4 v10, 0x0

    .line 968
    :cond_cb
    add-int/lit8 v4, v4, 0x1

    move v15, v1

    move/from16 v1, v16

    goto :goto_a7

    .line 974
    :cond_d1
    const/4 v1, 0x0

    goto :goto_c1

    .line 967
    :cond_d3
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    move v1, v15

    goto :goto_a0

    .line 998
    :cond_d8
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lat/p;->d(I)V

    .line 1000
    move-object/from16 v0, p0

    iget v2, v0, Lat/p;->C:I

    const/16 v3, 0x30

    if-le v2, v3, :cond_f1

    .line 1002
    move-object/from16 v0, p0

    iget-object v2, v0, Lat/p;->a:Lat/D;

    invoke-virtual {v2}, Lat/D;->f()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lat/p;->C:I

    .line 1005
    :cond_f1
    if-eqz p1, :cond_f8

    .line 1006
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lat/p;->e(I)V

    .line 1012
    :cond_f8
    if-eqz p2, :cond_101

    .line 1013
    move-object/from16 v0, p0

    iget-object v1, v0, Lat/p;->a:Lat/D;

    invoke-virtual {v1}, Lat/D;->j()Z

    .line 1019
    :cond_101
    move-object/from16 v0, p0

    iget-object v1, v0, Lat/p;->a:Lat/D;

    invoke-virtual {v1}, Lat/D;->k()V

    .line 1021
    move-object/from16 v0, p0

    iget-object v1, v0, Lat/p;->u:Lat/Q;

    if-eqz v1, :cond_115

    .line 1022
    move-object/from16 v0, p0

    iget-object v1, v0, Lat/p;->u:Lat/Q;

    invoke-interface {v1}, Lat/Q;->b()V

    .line 1026
    :cond_115
    invoke-static {}, Lat/f;->f()V

    .line 1028
    move-object/from16 v0, p0

    iput-wide v11, v0, Lat/p;->z:J

    .line 1033
    invoke-static {v11, v12}, Lat/p;->a(J)Z

    move-result v1

    if-nez v1, :cond_125

    const/4 v1, 0x1

    goto/16 :goto_9c

    :cond_125
    const/4 v1, 0x0

    goto/16 :goto_9c
.end method

.method private a(Lat/P;IILS/e;IIZZZJJ)Z
    .registers 27
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1300
    mul-int/lit16 v2, p2, 0x100

    add-int v10, p5, v2

    .line 1301
    move/from16 v0, p3

    mul-int/lit16 v2, v0, 0x100

    add-int v11, p6, v2

    .line 1304
    invoke-virtual {p1}, Lat/P;->j()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1305
    if-eqz p4, :cond_25

    .line 1306
    const v2, 0xffffff

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, LS/e;->a(I)V

    .line 1307
    const/16 v2, 0x100

    const/16 v3, 0x100

    move-object/from16 v0, p4

    invoke-interface {v0, v10, v11, v2, v3}, LS/e;->b(IIII)V

    .line 1308
    const/4 v3, 0x1

    .line 1373
    :cond_24
    :goto_24
    return v3

    .line 1310
    :cond_25
    const/4 v3, 0x0

    goto :goto_24

    .line 1316
    :cond_27
    iget v2, p0, Lat/p;->f:I

    add-int/lit16 v3, v10, 0x80

    sub-int/2addr v2, v3

    .line 1317
    iget v3, p0, Lat/p;->g:I

    add-int/lit16 v4, v11, 0x80

    sub-int/2addr v3, v4

    .line 1320
    mul-int/2addr v2, v2

    mul-int/2addr v3, v3

    add-int v4, v2, v3

    .line 1323
    invoke-virtual {p0, p1}, Lat/p;->a(Lat/P;)Z

    move-result v9

    .line 1324
    if-eqz p7, :cond_b3

    if-nez v9, :cond_b3

    .line 1325
    const/16 p7, 0x0

    move/from16 v5, p7

    .line 1333
    :goto_41
    iget-object v2, p0, Lat/p;->a:Lat/D;

    if-eqz p9, :cond_af

    const/4 v6, 0x2

    :goto_46
    move-object v3, p1

    move-wide/from16 v7, p12

    invoke-virtual/range {v2 .. v8}, Lat/D;->a(Lat/P;IZIJ)Lat/I;

    move-result-object v6

    .line 1338
    if-eqz v9, :cond_69

    iget-object v2, p0, Lat/p;->u:Lat/Q;

    if-eqz v2, :cond_69

    if-eqz p9, :cond_69

    .line 1339
    iget-object v2, p0, Lat/p;->u:Lat/Q;

    invoke-interface {v2, v6, v5}, Lat/Q;->a(Lat/I;Z)Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-virtual {v6}, Lat/I;->t()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 1340
    iget v2, p0, Lat/p;->C:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lat/p;->C:I

    .line 1344
    :cond_69
    const/4 v2, 0x0

    .line 1345
    if-eqz p4, :cond_b1

    move-object/from16 v7, p4

    move-wide/from16 v8, p12

    move/from16 v12, p8

    .line 1348
    invoke-virtual/range {v6 .. v12}, Lat/I;->a(LS/e;JIIZ)Z

    move-result v3

    .line 1349
    if-eqz v3, :cond_b1

    .line 1352
    iget-wide v3, p0, Lat/p;->z:J

    move-wide/from16 v0, p10

    invoke-virtual {v6, v0, v1, v3, v4}, Lat/I;->a(JJ)V

    .line 1354
    invoke-virtual {v6}, Lat/I;->i()I

    move-result v3

    if-lez v3, :cond_b1

    .line 1355
    invoke-direct {p0, v6}, Lat/p;->a(Lat/I;)V

    .line 1356
    invoke-direct {p0, v6}, Lat/p;->b(Lat/I;)V

    .line 1357
    const/4 v2, 0x1

    move v3, v2

    .line 1362
    :goto_8d
    iget-object v2, p0, Lat/p;->a:Lat/D;

    move-wide/from16 v0, p12

    invoke-virtual {v2, p1, v5, v0, v1}, Lat/D;->a(Lat/P;ZJ)Ljava/util/Vector;

    move-result-object v5

    .line 1363
    if-eqz p4, :cond_24

    .line 1364
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_9e
    if-ltz v4, :cond_24

    .line 1365
    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LS/f;

    move-object/from16 v0, p4

    invoke-interface {v0, v2, v10, v11}, LS/e;->a(LS/f;II)V

    .line 1364
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_9e

    .line 1333
    :cond_af
    const/4 v6, 0x1

    goto :goto_46

    :cond_b1
    move v3, v2

    goto :goto_8d

    :cond_b3
    move/from16 v5, p7

    goto :goto_41
.end method

.method private b(Lat/I;)V
    .registers 9
    .parameter

    .prologue
    .line 1256
    invoke-virtual {p1}, Lat/I;->u()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p1}, Lat/I;->i()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_38

    .line 1257
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    .line 1258
    const/16 v2, 0x16

    const-string v3, "pc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lat/I;->h()J

    move-result-wide v5

    sub-long/2addr v0, v5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1262
    :cond_38
    return-void
.end method

.method private b(Lat/P;)Z
    .registers 5
    .parameter

    .prologue
    .line 1445
    invoke-virtual {p1}, Lat/P;->j()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p1}, Lat/P;->d()I

    move-result v0

    iget-object v1, p0, Lat/p;->s:Lat/P;

    invoke-virtual {v1}, Lat/P;->d()I

    move-result v1

    if-lt v0, v1, :cond_23

    invoke-virtual {p1}, Lat/P;->d()I

    move-result v0

    iget-object v1, p0, Lat/p;->s:Lat/P;

    invoke-virtual {v1}, Lat/P;->d()I

    move-result v1

    iget v2, p0, Lat/p;->o:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_23

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private c(Lat/P;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1457
    invoke-virtual {p1}, Lat/P;->e()Lat/Y;

    move-result-object v2

    invoke-virtual {v2}, Lat/Y;->b()I

    move-result v2

    div-int/lit16 v3, v2, 0x100

    .line 1459
    iget v2, p0, Lat/p;->n:I

    if-lt v2, v3, :cond_14

    move v2, v0

    .line 1460
    :goto_11
    if-eqz v2, :cond_16

    .line 1474
    :cond_13
    :goto_13
    return v0

    :cond_14
    move v2, v1

    .line 1459
    goto :goto_11

    .line 1465
    :cond_16
    iget-object v2, p0, Lat/p;->s:Lat/P;

    invoke-virtual {v2}, Lat/P;->c()I

    move-result v2

    iget v4, p0, Lat/p;->n:I

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    rem-int/2addr v2, v3

    .line 1468
    iget-object v3, p0, Lat/p;->s:Lat/P;

    invoke-virtual {v3}, Lat/P;->c()I

    move-result v3

    if-ge v3, v2, :cond_3e

    .line 1470
    invoke-virtual {p1}, Lat/P;->c()I

    move-result v3

    iget-object v4, p0, Lat/p;->s:Lat/P;

    invoke-virtual {v4}, Lat/P;->c()I

    move-result v4

    if-lt v3, v4, :cond_3c

    invoke-virtual {p1}, Lat/P;->c()I

    move-result v3

    if-le v3, v2, :cond_13

    :cond_3c
    move v0, v1

    goto :goto_13

    .line 1474
    :cond_3e
    invoke-virtual {p1}, Lat/P;->c()I

    move-result v3

    iget-object v4, p0, Lat/p;->s:Lat/P;

    invoke-virtual {v4}, Lat/P;->c()I

    move-result v4

    if-ge v3, v4, :cond_50

    invoke-virtual {p1}, Lat/P;->c()I

    move-result v3

    if-gt v3, v2, :cond_51

    :cond_50
    move v1, v0

    :cond_51
    move v0, v1

    goto :goto_13
.end method

.method private d(I)V
    .registers 11
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1046
    iget-object v3, p0, Lat/p;->t:[Lat/P;

    .line 1048
    iget v0, p0, Lat/p;->l:I

    iget v2, p0, Lat/p;->m:I

    mul-int/2addr v0, v2

    array-length v2, v3

    if-eq v0, v2, :cond_c

    .line 1089
    :cond_b
    :goto_b
    return-void

    .line 1054
    :cond_c
    iget-object v0, p0, Lat/p;->E:Lat/w;

    if-eqz v0, :cond_b

    .line 1058
    iget-boolean v0, p0, Lat/p;->D:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lat/p;->n:I

    iget v2, p0, Lat/p;->o:I

    mul-int/2addr v0, v2

    if-lt p1, v0, :cond_b

    .line 1059
    iput-boolean v1, p0, Lat/p;->D:Z

    .line 1060
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1061
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1062
    const/4 v0, -0x1

    move v2, v0

    move v0, v1

    .line 1065
    :goto_2a
    array-length v6, v3

    if-ge v0, v6, :cond_5b

    .line 1066
    aget-object v6, v3, v0

    invoke-virtual {p0, v6}, Lat/p;->a(Lat/P;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 1067
    iget-object v6, p0, Lat/p;->a:Lat/D;

    aget-object v7, v3, v0

    const v8, 0x7a1200

    invoke-virtual {v6, v7, v8, v1, v1}, Lat/D;->a(Lat/P;IZZ)Lat/I;

    move-result-object v6

    .line 1068
    invoke-virtual {v6}, Lat/I;->q()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lat/p;->a([Ljava/lang/String;Ljava/util/HashSet;)V

    .line 1069
    invoke-virtual {v6}, Lat/I;->r()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lat/p;->a([Ljava/lang/String;Ljava/util/HashSet;)V

    .line 1071
    invoke-virtual {v6}, Lat/I;->s()I

    move-result v7

    if-le v7, v2, :cond_58

    .line 1074
    invoke-virtual {v6}, Lat/I;->s()I

    move-result v2

    .line 1065
    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 1079
    :cond_5b
    invoke-direct {p0, v4, v5, v2}, Lat/p;->a(Ljava/util/HashSet;Ljava/util/HashSet;I)Ljava/lang/String;

    move-result-object v0

    .line 1081
    iget-object v1, p0, Lat/p;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1082
    iput-object v0, p0, Lat/p;->F:Ljava/lang/String;

    .line 1085
    iget-object v1, p0, Lat/p;->E:Lat/w;

    invoke-interface {v1, v0}, Lat/w;->a(Ljava/lang/String;)V

    goto :goto_b
.end method

.method private e(I)V
    .registers 9
    .parameter

    .prologue
    const/16 v6, 0x16

    .line 1184
    iget-wide v0, p0, Lat/p;->y:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 1185
    iput p1, p0, Lat/p;->w:I

    .line 1244
    :cond_f
    :goto_f
    return-void

    .line 1191
    :cond_10
    invoke-virtual {p0}, Lat/p;->k()B

    move-result v0

    .line 1192
    packed-switch v0, :pswitch_data_a8

    .line 1210
    :pswitch_17
    and-int/lit8 v0, v0, -0x80

    if-eqz v0, :cond_f

    goto :goto_f

    .line 1194
    :pswitch_1c
    const-string v0, "s"

    .line 1223
    :goto_1e
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v1

    iget-wide v3, p0, Lat/p;->y:J

    sub-long v2, v1, v3

    .line 1227
    iget v1, p0, Lat/p;->w:I

    if-nez v1, :cond_5e

    .line 1228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tf"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v1, v4}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1231
    const/4 v1, 0x1

    iput-boolean v1, p0, Lat/p;->x:Z

    .line 1235
    :cond_5e
    iget v1, p0, Lat/p;->w:I

    if-ge v1, p1, :cond_96

    iget v1, p0, Lat/p;->l:I

    iget v4, p0, Lat/p;->m:I

    mul-int/2addr v1, v4

    if-ne p1, v1, :cond_96

    .line 1236
    iget-boolean v1, p0, Lat/p;->x:Z

    if-eqz v1, :cond_a5

    const-string v1, "tc"

    .line 1239
    :goto_6f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1243
    :cond_96
    iput p1, p0, Lat/p;->w:I

    goto/16 :goto_f

    .line 1198
    :pswitch_9a
    const-string v0, "h"

    goto :goto_1e

    .line 1202
    :pswitch_9d
    const-string v0, "n"

    goto/16 :goto_1e

    .line 1206
    :pswitch_a1
    const-string v0, "m"

    goto/16 :goto_1e

    .line 1236
    :cond_a5
    const-string v1, "tp"

    goto :goto_6f

    .line 1192
    :pswitch_data_a8
    .packed-switch 0x2
        :pswitch_a1
        :pswitch_1c
        :pswitch_17
        :pswitch_17
        :pswitch_9a
        :pswitch_9d
    .end packed-switch
.end method

.method public static f(Lat/B;)I
    .registers 3
    .parameter

    .prologue
    const/16 v0, 0xf

    .line 1927
    invoke-static {p0}, Lat/p;->h(Lat/B;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1936
    :cond_8
    :goto_8
    return v0

    .line 1929
    :cond_9
    invoke-static {p0}, Lat/p;->g(Lat/B;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1931
    const/16 v0, 0x10

    goto :goto_8
.end method

.method public static g(Lat/B;)Z
    .registers 4
    .parameter

    .prologue
    .line 1941
    if-eqz p0, :cond_20

    .line 1942
    invoke-virtual {p0}, Lat/B;->c()I

    move-result v0

    .line 1943
    invoke-virtual {p0}, Lat/B;->e()I

    move-result v1

    .line 1947
    const v2, 0x16c6e44

    if-le v0, v2, :cond_20

    const v2, 0x2bf01d6

    if-ge v0, v2, :cond_20

    const v0, 0x7604113

    if-le v1, v0, :cond_20

    const v0, 0x8920c07

    if-ge v1, v0, :cond_20

    .line 1949
    const/4 v0, 0x1

    .line 1952
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static h(Lat/B;)Z
    .registers 8
    .parameter

    .prologue
    const v6, 0x7cfb66a

    const v5, 0x7ae0f28

    const v4, 0x7a8b1de

    const v3, 0x24e6895

    .line 1957
    if-eqz p0, :cond_4a

    .line 1958
    invoke-virtual {p0}, Lat/B;->c()I

    move-result v0

    .line 1959
    invoke-virtual {p0}, Lat/B;->e()I

    move-result v1

    .line 1963
    const v2, 0x1f75f9c

    if-le v0, v2, :cond_24

    if-ge v0, v3, :cond_24

    const v2, 0x76d5478

    if-le v1, v2, :cond_24

    if-lt v1, v4, :cond_48

    :cond_24
    const v2, 0x20de3a2

    if-le v0, v2, :cond_2f

    if-ge v0, v3, :cond_2f

    if-le v1, v4, :cond_2f

    if-lt v1, v5, :cond_48

    :cond_2f
    const v2, 0x2167b23

    if-le v0, v2, :cond_3a

    if-ge v0, v3, :cond_3a

    if-le v1, v5, :cond_3a

    if-lt v1, v6, :cond_48

    :cond_3a
    const v2, 0x234ffbd

    if-le v0, v2, :cond_4a

    if-ge v0, v3, :cond_4a

    if-le v1, v6, :cond_4a

    const v0, 0x7de3697

    if-ge v1, v0, :cond_4a

    .line 1971
    :cond_48
    const/4 v0, 0x1

    .line 1974
    :goto_49
    return v0

    :cond_4a
    const/4 v0, 0x0

    goto :goto_49
.end method

.method private w()V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 549
    iget-object v0, p0, Lat/p;->t:[Lat/P;

    if-eqz v0, :cond_3a

    .line 551
    invoke-virtual {p0}, Lat/p;->k()B

    move-result v5

    move v0, v1

    move v2, v1

    .line 554
    :goto_b
    iget v3, p0, Lat/p;->l:I

    if-ge v0, v3, :cond_3a

    move v3, v1

    .line 555
    :goto_10
    iget v4, p0, Lat/p;->m:I

    if-ge v3, v4, :cond_37

    .line 556
    iget-object v6, p0, Lat/p;->t:[Lat/P;

    add-int/lit8 v4, v2, 0x1

    iget-object v7, p0, Lat/p;->r:Lat/P;

    invoke-virtual {v7}, Lat/P;->c()I

    move-result v7

    add-int/2addr v7, v0

    iget-object v8, p0, Lat/p;->r:Lat/P;

    invoke-virtual {v8}, Lat/P;->d()I

    move-result v8

    add-int/2addr v8, v3

    iget-object v9, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v9}, Lat/H;->b()Lat/Y;

    move-result-object v9

    invoke-static {v5, v7, v8, v9}, Lat/P;->a(BIILat/Y;)Lat/P;

    move-result-object v7

    aput-object v7, v6, v2

    .line 555
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_10

    .line 554
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 561
    :cond_3a
    return-void
.end method

.method private x()V
    .registers 3

    .prologue
    .line 635
    iget-object v0, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v0}, Lat/H;->a()Lat/B;

    move-result-object v0

    iget-object v1, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v1}, Lat/H;->b()Lat/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/B;->a(Lat/Y;)I

    move-result v0

    iput v0, p0, Lat/p;->p:I

    .line 636
    iget-object v0, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v0}, Lat/H;->a()Lat/B;

    move-result-object v0

    iget-object v1, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v1}, Lat/H;->b()Lat/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/B;->b(Lat/Y;)I

    move-result v0

    iput v0, p0, Lat/p;->q:I

    .line 637
    return-void
.end method

.method private y()B
    .registers 2

    .prologue
    .line 1613
    iget-object v0, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v0}, Lat/H;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 1620
    const/4 v0, 0x2

    :goto_a
    return v0

    .line 1615
    :pswitch_b
    invoke-static {}, Lat/P;->a()B

    move-result v0

    goto :goto_a

    .line 1617
    :pswitch_10
    const/4 v0, 0x7

    goto :goto_a

    .line 1613
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_b
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public a(Lat/B;II)Lat/B;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 753
    iget-object v0, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v0}, Lat/H;->b()Lat/Y;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lat/p;->a(Lat/B;Lat/Y;II)Lat/B;

    move-result-object v0

    return-object v0
.end method

.method public a(Lat/B;Lat/Y;II)Lat/B;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 772
    iget v0, p0, Lat/p;->j:I

    sub-int v0, p3, v0

    .line 773
    iget v1, p0, Lat/p;->k:I

    sub-int v1, p4, v1

    .line 774
    invoke-virtual {p1, v0, v1, p2}, Lat/B;->a(IILat/Y;)Lat/B;

    move-result-object v0

    return-object v0
.end method

.method public a()Lat/D;
    .registers 2

    .prologue
    .line 405
    iget-object v0, p0, Lat/p;->a:Lat/D;

    return-object v0
.end method

.method a(II)Lat/P;
    .registers 13
    .parameter
    .parameter

    .prologue
    const/16 v9, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 487
    iget-object v0, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v0}, Lat/H;->a()Lat/B;

    move-result-object v0

    .line 488
    iget-object v3, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v3}, Lat/H;->b()Lat/Y;

    move-result-object v5

    .line 489
    invoke-static {v0, v5}, Lat/P;->a(Lat/B;Lat/Y;)I

    move-result v3

    div-int/lit8 v4, p1, 0x2

    sub-int/2addr v3, v4

    .line 490
    invoke-static {v0, v5}, Lat/P;->b(Lat/B;Lat/Y;)I

    move-result v4

    div-int/lit8 v6, p2, 0x2

    sub-int/2addr v4, v6

    .line 491
    invoke-virtual {p0}, Lat/p;->k()B

    move-result v6

    invoke-static {v6, v0, v5}, Lat/P;->a(BLat/B;Lat/Y;)Lat/P;

    move-result-object v6

    .line 496
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_52

    move v0, v1

    .line 497
    :goto_2b
    iget v7, p0, Lat/p;->p:I

    invoke-virtual {v6}, Lat/P;->f()I

    move-result v8

    sub-int/2addr v7, v8

    .line 498
    if-eqz v0, :cond_58

    if-le v7, v9, :cond_58

    .line 499
    add-int/lit8 v0, v3, 0x1

    .line 502
    :goto_38
    rem-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_54

    .line 503
    :goto_3c
    iget v2, p0, Lat/p;->q:I

    invoke-virtual {v6}, Lat/P;->g()I

    move-result v3

    sub-int/2addr v2, v3

    .line 504
    if-eqz v1, :cond_56

    if-le v2, v9, :cond_56

    .line 505
    add-int/lit8 v1, v4, 0x1

    .line 508
    :goto_49
    invoke-virtual {p0}, Lat/p;->k()B

    move-result v2

    invoke-static {v2, v0, v1, v5}, Lat/P;->a(BIILat/Y;)Lat/P;

    move-result-object v0

    return-object v0

    :cond_52
    move v0, v2

    .line 496
    goto :goto_2b

    :cond_54
    move v1, v2

    .line 502
    goto :goto_3c

    :cond_56
    move v1, v4

    goto :goto_49

    :cond_58
    move v0, v3

    goto :goto_38
.end method

.method public declared-synchronized a([Lat/B;Lat/B;)Lat/Y;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 587
    monitor-enter p0

    if-eqz p1, :cond_8

    :try_start_4
    array-length v1, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_11

    .line 588
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_e

    .line 587
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 592
    :cond_11
    const/4 v1, 0x0

    :try_start_12
    aget-object v1, p1, v1

    invoke-virtual {v1}, Lat/B;->c()I

    move-result v5

    .line 593
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lat/B;->e()I

    move-result v1

    move v7, v0

    move v4, v1

    move v6, v5

    .line 596
    :goto_22
    array-length v0, p1

    if-ge v7, v0, :cond_43

    .line 597
    aget-object v0, p1, v7

    invoke-virtual {v0}, Lat/B;->c()I

    move-result v2

    .line 598
    aget-object v0, p1, v7

    invoke-virtual {v0}, Lat/B;->e()I

    move-result v0

    .line 600
    if-ge v2, v6, :cond_34

    move v6, v2

    .line 603
    :cond_34
    if-le v2, v5, :cond_82

    move v3, v2

    .line 606
    :goto_37
    if-ge v0, v4, :cond_80

    move v2, v0

    .line 609
    :goto_3a
    if-le v0, v1, :cond_7e

    .line 596
    :goto_3c
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v4, v2

    move v5, v3

    move v1, v0

    goto :goto_22

    .line 615
    :cond_43
    sub-int v3, v5, v6

    .line 616
    sub-int v2, v1, v4

    .line 618
    iget-object v0, p0, Lat/p;->b:Lat/H;

    .line 620
    if-eqz p2, :cond_7b

    .line 621
    add-int v0, v5, v6

    div-int/lit8 v0, v0, 0x2

    .line 622
    invoke-virtual {p2}, Lat/B;->c()I

    move-result v5

    sub-int v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 623
    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    .line 625
    add-int v0, v1, v4

    div-int/lit8 v0, v0, 0x2

    .line 626
    invoke-virtual {p2}, Lat/B;->e()I

    move-result v1

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 627
    mul-int/lit8 v0, v0, 0x2

    add-int v1, v2, v0

    .line 628
    iget-object v0, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v0, p2}, Lat/H;->a(Lat/B;)Lat/H;

    move-result-object v0

    move v2, v3

    .line 631
    :goto_75
    invoke-direct {p0, v2, v1, v0}, Lat/p;->a(IILat/H;)Lat/Y;
    :try_end_78
    .catchall {:try_start_12 .. :try_end_78} :catchall_e

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_7b
    move v1, v2

    move v2, v3

    goto :goto_75

    :cond_7e
    move v0, v1

    goto :goto_3c

    :cond_80
    move v2, v4

    goto :goto_3a

    :cond_82
    move v3, v5

    goto :goto_37
.end method

.method public a(Lat/B;)Ln/B;
    .registers 3
    .parameter

    .prologue
    .line 2041
    iget-object v0, p0, Lat/p;->G:Ln/A;

    if-eqz v0, :cond_b

    .line 2042
    iget-object v0, p0, Lat/p;->G:Ln/A;

    invoke-interface {v0, p1}, Ln/A;->a(Lat/B;)Ln/B;

    move-result-object v0

    .line 2045
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(IIII)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1532
    iget v0, p0, Lat/p;->d:I

    if-ne p1, v0, :cond_13

    iget v0, p0, Lat/p;->c:I

    if-ne p2, v0, :cond_13

    iget v0, p0, Lat/p;->i:I

    if-ne p3, v0, :cond_13

    iget v0, p0, Lat/p;->h:I

    if-ne p4, v0, :cond_13

    .line 1566
    :goto_12
    return-void

    .line 1537
    :cond_13
    iput p2, p0, Lat/p;->c:I

    .line 1538
    iput p1, p0, Lat/p;->d:I

    .line 1539
    iget v0, p0, Lat/p;->d:I

    iget v3, p0, Lat/p;->d:I

    mul-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x4

    iget v3, p0, Lat/p;->c:I

    iget v4, p0, Lat/p;->c:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v0, v3

    iput v0, p0, Lat/p;->e:I

    .line 1540
    iget v0, p0, Lat/p;->d:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lat/p;->f:I

    .line 1541
    iget v0, p0, Lat/p;->c:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lat/p;->g:I

    .line 1543
    iput p4, p0, Lat/p;->h:I

    .line 1544
    iput p3, p0, Lat/p;->i:I

    .line 1545
    div-int/lit8 v0, p3, 0x2

    iput v0, p0, Lat/p;->j:I

    .line 1546
    div-int/lit8 v0, p4, 0x2

    iput v0, p0, Lat/p;->k:I

    .line 1548
    iget v0, p0, Lat/p;->l:I

    .line 1549
    iget v3, p0, Lat/p;->m:I

    .line 1550
    iget v4, p0, Lat/p;->n:I

    .line 1551
    iget v5, p0, Lat/p;->o:I

    .line 1553
    iget v6, p0, Lat/p;->d:I

    invoke-static {v6}, Lat/p;->a(I)I

    move-result v6

    iput v6, p0, Lat/p;->l:I

    .line 1554
    iget v6, p0, Lat/p;->c:I

    invoke-static {v6}, Lat/p;->a(I)I

    move-result v6

    iput v6, p0, Lat/p;->m:I

    .line 1555
    invoke-static {p3}, Lat/p;->a(I)I

    move-result v6

    iput v6, p0, Lat/p;->n:I

    .line 1556
    invoke-static {p4}, Lat/p;->a(I)I

    move-result v6

    iput v6, p0, Lat/p;->o:I

    .line 1558
    iget-object v6, p0, Lat/p;->t:[Lat/P;

    if-eqz v6, :cond_77

    mul-int v6, v0, v3

    iget v7, p0, Lat/p;->l:I

    iget v8, p0, Lat/p;->m:I

    mul-int/2addr v7, v8

    if-eq v6, v7, :cond_80

    .line 1559
    :cond_77
    iget v6, p0, Lat/p;->l:I

    iget v7, p0, Lat/p;->m:I

    mul-int/2addr v6, v7

    new-array v6, v6, [Lat/P;

    iput-object v6, p0, Lat/p;->t:[Lat/P;

    .line 1561
    :cond_80
    iget v6, p0, Lat/p;->l:I

    if-ne v0, v6, :cond_88

    iget v0, p0, Lat/p;->m:I

    if-eq v3, v0, :cond_9f

    :cond_88
    move v0, v2

    :goto_89
    iget v3, p0, Lat/p;->n:I

    if-ne v4, v3, :cond_91

    iget v3, p0, Lat/p;->o:I

    if-eq v5, v3, :cond_a1

    :cond_91
    :goto_91
    invoke-direct {p0, v0, v2}, Lat/p;->a(ZZ)V

    .line 1563
    iget-object v0, p0, Lat/p;->a:Lat/D;

    invoke-virtual {v0}, Lat/D;->o()V

    .line 1564
    iput v1, p0, Lat/p;->w:I

    .line 1565
    iput-boolean v1, p0, Lat/p;->x:Z

    goto/16 :goto_12

    :cond_9f
    move v0, v1

    .line 1561
    goto :goto_89

    :cond_a1
    move v2, v1

    goto :goto_91
.end method

.method public a(LZ/d;)V
    .registers 3
    .parameter

    .prologue
    .line 389
    iget-object v0, p0, Lat/p;->a:Lat/D;

    invoke-virtual {v0, p1}, Lat/D;->a(LZ/d;)V

    .line 390
    return-void
.end method

.method public a(Lat/B;Landroid/graphics/Point;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 646
    invoke-virtual {p0, p1, p2}, Lat/p;->c(Lat/B;Landroid/graphics/Point;)V

    .line 647
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p0, Lat/p;->f:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 648
    iget v0, p2, Landroid/graphics/Point;->y:I

    iget v1, p0, Lat/p;->g:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Point;->y:I

    .line 649
    return-void
.end method

.method public a(Lat/B;Lat/Y;Lat/B;Landroid/graphics/Point;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 664
    invoke-virtual {p0, p1, p2, p3, p4}, Lat/p;->b(Lat/B;Lat/Y;Lat/B;Landroid/graphics/Point;)V

    .line 665
    iget v0, p4, Landroid/graphics/Point;->x:I

    iget v1, p0, Lat/p;->j:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/graphics/Point;->x:I

    .line 666
    iget v0, p4, Landroid/graphics/Point;->y:I

    iget v1, p0, Lat/p;->k:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/graphics/Point;->y:I

    .line 667
    return-void
.end method

.method public declared-synchronized a(Lat/H;)V
    .registers 4
    .parameter

    .prologue
    .line 434
    monitor-enter p0

    if-nez p1, :cond_5

    .line 451
    :goto_3
    monitor-exit p0

    return-void

    .line 437
    :cond_5
    :try_start_5
    iput-object p1, p0, Lat/p;->b:Lat/H;

    .line 440
    invoke-virtual {p0}, Lat/p;->d()Lat/B;

    move-result-object v0

    invoke-virtual {p0, v0}, Lat/p;->e(Lat/B;)I

    move-result v0

    .line 441
    invoke-virtual {p1}, Lat/H;->b()Lat/Y;

    move-result-object v1

    invoke-virtual {v1}, Lat/Y;->a()I

    move-result v1

    if-le v1, v0, :cond_23

    .line 443
    invoke-static {v0}, Lat/Y;->b(I)Lat/Y;

    move-result-object v0

    invoke-virtual {p1, v0}, Lat/H;->a(Lat/Y;)Lat/H;

    move-result-object v0

    iput-object v0, p0, Lat/p;->b:Lat/H;

    .line 446
    :cond_23
    invoke-direct {p0}, Lat/p;->x()V

    .line 447
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lat/p;->a(ZZ)V

    .line 448
    iget-object v0, p0, Lat/p;->a:Lat/D;

    invoke-virtual {v0}, Lat/D;->o()V

    .line 449
    const/4 v0, 0x0

    iput v0, p0, Lat/p;->w:I

    .line 450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lat/p;->x:Z
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_37

    goto :goto_3

    .line 434
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lat/Q;)V
    .registers 2
    .parameter

    .prologue
    .line 1856
    iput-object p1, p0, Lat/p;->u:Lat/Q;

    .line 1857
    return-void
.end method

.method public declared-synchronized a(Lat/Y;)V
    .registers 3
    .parameter

    .prologue
    .line 428
    monitor-enter p0

    if-eqz p1, :cond_c

    .line 429
    :try_start_3
    iget-object v0, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v0, p1}, Lat/H;->a(Lat/Y;)Lat/H;

    move-result-object v0

    invoke-virtual {p0, v0}, Lat/p;->a(Lat/H;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 431
    :cond_c
    monitor-exit p0

    return-void

    .line 428
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lat/k;)V
    .registers 3
    .parameter

    .prologue
    .line 1866
    iget-object v0, p0, Lat/p;->a:Lat/D;

    invoke-virtual {v0, p1}, Lat/D;->a(Lat/k;)V

    .line 1867
    return-void
.end method

.method public a(Lat/m;)V
    .registers 3
    .parameter

    .prologue
    .line 1861
    iget-object v0, p0, Lat/p;->a:Lat/D;

    invoke-virtual {v0, p1}, Lat/D;->a(Lat/m;)V

    .line 1862
    return-void
.end method

.method public a(Lat/q;)V
    .registers 3
    .parameter

    .prologue
    .line 1983
    iget-object v0, p0, Lat/p;->A:Lat/t;

    invoke-virtual {v0, p1}, Lat/t;->a(Lat/q;)V

    .line 1984
    return-void
.end method

.method public a(Lat/r;)V
    .registers 2
    .parameter

    .prologue
    .line 1987
    iput-object p1, p0, Lat/p;->B:Lat/r;

    .line 1988
    return-void
.end method

.method public a(Lat/w;)V
    .registers 2
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lat/p;->E:Lat/w;

    .line 398
    return-void
.end method

.method public a(Ln/A;)V
    .registers 2
    .parameter

    .prologue
    .line 2036
    iput-object p1, p0, Lat/p;->G:Ln/A;

    .line 2037
    return-void
.end method

.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 1496
    if-eqz p1, :cond_5

    .line 1497
    invoke-virtual {p0}, Lat/p;->f()V

    .line 1499
    :cond_5
    iget-object v0, p0, Lat/p;->a:Lat/D;

    invoke-virtual {v0, p1}, Lat/D;->c(Z)V

    .line 1500
    return-void
.end method

.method public a(LS/e;ZZZZ)Z
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 890
    iget v0, p0, Lat/p;->c:I

    if-eqz v0, :cond_8

    iget v0, p0, Lat/p;->d:I

    if-nez v0, :cond_10

    .line 891
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Map has zero size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 894
    :cond_10
    if-eqz p1, :cond_17

    .line 895
    iget-object v0, p0, Lat/p;->A:Lat/t;

    invoke-virtual {v0, p3, p4, p0}, Lat/t;->a(ZZLat/p;)V

    .line 898
    :cond_17
    invoke-direct {p0, p1, p2, p5}, Lat/p;->a(LS/e;ZZ)Z

    move-result v0

    return v0
.end method

.method public a(Lat/B;Z)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1753
    iget-object v0, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v0}, Lat/H;->b()Lat/Y;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lat/p;->a(Lat/B;ZLat/Y;)Z

    move-result v0

    return v0
.end method

.method public a(Lat/B;ZLat/Y;)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1762
    iget-object v1, p0, Lat/p;->a:Lat/D;

    invoke-virtual {p0}, Lat/p;->k()B

    move-result v2

    invoke-static {v2, p1, p3}, Lat/P;->a(BLat/B;Lat/Y;)Lat/P;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v0, p2}, Lat/D;->a(Lat/P;IZZ)Lat/I;

    move-result-object v1

    .line 1766
    if-eqz p2, :cond_17

    invoke-virtual {v1}, Lat/I;->m()Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_17
    invoke-virtual {v1}, Lat/I;->e()Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1d
    const/4 v0, 0x1

    :cond_1e
    return v0
.end method

.method public a(Lat/P;)Z
    .registers 3
    .parameter

    .prologue
    .line 1434
    invoke-direct {p0, p1}, Lat/p;->b(Lat/P;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lat/p;->c(Lat/P;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public b(Lat/H;)I
    .registers 7
    .parameter

    .prologue
    .line 1642
    invoke-virtual {p1}, Lat/H;->a()Lat/B;

    move-result-object v0

    .line 1643
    invoke-virtual {p1}, Lat/H;->b()Lat/Y;

    move-result-object v1

    .line 1644
    iget v2, p0, Lat/p;->j:I

    iget v3, p0, Lat/p;->k:I

    invoke-virtual {v0, v2, v3, v1}, Lat/B;->a(IILat/Y;)Lat/B;

    move-result-object v2

    .line 1645
    iget v3, p0, Lat/p;->j:I

    neg-int v3, v3

    iget v4, p0, Lat/p;->k:I

    neg-int v4, v4

    invoke-virtual {v0, v3, v4, v1}, Lat/B;->a(IILat/Y;)Lat/B;

    move-result-object v0

    .line 1646
    invoke-virtual {v0}, Lat/B;->c()I

    move-result v0

    invoke-virtual {v2}, Lat/B;->c()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public b(II)Lat/B;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 735
    iget-object v0, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v0}, Lat/H;->a()Lat/B;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lat/p;->a(Lat/B;II)Lat/B;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b()Lat/H;
    .registers 2

    .prologue
    .line 454
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lat/p;->b:Lat/H;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(I)V
    .registers 3
    .parameter

    .prologue
    .line 1625
    invoke-virtual {p0}, Lat/p;->v()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c

    .line 1627
    :cond_9
    invoke-static {p1}, Lat/Y;->c(I)V

    .line 1633
    :cond_c
    iget-object v0, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v0, p1}, Lat/H;->a(I)Lat/H;

    move-result-object v0

    invoke-virtual {p0, v0}, Lat/p;->a(Lat/H;)V

    .line 1634
    return-void
.end method

.method public declared-synchronized b(Lat/B;)V
    .registers 3
    .parameter

    .prologue
    .line 422
    monitor-enter p0

    if-eqz p1, :cond_c

    .line 423
    :try_start_3
    iget-object v0, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v0, p1}, Lat/H;->a(Lat/B;)Lat/H;

    move-result-object v0

    invoke-virtual {p0, v0}, Lat/p;->a(Lat/H;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 425
    :cond_c
    monitor-exit p0

    return-void

    .line 422
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lat/B;Landroid/graphics/Point;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 658
    invoke-virtual {p0, p1, p2}, Lat/p;->c(Lat/B;Landroid/graphics/Point;)V

    .line 659
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p0, Lat/p;->j:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 660
    iget v0, p2, Landroid/graphics/Point;->y:I

    iget v1, p0, Lat/p;->k:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Point;->y:I

    .line 661
    return-void
.end method

.method public b(Lat/B;Lat/Y;Lat/B;Landroid/graphics/Point;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 677
    invoke-virtual {p1, p2}, Lat/B;->a(Lat/Y;)I

    move-result v3

    .line 678
    invoke-virtual {p1, p2}, Lat/B;->b(Lat/Y;)I

    move-result v4

    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    move-object v5, p4

    .line 679
    invoke-direct/range {v0 .. v5}, Lat/p;->a(Lat/B;Lat/Y;IILandroid/graphics/Point;)V

    .line 680
    return-void
.end method

.method public b(Lat/k;)V
    .registers 3
    .parameter

    .prologue
    .line 1871
    iget-object v0, p0, Lat/p;->a:Lat/D;

    invoke-virtual {v0, p1}, Lat/D;->b(Lat/k;)V

    .line 1872
    return-void
.end method

.method public c(I)I
    .registers 3
    .parameter

    .prologue
    .line 1997
    iget-object v0, p0, Lat/p;->B:Lat/r;

    if-eqz v0, :cond_b

    .line 1998
    iget-object v0, p0, Lat/p;->B:Lat/r;

    invoke-interface {v0, p1}, Lat/r;->a(I)I

    move-result v0

    .line 2000
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v0}, Lat/H;->b()Lat/Y;

    move-result-object v0

    invoke-virtual {v0, p1}, Lat/Y;->a(I)I

    move-result v0

    goto :goto_a
.end method

.method public c(Lat/H;)I
    .registers 7
    .parameter

    .prologue
    .line 1685
    invoke-virtual {p1}, Lat/H;->a()Lat/B;

    move-result-object v0

    .line 1686
    invoke-virtual {p1}, Lat/H;->b()Lat/Y;

    move-result-object v1

    .line 1687
    iget v2, p0, Lat/p;->j:I

    iget v3, p0, Lat/p;->k:I

    invoke-virtual {v0, v2, v3, v1}, Lat/B;->a(IILat/Y;)Lat/B;

    move-result-object v2

    .line 1688
    iget v3, p0, Lat/p;->j:I

    neg-int v3, v3

    iget v4, p0, Lat/p;->k:I

    neg-int v4, v4

    invoke-virtual {v0, v3, v4, v1}, Lat/B;->a(IILat/Y;)Lat/B;

    move-result-object v0

    .line 1689
    invoke-virtual {v2}, Lat/B;->e()I

    move-result v1

    invoke-virtual {v0}, Lat/B;->e()I

    move-result v0

    sub-int v0, v1, v0

    .line 1690
    if-gez v0, :cond_2a

    .line 1691
    const v1, 0x15752a00

    add-int/2addr v0, v1

    .line 1693
    :cond_2a
    return v0
.end method

.method public c(Lat/B;)Landroid/graphics/Point;
    .registers 3
    .parameter

    .prologue
    .line 670
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 671
    invoke-virtual {p0, p1, v0}, Lat/p;->c(Lat/B;Landroid/graphics/Point;)V

    .line 672
    return-object v0
.end method

.method public declared-synchronized c()Lat/Y;
    .registers 2

    .prologue
    .line 458
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v0}, Lat/H;->b()Lat/Y;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1490
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v0}, Lat/H;->a()Lat/B;

    move-result-object v0

    iget-object v1, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v1}, Lat/H;->b()Lat/Y;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lat/B;->a(IILat/Y;)Lat/B;

    move-result-object v0

    invoke-virtual {p0, v0}, Lat/p;->b(Lat/B;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 1492
    monitor-exit p0

    return-void

    .line 1490
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Lat/B;Landroid/graphics/Point;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 683
    iget-object v0, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v0}, Lat/H;->b()Lat/Y;

    move-result-object v2

    iget v3, p0, Lat/p;->p:I

    iget v4, p0, Lat/p;->q:I

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lat/p;->a(Lat/B;Lat/Y;IILandroid/graphics/Point;)V

    .line 685
    return-void
.end method

.method public declared-synchronized d()Lat/B;
    .registers 2

    .prologue
    .line 462
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v0}, Lat/H;->a()Lat/B;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1528
    invoke-virtual {p0, p1, p2, p1, p2}, Lat/p;->a(IIII)V

    .line 1529
    return-void
.end method

.method public declared-synchronized d(Lat/B;)V
    .registers 6
    .parameter

    .prologue
    .line 867
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v0}, Lat/H;->a()Lat/B;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1a

    move-result-object v1

    .line 869
    :try_start_7
    invoke-virtual {p0, p1}, Lat/p;->b(Lat/B;)V

    .line 870
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lat/p;->a(LS/e;ZZ)Z
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_15

    .line 872
    :try_start_10
    invoke-virtual {p0, v1}, Lat/p;->b(Lat/B;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_1a

    .line 874
    monitor-exit p0

    return-void

    .line 872
    :catchall_15
    move-exception v0

    :try_start_16
    invoke-virtual {p0, v1}, Lat/p;->b(Lat/B;)V

    throw v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_1a

    .line 867
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()I
    .registers 4

    .prologue
    .line 470
    invoke-virtual {p0}, Lat/p;->d()Lat/B;

    move-result-object v0

    invoke-virtual {p0, v0}, Lat/p;->e(Lat/B;)I

    move-result v0

    .line 471
    invoke-virtual {p0}, Lat/p;->c()Lat/Y;

    move-result-object v1

    invoke-virtual {v1}, Lat/Y;->a()I

    move-result v1

    .line 472
    const/16 v2, 0x1388

    div-int/2addr v2, v0

    .line 473
    sub-int/2addr v0, v1

    .line 474
    mul-int/2addr v0, v2

    .line 475
    return v0
.end method

.method public e(Lat/B;)I
    .registers 4
    .parameter

    .prologue
    .line 1901
    invoke-virtual {p0}, Lat/p;->o()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1906
    const/16 v0, 0x16

    .line 1918
    :goto_8
    return v0

    .line 1909
    :cond_9
    iget-object v0, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v0}, Lat/H;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    .line 1910
    const/16 v0, 0x10

    goto :goto_8

    .line 1915
    :cond_15
    invoke-static {}, Lat/I;->w()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_20

    const/4 v0, 0x1

    .line 1918
    :goto_1d
    add-int/lit8 v0, v0, 0x14

    goto :goto_8

    .line 1915
    :cond_20
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public declared-synchronized f()V
    .registers 6

    .prologue
    const/4 v0, 0x2

    .line 779
    monitor-enter p0

    :try_start_2
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xe

    invoke-direct {v2, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 780
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 782
    const/4 v1, 0x2

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 783
    iget-object v1, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v1}, Lat/H;->a()Lat/B;

    move-result-object v1

    invoke-static {v1, v3}, Lat/B;->a(Lat/B;Ljava/io/DataOutput;)V

    .line 784
    iget-object v1, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v1}, Lat/H;->b()Lat/Y;

    move-result-object v1

    invoke-virtual {v1}, Lat/Y;->a()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 786
    const/4 v1, 0x0

    .line 787
    iget-object v4, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v4}, Lat/H;->e()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 788
    const/4 v0, 0x1

    .line 792
    :cond_32
    :goto_32
    iget-object v1, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v1}, Lat/H;->g()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 793
    or-int/lit8 v0, v0, 0x4

    .line 795
    :cond_3c
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 797
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 800
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v1

    const-string v2, "Map info"

    invoke-interface {v1, v2, v0}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z
    :try_end_50
    .catchall {:try_start_2 .. :try_end_50} :catchall_63
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_50} :catch_5c

    .line 806
    :goto_50
    monitor-exit p0

    return-void

    .line 789
    :cond_52
    :try_start_52
    iget-object v4, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v4}, Lat/H;->f()Z
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_63
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_57} :catch_5c

    move-result v4

    if-nez v4, :cond_32

    move v0, v1

    goto :goto_32

    .line 802
    :catch_5c
    move-exception v0

    .line 804
    :try_start_5d
    const-string v1, "MAP"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_63

    goto :goto_50

    .line 779
    :catchall_63
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()[Lat/P;
    .registers 2

    .prologue
    .line 882
    iget-object v0, p0, Lat/p;->t:[Lat/P;

    return-object v0
.end method

.method public h()V
    .registers 2

    .prologue
    .line 1503
    iget-boolean v0, p0, Lat/p;->v:Z

    if-eqz v0, :cond_c

    .line 1504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lat/p;->v:Z

    .line 1505
    iget-object v0, p0, Lat/p;->a:Lat/D;

    invoke-virtual {v0}, Lat/D;->p()V

    .line 1507
    :cond_c
    return-void
.end method

.method public i()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1510
    iget-boolean v0, p0, Lat/p;->v:Z

    if-nez v0, :cond_11

    .line 1511
    iput-boolean v1, p0, Lat/p;->v:Z

    .line 1516
    const/4 v0, 0x0

    iput-object v0, p0, Lat/p;->F:Ljava/lang/String;

    .line 1517
    iput-boolean v1, p0, Lat/p;->D:Z

    .line 1519
    iget-object v0, p0, Lat/p;->a:Lat/D;

    invoke-virtual {v0}, Lat/D;->q()V

    .line 1521
    :cond_11
    return-void
.end method

.method public j()V
    .registers 2

    .prologue
    .line 1524
    iget-object v0, p0, Lat/p;->a:Lat/D;

    invoke-virtual {v0}, Lat/D;->r()V

    .line 1525
    return-void
.end method

.method public k()B
    .registers 4

    .prologue
    const/16 v0, 0x14

    .line 1584
    invoke-direct {p0}, Lat/p;->y()B

    move-result v1

    .line 1585
    if-ne v1, v0, :cond_1c

    iget-object v2, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v2}, Lat/H;->h()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1589
    :goto_10
    iget-object v1, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v1}, Lat/H;->g()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1590
    or-int/lit8 v0, v0, -0x80

    int-to-byte v0, v0

    .line 1592
    :cond_1b
    return v0

    :cond_1c
    move v0, v1

    goto :goto_10
.end method

.method public l()B
    .registers 2

    .prologue
    .line 1602
    iget-object v0, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v0}, Lat/H;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1603
    const/16 v0, 0x12

    .line 1607
    :goto_a
    return v0

    .line 1604
    :cond_b
    iget-object v0, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v0}, Lat/H;->h()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1605
    const/16 v0, 0x14

    goto :goto_a

    .line 1607
    :cond_16
    const/4 v0, 0x2

    goto :goto_a
.end method

.method public declared-synchronized m()I
    .registers 2

    .prologue
    .line 1697
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lat/p;->b:Lat/H;

    invoke-virtual {p0, v0}, Lat/p;->b(Lat/H;)I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized n()I
    .registers 2

    .prologue
    .line 1700
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lat/p;->b:Lat/H;

    invoke-virtual {p0, v0}, Lat/p;->c(Lat/H;)I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public o()Z
    .registers 2

    .prologue
    .line 1840
    iget-object v0, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v0}, Lat/H;->e()Z

    move-result v0

    return v0
.end method

.method public p()Z
    .registers 2

    .prologue
    .line 1844
    iget-object v0, p0, Lat/p;->b:Lat/H;

    invoke-virtual {v0}, Lat/H;->h()Z

    move-result v0

    return v0
.end method

.method public q()I
    .registers 2

    .prologue
    .line 1875
    iget v0, p0, Lat/p;->c:I

    return v0
.end method

.method public r()I
    .registers 2

    .prologue
    .line 1879
    iget v0, p0, Lat/p;->d:I

    return v0
.end method

.method public s()I
    .registers 2

    .prologue
    .line 1890
    iget v0, p0, Lat/p;->h:I

    return v0
.end method

.method public t()I
    .registers 2

    .prologue
    .line 1894
    iget v0, p0, Lat/p;->i:I

    return v0
.end method

.method public u()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5

    .prologue
    .line 2027
    invoke-virtual {p0}, Lat/p;->d()Lat/B;

    move-result-object v0

    invoke-virtual {p0}, Lat/p;->m()I

    move-result v1

    invoke-virtual {p0}, Lat/p;->n()I

    move-result v2

    invoke-virtual {p0}, Lat/p;->c()Lat/Y;

    move-result-object v3

    invoke-virtual {v3}, Lat/Y;->a()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lat/C;->a(Lat/B;III)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public v()Z
    .registers 2

    .prologue
    .line 2032
    const/4 v0, 0x0

    return v0
.end method
