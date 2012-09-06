.class Lat/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lat/K;


# instance fields
.field private final a:Lcom/google/googlenav/common/io/j;

.field private final b:Ljava/lang/String;

.field private final c:Lat/D;

.field private d:I

.field private e:I

.field private f:I

.field private final g:Lat/z;

.field private final h:Ljava/util/Vector;

.field private final i:Ljava/util/Hashtable;

.field private j:I

.field private k:I

.field private l:Z

.field private m:I

.field private n:J

.field private o:J

.field private p:Z


# direct methods
.method constructor <init>(Lat/D;Ljava/lang/String;II)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    iput-object v0, p0, Lat/x;->a:Lcom/google/googlenav/common/io/j;

    .line 131
    iput v1, p0, Lat/x;->e:I

    .line 134
    iput v1, p0, Lat/x;->f:I

    .line 144
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lat/x;->h:Ljava/util/Vector;

    .line 148
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lat/x;->i:Ljava/util/Hashtable;

    .line 152
    iput v2, p0, Lat/x;->j:I

    .line 155
    iput v2, p0, Lat/x;->k:I

    .line 229
    iput-object p1, p0, Lat/x;->c:Lat/D;

    .line 230
    iput-object p2, p0, Lat/x;->b:Ljava/lang/String;

    .line 231
    add-int/lit16 v0, p3, -0x7d0

    iput v0, p0, Lat/x;->m:I

    .line 232
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    .line 233
    iput-wide v0, p0, Lat/x;->n:J

    .line 234
    const-wide/16 v2, 0x841

    add-long/2addr v0, v2

    iput-wide v0, p0, Lat/x;->o:J

    .line 235
    add-int/lit8 v0, p4, -0x1

    iput v0, p0, Lat/x;->d:I

    .line 237
    iput-boolean v4, p0, Lat/x;->l:Z

    .line 238
    invoke-direct {p0}, Lat/x;->j()V

    .line 239
    iput-boolean v4, p0, Lat/x;->p:Z

    .line 240
    new-instance v0, Lat/z;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lat/z;-><init>(Lat/x;Lat/y;)V

    iput-object v0, p0, Lat/x;->g:Lat/z;

    .line 241
    return-void
.end method

.method private a(Lat/f;Lat/P;)Lat/I;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1048
    invoke-virtual {p0, p1}, Lat/x;->a(Lat/f;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lat/f;->a(Ljava/lang/String;Lat/P;)Lat/I;

    move-result-object v0

    .line 1050
    if-nez v0, :cond_20

    .line 1051
    monitor-enter p0

    .line 1052
    :try_start_b
    invoke-virtual {p1}, Lat/f;->c()I

    move-result v1

    .line 1053
    invoke-direct {p0, v1}, Lat/x;->b(I)I

    move-result v2

    invoke-direct {p0, p1, v2}, Lat/x;->a(Lat/f;I)V

    .line 1054
    iget-object v2, p0, Lat/x;->a:Lcom/google/googlenav/common/io/j;

    invoke-virtual {p0, v1}, Lat/x;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    .line 1057
    monitor-exit p0

    .line 1060
    :cond_20
    return-object v0

    .line 1057
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_21

    throw v0
.end method

.method static synthetic a(Lat/x;Lat/f;Lat/P;)Lat/I;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lat/x;->a(Lat/f;Lat/P;)Lat/I;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lat/x;Lat/P;)Lat/e;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lat/x;->b(Lat/P;)Lat/e;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Hashtable;I)Lat/f;
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 822
    new-instance v3, Lat/f;

    invoke-direct {v3}, Lat/f;-><init>()V

    .line 823
    const/4 v1, 0x1

    .line 824
    iget-object v0, p0, Lat/x;->c:Lat/D;

    invoke-virtual {v0}, Lat/D;->i()[Lat/P;

    move-result-object v4

    .line 827
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_10
    if-ltz v2, :cond_41

    .line 829
    aget-object v0, v4, v2

    .line 831
    iget-object v5, p0, Lat/x;->i:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_42

    .line 832
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/I;

    .line 833
    invoke-virtual {v0}, Lat/I;->e()Z

    move-result v5

    if-eqz v5, :cond_42

    .line 834
    new-instance v5, Lat/e;

    invoke-direct {v5, v0}, Lat/e;-><init>(Lat/I;)V

    .line 835
    invoke-virtual {v5}, Lat/e;->c()I

    move-result v0

    .line 836
    add-int v6, v1, v0

    if-gt v6, p2, :cond_42

    invoke-virtual {v3, v5}, Lat/f;->a(Lat/e;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 838
    add-int/2addr v0, v1

    .line 828
    :goto_3c
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v0

    goto :goto_10

    .line 844
    :cond_41
    return-object v3

    :cond_42
    move v0, v1

    goto :goto_3c
.end method

.method private a(Lat/f;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 880
    invoke-virtual {p1}, Lat/f;->d()Z

    move-result v0

    if-nez v0, :cond_7

    .line 894
    :cond_6
    return-void

    .line 884
    :cond_7
    invoke-virtual {p1}, Lat/f;->a()I

    move-result v1

    .line 886
    const/4 v0, 0x1

    iput-boolean v0, p0, Lat/x;->l:Z

    .line 887
    invoke-virtual {p1}, Lat/f;->e()V

    .line 888
    iget-object v0, p0, Lat/x;->h:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 890
    const/4 v0, 0x0

    :goto_17
    if-ge v0, v1, :cond_6

    .line 891
    invoke-virtual {p1, v0}, Lat/f;->a(I)Lat/e;

    move-result-object v2

    .line 892
    iget-object v3, p0, Lat/x;->i:Ljava/util/Hashtable;

    invoke-virtual {v2}, Lat/e;->a()Lat/P;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    add-int/lit8 v0, v0, 0x1

    goto :goto_17
.end method

.method private declared-synchronized a(Lat/f;[BI)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 780
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lat/x;->k:I

    if-nez v0, :cond_f

    .line 781
    iget-object v0, p0, Lat/x;->a:Lcom/google/googlenav/common/io/j;

    const/4 v1, 0x0

    new-array v1, v1, [B

    iget-object v2, p0, Lat/x;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/common/io/j;->b([BLjava/lang/String;)I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_21

    .line 785
    :cond_f
    :try_start_f
    invoke-virtual {p0, p3}, Lat/x;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p3, p2}, Lat/f;->a(Ljava/lang/String;I[B)V

    .line 787
    invoke-direct {p0, p1}, Lat/x;->b(Lat/f;)V
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_21
    .catch Lcom/google/googlenav/common/io/k; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_19} :catch_24

    .line 794
    :goto_19
    monitor-exit p0

    return-void

    .line 788
    :catch_1b
    move-exception v0

    .line 789
    const/4 v1, 0x0

    :try_start_1d
    invoke-direct {p0, v0, v1}, Lat/x;->a(Lcom/google/googlenav/common/io/k;Z)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_19

    .line 780
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0

    .line 790
    :catch_24
    move-exception v0

    .line 792
    :try_start_25
    const-string v1, "FLASH"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_21

    goto :goto_19
.end method

.method private a(Lcom/google/googlenav/common/io/k;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 396
    invoke-virtual {p0}, Lat/x;->f()I

    move-result v1

    .line 397
    invoke-virtual {p0}, Lat/x;->a()I

    move-result v2

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FLASH "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "B "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "R"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_48

    const-string v0, " catalog"

    :goto_2b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    invoke-virtual {p1}, Lcom/google/googlenav/common/io/k;->a()I

    move-result v0

    const/4 v3, -0x2

    if-ne v0, v3, :cond_47

    .line 411
    invoke-direct {p0}, Lat/x;->k()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 412
    add-int/lit16 v0, v1, -0x3e8

    iput v0, p0, Lat/x;->m:I

    .line 417
    :cond_47
    :goto_47
    return-void

    .line 399
    :cond_48
    const-string v0, ""

    goto :goto_2b

    .line 414
    :cond_4b
    iput v2, p0, Lat/x;->d:I

    goto :goto_47
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 493
    if-nez p1, :cond_4

    .line 504
    :cond_3
    :goto_3
    return v1

    :cond_4
    move v0, v1

    .line 497
    :goto_5
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 498
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 499
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 500
    const/4 v1, 0x1

    goto :goto_3

    .line 497
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private b(I)I
    .registers 5
    .parameter

    .prologue
    .line 517
    iget-object v0, p0, Lat/x;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 519
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v2, :cond_1c

    .line 520
    iget-object v0, p0, Lat/x;->h:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/f;

    .line 521
    invoke-virtual {v0}, Lat/f;->c()I

    move-result v0

    if-ne v0, p1, :cond_19

    move v0, v1

    .line 526
    :goto_18
    return v0

    .line 519
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 526
    :cond_1c
    const/4 v0, -0x1

    goto :goto_18
.end method

.method private b(Lat/P;)Lat/e;
    .registers 3
    .parameter

    .prologue
    .line 903
    iget-object v0, p0, Lat/x;->i:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/f;

    .line 905
    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {v0, p1}, Lat/f;->a(Lat/P;)Lat/e;

    move-result-object v0

    goto :goto_b
.end method

.method private b(Lat/f;)V
    .registers 6
    .parameter

    .prologue
    .line 853
    invoke-virtual {p1}, Lat/f;->a()I

    move-result v1

    .line 855
    const/4 v0, 0x1

    iput-boolean v0, p0, Lat/x;->l:Z

    .line 856
    iget v0, p0, Lat/x;->j:I

    invoke-virtual {p1}, Lat/f;->c()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lat/x;->j:I

    .line 857
    iget-object v0, p0, Lat/x;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 859
    const/4 v0, 0x0

    :goto_19
    if-ge v0, v1, :cond_2b

    .line 860
    invoke-virtual {p1, v0}, Lat/f;->a(I)Lat/e;

    move-result-object v2

    .line 861
    iget-object v3, p0, Lat/x;->i:Ljava/util/Hashtable;

    invoke-virtual {v2}, Lat/e;->a()Lat/P;

    move-result-object v2

    invoke-virtual {v3, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 863
    :cond_2b
    return-void
.end method

.method private c(I)Lat/f;
    .registers 3
    .parameter

    .prologue
    .line 552
    iget-object v0, p0, Lat/x;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/f;

    return-object v0
.end method

.method private declared-synchronized j()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xa

    .line 288
    monitor-enter p0

    .line 291
    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lat/x;->l:Z

    .line 292
    iget-object v0, p0, Lat/x;->a:Lcom/google/googlenav/common/io/j;

    iget-object v3, p0, Lat/x;->b:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/google/googlenav/common/io/j;->d(Ljava/lang/String;)[B

    move-result-object v3

    .line 294
    if-eqz v3, :cond_60

    .line 297
    invoke-static {v3}, Lcom/google/googlenav/common/io/i;->a([B)Ljava/io/DataInput;

    move-result-object v4

    .line 299
    invoke-interface {v4}, Ljava/io/DataInput;->readInt()I
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_5a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_18} :catch_5d

    move-result v0

    .line 300
    if-eq v0, v1, :cond_29

    .line 323
    :goto_1b
    :try_start_1b
    iget-boolean v2, p0, Lat/x;->l:Z

    if-eqz v2, :cond_22

    .line 325
    invoke-virtual {p0}, Lat/x;->c()V

    .line 327
    :cond_22
    if-eq v0, v1, :cond_27

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lat/x;->l:Z
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_5a

    .line 331
    :cond_27
    monitor-exit p0

    return-void

    .line 303
    :cond_29
    :try_start_29
    invoke-interface {v4}, Ljava/io/DataInput;->readBoolean()Z

    .line 304
    invoke-interface {v4}, Ljava/io/DataInput;->readShort()S

    move-result v5

    iput v5, p0, Lat/x;->e:I

    .line 305
    invoke-interface {v4}, Ljava/io/DataInput;->readShort()S

    move-result v5

    iput v5, p0, Lat/x;->f:I

    .line 306
    invoke-interface {v4}, Ljava/io/DataInput;->readInt()I

    move-result v5

    .line 310
    :goto_3c
    if-ge v2, v5, :cond_48

    .line 311
    invoke-static {v4}, Lat/f;->a(Ljava/io/DataInput;)Lat/f;

    move-result-object v6

    .line 312
    invoke-direct {p0, v6}, Lat/x;->b(Lat/f;)V

    .line 310
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 315
    :cond_48
    array-length v2, v3

    iput v2, p0, Lat/x;->k:I

    .line 316
    const/4 v2, 0x0

    iput-boolean v2, p0, Lat/x;->l:Z
    :try_end_4e
    .catchall {:try_start_29 .. :try_end_4e} :catchall_5a
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_4e} :catch_4f

    goto :goto_1b

    .line 319
    :catch_4f
    move-exception v2

    move-object v7, v2

    move v2, v0

    move-object v0, v7

    .line 320
    :goto_53
    :try_start_53
    const-string v3, "FLASH"

    invoke-static {v3, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_5a

    move v0, v2

    goto :goto_1b

    .line 288
    :catchall_5a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 319
    :catch_5d
    move-exception v0

    move v2, v1

    goto :goto_53

    :cond_60
    move v0, v1

    goto :goto_1b
.end method

.method private k()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lat/x;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Test"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 808
    :try_start_16
    iget-object v2, p0, Lat/x;->a:Lcom/google/googlenav/common/io/j;

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-interface {v2, v3, v1}, Lcom/google/googlenav/common/io/j;->a([BLjava/lang/String;)I

    .line 809
    iget-object v2, p0, Lat/x;->a:Lcom/google/googlenav/common/io/j;

    invoke-interface {v2, v1}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z
    :try_end_23
    .catch Lcom/google/googlenav/common/io/k; {:try_start_16 .. :try_end_23} :catch_25

    .line 813
    const/4 v0, 0x1

    :goto_24
    return v0

    .line 810
    :catch_25
    move-exception v1

    goto :goto_24
.end method


# virtual methods
.method a()I
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lat/x;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method a(Ljava/util/Hashtable;)I
    .registers 21
    .parameter

    .prologue
    .line 590
    const/4 v2, 0x2

    new-array v12, v2, [I

    fill-array-data v12, :array_202

    .line 591
    const/4 v2, 0x2

    new-array v13, v2, [Lat/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v13, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v13, v2

    .line 593
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v14

    .line 598
    monitor-enter p0

    .line 601
    :try_start_1e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lat/x;->p:Z

    if-eqz v2, :cond_2c

    .line 602
    invoke-virtual/range {p0 .. p0}, Lat/x;->d()Z

    .line 603
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lat/x;->p:Z

    .line 606
    :cond_2c
    move-object/from16 v0, p0

    iget v2, v0, Lat/x;->m:I

    invoke-virtual/range {p0 .. p0}, Lat/x;->f()I

    move-result v3

    sub-int v11, v2, v3

    .line 610
    const v2, 0x11940

    if-lt v11, v2, :cond_45

    invoke-virtual/range {p0 .. p0}, Lat/x;->a()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lat/x;->d:I

    if-lt v2, v3, :cond_db

    .line 612
    :cond_45
    const/4 v10, -0x1

    .line 613
    const/4 v8, -0x1

    .line 614
    const-wide/high16 v6, -0x8000

    .line 615
    const-wide/high16 v2, -0x8000

    .line 616
    invoke-virtual/range {p0 .. p0}, Lat/x;->a()I

    move-result v16

    .line 617
    const/4 v9, 0x0

    :goto_50
    move/from16 v0, v16

    if-ge v9, v0, :cond_7a

    .line 618
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lat/x;->c(I)Lat/f;

    move-result-object v4

    .line 619
    invoke-virtual {v4, v14, v15}, Lat/f;->a(J)J

    move-result-wide v4

    .line 622
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_68

    cmp-long v17, v4, v2

    if-lez v17, :cond_1ff

    .line 623
    :cond_68
    const/4 v2, -0x1

    if-eq v10, v2, :cond_6f

    cmp-long v2, v4, v6

    if-lez v2, :cond_77

    :cond_6f
    move-wide v2, v6

    move-wide v6, v4

    move v4, v10

    move v10, v9

    .line 617
    :goto_73
    add-int/lit8 v9, v9, 0x1

    move v8, v4

    goto :goto_50

    :cond_77
    move-wide v2, v4

    move v4, v9

    .line 630
    goto :goto_73

    .line 635
    :cond_7a
    const/4 v2, -0x1

    if-eq v10, v2, :cond_1fc

    .line 636
    const/4 v2, 0x0

    aput v10, v12, v2

    .line 637
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lat/x;->c(I)Lat/f;

    move-result-object v3

    aput-object v3, v13, v2

    .line 638
    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-virtual {v2}, Lat/f;->b()I

    move-result v2

    add-int/2addr v2, v11

    .line 641
    :goto_91
    const v3, 0x11940

    if-ge v2, v3, :cond_ad

    const/4 v3, -0x1

    if-eq v8, v3, :cond_ad

    .line 643
    const/4 v3, 0x1

    aput v8, v12, v3

    .line 644
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lat/x;->c(I)Lat/f;

    move-result-object v4

    aput-object v4, v13, v3

    .line 645
    const/4 v3, 0x1

    aget-object v3, v13, v3

    invoke-virtual {v3}, Lat/f;->b()I

    move-result v3

    add-int/2addr v2, v3

    .line 648
    :cond_ad
    const v3, 0x11940

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 652
    :goto_b4
    monitor-exit p0
    :try_end_b5
    .catchall {:try_start_1e .. :try_end_b5} :catchall_df

    .line 654
    const/16 v3, 0x1770

    if-ge v2, v3, :cond_e2

    .line 660
    const/4 v2, 0x0

    aget-object v2, v13, v2

    if-eqz v2, :cond_d9

    .line 662
    move-object/from16 v0, p0

    iget-object v2, v0, Lat/x;->a:Lcom/google/googlenav/common/io/j;

    const/4 v3, 0x0

    aget-object v3, v13, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lat/x;->a(Lat/f;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    .line 663
    const/4 v2, 0x0

    aget-object v2, v13, v2

    const/4 v3, 0x0

    aget v3, v12, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lat/x;->a(Lat/f;I)V

    .line 665
    :cond_d9
    const/4 v2, 0x1

    .line 770
    :goto_da
    return v2

    .line 650
    :cond_db
    const v2, 0x11940

    goto :goto_b4

    .line 652
    :catchall_df
    move-exception v2

    :try_start_e0
    monitor-exit p0
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_df

    throw v2

    .line 673
    :cond_e2
    monitor-enter p1

    .line 676
    :try_start_e3
    move-object/from16 v0, p0

    iget-object v3, v0, Lat/x;->c:Lat/D;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lat/D;->b(Z)V

    .line 677
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lat/x;->a(Ljava/util/Hashtable;I)Lat/f;
    :try_end_f2
    .catchall {:try_start_e3 .. :try_end_f2} :catchall_16a

    move-result-object v5

    .line 679
    :try_start_f3
    move-object/from16 v0, p0

    iget-object v2, v0, Lat/x;->c:Lat/D;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lat/D;->b(Z)V

    .line 681
    monitor-exit p1
    :try_end_fc
    .catchall {:try_start_f3 .. :try_end_fc} :catchall_174

    .line 687
    invoke-virtual {v5}, Lat/f;->b()I

    move-result v6

    .line 688
    const/16 v2, 0x1770

    if-lt v6, v2, :cond_1f2

    .line 689
    const/4 v2, -0x1

    .line 695
    monitor-enter p0

    .line 696
    :try_start_106
    move-object/from16 v0, p0

    iget v3, v0, Lat/x;->m:I

    invoke-virtual/range {p0 .. p0}, Lat/x;->f()I

    move-result v4

    sub-int v7, v3, v4

    .line 697
    const/4 v3, 0x2

    new-array v8, v3, [Z

    fill-array-data v8, :array_20a

    .line 698
    const/4 v4, 0x0

    .line 699
    const/4 v3, 0x0

    move/from16 v18, v3

    move v3, v4

    move/from16 v4, v18

    :goto_11d
    const/4 v9, 0x2

    if-ge v4, v9, :cond_148

    .line 700
    aget-object v9, v13, v4

    if-eqz v9, :cond_144

    aget-object v9, v13, v4

    invoke-virtual {v9}, Lat/f;->d()Z

    move-result v9

    if-eqz v9, :cond_144

    aget-object v9, v13, v4

    invoke-virtual {v9, v14, v15}, Lat/f;->a(J)J

    move-result-wide v9

    invoke-virtual {v5, v14, v15}, Lat/f;->a(J)J

    move-result-wide v16

    cmp-long v9, v9, v16

    if-lez v9, :cond_144

    .line 704
    const/4 v9, 0x1

    aput-boolean v9, v8, v4

    .line 705
    aget-object v9, v13, v4

    invoke-virtual {v9}, Lat/f;->b()I

    move-result v9

    add-int/2addr v3, v9

    .line 707
    :cond_144
    add-int v9, v7, v3

    if-gt v6, v9, :cond_177

    .line 712
    :cond_148
    invoke-virtual/range {p0 .. p0}, Lat/x;->a()I

    move-result v4

    .line 714
    add-int/2addr v3, v7

    if-le v6, v3, :cond_17a

    .line 715
    const/4 v3, 0x2

    move/from16 v18, v2

    move v2, v3

    move/from16 v3, v18

    .line 747
    :goto_155
    monitor-exit p0
    :try_end_156
    .catchall {:try_start_106 .. :try_end_156} :catchall_1ef

    .line 749
    if-ltz v3, :cond_165

    .line 751
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lat/f;->a(Ljava/util/Hashtable;)[B

    move-result-object v4

    .line 752
    if-eqz v4, :cond_165

    .line 760
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4, v3}, Lat/x;->a(Lat/f;[BI)V

    .line 768
    :cond_165
    :goto_165
    invoke-virtual/range {p0 .. p0}, Lat/x;->b()Z

    goto/16 :goto_da

    .line 679
    :catchall_16a
    move-exception v2

    :try_start_16b
    move-object/from16 v0, p0

    iget-object v3, v0, Lat/x;->c:Lat/D;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lat/D;->b(Z)V

    throw v2

    .line 681
    :catchall_174
    move-exception v2

    monitor-exit p1
    :try_end_176
    .catchall {:try_start_16b .. :try_end_176} :catchall_174

    throw v2

    .line 699
    :cond_177
    add-int/lit8 v4, v4, 0x1

    goto :goto_11d

    .line 717
    :cond_17a
    const/4 v3, 0x0

    :try_start_17b
    aget-boolean v3, v8, v3

    if-eqz v3, :cond_1cf

    if-gt v6, v7, :cond_187

    move-object/from16 v0, p0

    iget v3, v0, Lat/x;->d:I

    if-lt v4, v3, :cond_1cf

    .line 719
    :cond_187
    const/4 v3, 0x4

    .line 720
    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-virtual {v2}, Lat/f;->c()I

    move-result v2

    .line 721
    const/4 v4, 0x0

    aget-object v4, v13, v4

    const/4 v6, 0x0

    aget v6, v12, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lat/x;->a(Lat/f;I)V

    .line 722
    const/4 v4, 0x1

    aget-boolean v4, v8, v4

    if-eqz v4, :cond_1f5

    .line 724
    const/4 v4, 0x0

    aget v4, v12, v4

    const/4 v6, 0x1

    aget v6, v12, v6

    if-ge v4, v6, :cond_1ae

    .line 725
    const/4 v4, 0x1

    aget v6, v12, v4

    add-int/lit8 v6, v6, -0x1

    aput v6, v12, v4

    .line 735
    :cond_1ae
    move-object/from16 v0, p0

    iget-object v4, v0, Lat/x;->a:Lcom/google/googlenav/common/io/j;

    const/4 v6, 0x1

    aget-object v6, v13, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lat/x;->a(Lat/f;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    .line 736
    const/4 v4, 0x1

    aget-object v4, v13, v4

    const/4 v6, 0x1

    aget v6, v12, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lat/x;->a(Lat/f;I)V

    move/from16 v18, v2

    move v2, v3

    move/from16 v3, v18

    goto :goto_155

    .line 738
    :cond_1cf
    move-object/from16 v0, p0

    iget v3, v0, Lat/x;->d:I

    if-ge v4, v3, :cond_1e7

    .line 739
    const/4 v3, 0x3

    .line 740
    move-object/from16 v0, p0

    iget v2, v0, Lat/x;->j:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lat/x;->j:I

    move/from16 v18, v2

    move v2, v3

    move/from16 v3, v18

    goto/16 :goto_155

    .line 745
    :cond_1e7
    const/4 v3, 0x5

    move/from16 v18, v2

    move v2, v3

    move/from16 v3, v18

    goto/16 :goto_155

    .line 747
    :catchall_1ef
    move-exception v2

    monitor-exit p0
    :try_end_1f1
    .catchall {:try_start_17b .. :try_end_1f1} :catchall_1ef

    throw v2

    .line 764
    :cond_1f2
    const/4 v2, 0x0

    goto/16 :goto_165

    :cond_1f5
    move/from16 v18, v2

    move v2, v3

    move/from16 v3, v18

    goto/16 :goto_155

    :cond_1fc
    move v2, v11

    goto/16 :goto_91

    :cond_1ff
    move v4, v8

    goto/16 :goto_73

    .line 590
    :array_202
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 697
    :array_20a
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public a(Lat/P;)Lat/I;
    .registers 6
    .parameter

    .prologue
    .line 946
    const/4 v0, 0x0

    .line 947
    invoke-direct {p0, p1}, Lat/x;->b(Lat/P;)Lat/e;

    move-result-object v1

    .line 948
    if-eqz v1, :cond_1e

    .line 952
    iget-object v0, p0, Lat/x;->g:Lat/z;

    invoke-virtual {v0, v1, p1}, Lat/z;->a(Lat/e;Lat/P;)Lat/I;

    move-result-object v0

    .line 954
    if-eqz v0, :cond_1e

    .line 956
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lat/e;->a(J)V

    .line 961
    :cond_1e
    return-object v0
.end method

.method a(I)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lat/x;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Lat/f;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 259
    invoke-virtual {p1}, Lat/f;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lat/x;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 270
    monitor-enter p0

    if-eqz p1, :cond_9

    .line 272
    :try_start_3
    invoke-virtual {p0}, Lat/x;->i()Z

    .line 273
    invoke-virtual {p0}, Lat/x;->b()Z
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_12
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9} :catch_b

    .line 278
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 274
    :catch_b
    move-exception v0

    .line 275
    :try_start_c
    const-string v1, "FLASH"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    goto :goto_9

    .line 270
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(II)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 1080
    iget v0, p0, Lat/x;->e:I

    if-eq p1, v0, :cond_a

    iget v0, p0, Lat/x;->e:I

    if-ne v0, v2, :cond_12

    :cond_a
    iget v0, p0, Lat/x;->f:I

    if-eq p2, v0, :cond_1f

    iget v0, p0, Lat/x;->f:I

    if-eq v0, v2, :cond_1f

    :cond_12
    move v0, v1

    .line 1082
    :goto_13
    iput p1, p0, Lat/x;->e:I

    .line 1083
    iput p2, p0, Lat/x;->f:I

    .line 1084
    if-eqz v0, :cond_1e

    .line 1085
    invoke-virtual {p0}, Lat/x;->c()V

    .line 1088
    iput-boolean v1, p0, Lat/x;->l:Z

    .line 1090
    :cond_1e
    return v0

    .line 1080
    :cond_1f
    const/4 v0, 0x0

    goto :goto_13
.end method

.method declared-synchronized b()Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 351
    monitor-enter p0

    .line 353
    :try_start_3
    iget-boolean v2, p0, Lat/x;->l:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_51

    if-nez v2, :cond_9

    .line 387
    :goto_7
    monitor-exit p0

    return v0

    .line 357
    :cond_9
    :try_start_9
    iget-object v2, p0, Lat/x;->h:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    .line 359
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 360
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 362
    const/16 v2, 0xa

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 363
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 364
    iget v2, p0, Lat/x;->e:I

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 365
    iget v2, p0, Lat/x;->f:I

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 366
    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v2, v1

    .line 367
    :goto_30
    if-ge v2, v3, :cond_3c

    .line 368
    invoke-direct {p0, v2}, Lat/x;->c(I)Lat/f;

    move-result-object v6

    .line 369
    invoke-virtual {v6, v5}, Lat/f;->a(Ljava/io/DataOutput;)V

    .line 367
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 371
    :cond_3c
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 372
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_42
    .catchall {:try_start_9 .. :try_end_42} :catchall_51

    move-result-object v2

    .line 379
    :try_start_43
    iget-object v3, p0, Lat/x;->a:Lcom/google/googlenav/common/io/j;

    iget-object v4, p0, Lat/x;->b:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Lcom/google/googlenav/common/io/j;->a([BLjava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_51
    .catch Lcom/google/googlenav/common/io/k; {:try_start_43 .. :try_end_4a} :catch_54

    .line 385
    :goto_4a
    :try_start_4a
    array-length v1, v2

    iput v1, p0, Lat/x;->k:I

    .line 386
    const/4 v1, 0x0

    iput-boolean v1, p0, Lat/x;->l:Z
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_51

    goto :goto_7

    .line 351
    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0

    .line 380
    :catch_54
    move-exception v0

    .line 381
    const/4 v3, 0x1

    :try_start_56
    invoke-direct {p0, v0, v3}, Lat/x;->a(Lcom/google/googlenav/common/io/k;Z)V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_51

    move v0, v1

    .line 382
    goto :goto_4a
.end method

.method public declared-synchronized c()V
    .registers 3

    .prologue
    .line 430
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lat/x;->i:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 431
    iget-object v0, p0, Lat/x;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 432
    const/4 v0, 0x0

    iput v0, p0, Lat/x;->k:I

    .line 433
    const/4 v0, 0x0

    iput v0, p0, Lat/x;->j:I

    .line 434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lat/x;->l:Z

    .line 436
    iget-object v0, p0, Lat/x;->a:Lcom/google/googlenav/common/io/j;

    iget-object v1, p0, Lat/x;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->c(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 437
    monitor-exit p0

    return-void

    .line 430
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized d()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 448
    monitor-enter p0

    const/4 v2, 0x1

    .line 450
    :try_start_3
    iget-object v0, p0, Lat/x;->a:Lcom/google/googlenav/common/io/j;

    iget-object v3, p0, Lat/x;->b:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/google/googlenav/common/io/j;->e(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 454
    invoke-virtual {p0}, Lat/x;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_12
    if-ltz v3, :cond_2f

    .line 455
    iget-object v0, p0, Lat/x;->h:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/f;

    .line 456
    invoke-virtual {p0, v0}, Lat/x;->a(Lat/f;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lat/x;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5c

    .line 459
    invoke-direct {p0, v0, v3}, Lat/x;->a(Lat/f;I)V

    move v0, v1

    .line 454
    :goto_2a
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    move v2, v0

    goto :goto_12

    .line 465
    :cond_2f
    if-eqz v4, :cond_59

    .line 466
    iget-object v0, p0, Lat/x;->b:Ljava/lang/String;

    invoke-static {v0, v4}, Lat/x;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    move v0, v2

    move v2, v1

    .line 467
    :goto_39
    array-length v5, v4

    if-ge v2, v5, :cond_49

    .line 468
    aget-object v5, v4, v2

    .line 469
    if-eqz v5, :cond_46

    .line 472
    iget-object v0, p0, Lat/x;->a:Lcom/google/googlenav/common/io/j;

    invoke-interface {v0, v5}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    move v0, v1

    .line 467
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_49
    move v2, v3

    .line 478
    :goto_4a
    invoke-virtual {p0}, Lat/x;->a()I
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_54

    move-result v3

    if-lez v3, :cond_57

    if-nez v2, :cond_57

    .line 483
    :goto_52
    monitor-exit p0

    return v1

    .line 448
    :catchall_54
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_57
    move v1, v0

    goto :goto_52

    :cond_59
    move v0, v2

    move v2, v1

    goto :goto_4a

    :cond_5c
    move v0, v2

    goto :goto_2a
.end method

.method declared-synchronized e()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 912
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lat/x;->h:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    move v1, v0

    .line 915
    :goto_9
    if-ge v0, v2, :cond_17

    .line 916
    invoke-direct {p0, v0}, Lat/x;->c(I)Lat/f;

    move-result-object v3

    invoke-virtual {v3}, Lat/f;->b()I
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_19

    move-result v3

    add-int/2addr v1, v3

    .line 915
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 918
    :cond_17
    monitor-exit p0

    return v1

    .line 912
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()I
    .registers 3

    .prologue
    .line 928
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lat/x;->k:I

    invoke-virtual {p0}, Lat/x;->e()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_a

    move-result v1

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()V
    .registers 3

    .prologue
    .line 988
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lat/x;->n:J

    .line 989
    return-void
.end method

.method public h()V
    .registers 3

    .prologue
    .line 993
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lat/x;->n:J

    .line 994
    return-void
.end method

.method public i()Z
    .registers 11

    .prologue
    const-wide/16 v8, 0x841

    const/4 v0, 0x1

    .line 1007
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v1

    .line 1008
    iget-object v3, p0, Lat/x;->c:Lat/D;

    invoke-virtual {v3}, Lat/D;->a()Ljava/util/Hashtable;

    move-result-object v3

    .line 1011
    iget-wide v4, p0, Lat/x;->o:J

    cmp-long v4, v4, v1

    if-gez v4, :cond_3d

    iget-wide v4, p0, Lat/x;->n:J

    const-wide/16 v6, 0x5dc

    add-long/2addr v4, v6

    cmp-long v1, v4, v1

    if-gez v1, :cond_3d

    .line 1014
    :try_start_24
    invoke-virtual {p0, v3}, Lat/x;->a(Ljava/util/Hashtable;)I
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_40

    move-result v1

    .line 1016
    const/4 v2, 0x3

    if-eq v1, v2, :cond_2e

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3e

    .line 1020
    :cond_2e
    :goto_2e
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v1

    add-long/2addr v1, v8

    iput-wide v1, p0, Lat/x;->o:J

    .line 1028
    :cond_3d
    return v0

    .line 1016
    :cond_3e
    const/4 v0, 0x0

    goto :goto_2e

    .line 1020
    :catchall_40
    move-exception v0

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v1

    add-long/2addr v1, v8

    iput-wide v1, p0, Lat/x;->o:J

    throw v0
.end method
