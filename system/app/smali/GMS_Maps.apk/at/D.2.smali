.class public Lat/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lat/o;
.implements Lcom/google/googlenav/common/h;
.implements Lcom/google/googlenav/common/util/n;
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Ljava/util/Hashtable;

.field b:Lat/K;

.field volatile c:Z

.field private final d:Z

.field private final e:Ljava/util/Vector;

.field private f:Lat/m;

.field private final g:Ljava/util/Vector;

.field private h:I

.field private i:I

.field private volatile j:Z

.field private k:Lat/G;

.field private l:I

.field private final m:Ljava/util/Hashtable;

.field private final n:Ljava/lang/Object;

.field private final o:Ljava/lang/Object;

.field private p:J

.field private final q:Ljava/util/List;

.field private r:I

.field private s:J


# direct methods
.method constructor <init>(IIIILjava/lang/String;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lat/D;->e:Ljava/util/Vector;

    .line 97
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lat/D;->g:Ljava/util/Vector;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lat/D;->k:Lat/G;

    .line 128
    iput v2, p0, Lat/D;->l:I

    .line 164
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lat/D;->n:Ljava/lang/Object;

    .line 169
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lat/D;->o:Ljava/lang/Object;

    .line 175
    iput-boolean v4, p0, Lat/D;->c:Z

    .line 178
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lat/D;->q:Ljava/util/List;

    .line 195
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lat/D;->s:J

    .line 256
    const/16 v0, 0x1a

    iput v0, p0, Lat/D;->r:I

    .line 257
    if-ne p1, v3, :cond_76

    .line 258
    iput-boolean v4, p0, Lat/D;->d:Z

    .line 259
    const/16 v0, 0x61a8

    iput v0, p0, Lat/D;->h:I

    .line 260
    invoke-direct {p0}, Lat/D;->s()V

    .line 272
    :goto_42
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lat/D;->m:Ljava/util/Hashtable;

    .line 273
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lat/D;->a:Ljava/util/Hashtable;

    .line 274
    iput-boolean v2, p0, Lat/D;->j:Z

    .line 280
    new-instance v0, Lat/E;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v2

    move-object v1, p0

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lat/E;-><init>(Lat/D;LY/c;IILjava/lang/String;)V

    invoke-virtual {v0}, Lat/E;->g()V

    .line 288
    invoke-static {}, Lat/D;->u()J

    move-result-wide v0

    iput-wide v0, p0, Lat/D;->p:J

    .line 294
    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v1, Lat/F;

    invoke-direct {v1, p0}, Lat/F;-><init>(Lat/D;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    .line 301
    invoke-static {p0}, Lcom/google/googlenav/common/j;->a(Lcom/google/googlenav/common/h;)V

    .line 302
    return-void

    .line 262
    :cond_76
    iput-boolean v2, p0, Lat/D;->d:Z

    .line 263
    iput p1, p0, Lat/D;->h:I

    .line 265
    if-ne p2, v3, :cond_80

    .line 266
    invoke-direct {p0}, Lat/D;->s()V

    goto :goto_42

    .line 268
    :cond_80
    iput p2, p0, Lat/D;->i:I

    goto :goto_42
.end method

.method private a([J[Lat/P;III)I
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 996
    aget-wide v2, p1, p5

    .line 997
    invoke-direct {p0, p1, p2, p5, p4}, Lat/D;->a([J[Lat/P;II)V

    move v1, p3

    .line 999
    :goto_6
    if-ge p3, p4, :cond_17

    .line 1000
    aget-wide v4, p1, p3

    cmp-long v0, v4, v2

    if-ltz v0, :cond_25

    .line 1001
    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lat/D;->a([J[Lat/P;II)V

    .line 999
    :goto_13
    add-int/lit8 p3, p3, 0x1

    move v1, v0

    goto :goto_6

    .line 1005
    :cond_17
    aget-wide v2, p1, p4

    aget-wide v4, p1, v1

    cmp-long v0, v2, v4

    if-lez v0, :cond_23

    .line 1006
    invoke-direct {p0, p1, p2, p4, v1}, Lat/D;->a([J[Lat/P;II)V

    .line 1009
    :goto_22
    return v1

    :cond_23
    move v1, p4

    goto :goto_22

    :cond_25
    move v0, v1

    goto :goto_13
.end method

.method static a(Lat/P;JJ)J
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 938
    sub-long v0, p1, p3

    return-wide v0
.end method

.method private a(Lat/P;I)LS/f;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 570
    packed-switch p2, :pswitch_data_10

    .line 579
    invoke-direct {p0, p1}, Lat/D;->c(Lat/P;)LS/f;

    move-result-object v0

    .line 583
    :goto_7
    return-object v0

    .line 572
    :pswitch_8
    const/4 v0, 0x0

    .line 573
    goto :goto_7

    .line 575
    :pswitch_a
    invoke-direct {p0, p1}, Lat/D;->b(Lat/P;)LS/f;

    move-result-object v0

    goto :goto_7

    .line 570
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method private a(Lat/P;Lat/P;Lat/I;)LS/f;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x100

    const/4 v0, 0x0

    const/16 v3, 0x80

    .line 701
    .line 702
    invoke-virtual {p1}, Lat/P;->c()I

    move-result v1

    invoke-virtual {p2}, Lat/P;->c()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-ne v1, v2, :cond_27

    move v1, v0

    .line 703
    :goto_12
    invoke-virtual {p1}, Lat/P;->d()I

    move-result v2

    invoke-virtual {p2}, Lat/P;->d()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    if-ne v2, v4, :cond_29

    move v2, v0

    :goto_1f
    move-object v0, p3

    move v4, v3

    move v6, v5

    .line 704
    invoke-virtual/range {v0 .. v6}, Lat/I;->a(IIIIII)LS/f;

    move-result-object v0

    return-object v0

    :cond_27
    move v1, v3

    .line 702
    goto :goto_12

    :cond_29
    move v2, v3

    .line 703
    goto :goto_1f
.end method

.method private a(I)V
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 816
    iget-object v3, p0, Lat/D;->a:Ljava/util/Hashtable;

    monitor-enter v3

    .line 818
    const/4 v1, 0x1

    :try_start_5
    iput-boolean v1, p0, Lat/D;->j:Z

    .line 820
    invoke-virtual {p0}, Lat/D;->i()[Lat/P;

    move-result-object v4

    move v2, v0

    move v1, p1

    .line 822
    :goto_d
    array-length v0, v4

    if-ge v2, v0, :cond_3a

    iget v0, p0, Lat/D;->i:I

    if-le v1, v0, :cond_3a

    .line 823
    aget-object v5, v4, v2

    .line 825
    iget-object v0, p0, Lat/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/I;

    .line 828
    invoke-virtual {v0}, Lat/I;->e()Z

    move-result v6

    if-nez v6, :cond_2a

    invoke-virtual {v0}, Lat/I;->v()Z

    move-result v6

    if-nez v6, :cond_47

    .line 829
    :cond_2a
    iget-object v6, p0, Lat/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v6, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    invoke-virtual {v0}, Lat/I;->j()I
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_3f

    move-result v0

    sub-int v0, v1, v0

    .line 822
    :goto_35
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_d

    .line 841
    :cond_3a
    const/4 v0, 0x0

    :try_start_3b
    iput-boolean v0, p0, Lat/D;->j:Z

    .line 843
    monitor-exit v3

    .line 844
    return-void

    .line 841
    :catchall_3f
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lat/D;->j:Z

    throw v0

    .line 843
    :catchall_44
    move-exception v0

    monitor-exit v3
    :try_end_46
    .catchall {:try_start_3b .. :try_end_46} :catchall_44

    throw v0

    :cond_47
    move v0, v1

    goto :goto_35
.end method

.method private a(IILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 306
    if-lez p1, :cond_a

    .line 307
    new-instance v0, Lat/x;

    invoke-direct {v0, p0, p3, p1, p2}, Lat/x;-><init>(Lat/D;Ljava/lang/String;II)V

    iput-object v0, p0, Lat/D;->b:Lat/K;

    .line 313
    :goto_9
    return-void

    .line 311
    :cond_a
    new-instance v0, Lat/L;

    invoke-direct {v0}, Lat/L;-><init>()V

    iput-object v0, p0, Lat/D;->b:Lat/K;

    goto :goto_9
.end method

.method static synthetic a(Lat/D;)V
    .registers 1
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lat/D;->w()V

    return-void
.end method

.method static synthetic a(Lat/D;IILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lat/D;->a(IILjava/lang/String;)V

    return-void
.end method

.method private a(Lat/I;)V
    .registers 4
    .parameter

    .prologue
    .line 773
    invoke-virtual {p1}, Lat/I;->c()Lat/P;

    move-result-object v0

    .line 774
    iget-object v1, p0, Lat/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    return-void
.end method

.method private a(Lat/I;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 710
    iget-object v0, p0, Lat/D;->k:Lat/G;

    if-nez v0, :cond_13

    .line 713
    new-instance v0, Lat/G;

    invoke-virtual {p1}, Lat/I;->c()Lat/P;

    move-result-object v1

    invoke-virtual {v1}, Lat/P;->b()B

    move-result v1

    invoke-direct {v0, p0, v1}, Lat/G;-><init>(Lat/D;B)V

    iput-object v0, p0, Lat/D;->k:Lat/G;

    .line 715
    :cond_13
    iget-object v0, p0, Lat/D;->k:Lat/G;

    invoke-virtual {v0, p1, p2}, Lat/G;->a(Lat/I;I)V

    .line 716
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lat/I;->a(Z)V

    .line 717
    return-void
.end method

.method private a([J[Lat/P;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1028
    const/4 v0, 0x0

    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lat/D;->b([J[Lat/P;II)V

    .line 1029
    return-void
.end method

.method private a([J[Lat/P;II)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 975
    aget-object v0, p2, p4

    .line 976
    aget-object v1, p2, p3

    aput-object v1, p2, p4

    .line 977
    aput-object v0, p2, p3

    .line 979
    aget-wide v0, p1, p4

    .line 980
    aget-wide v2, p1, p3

    aput-wide v2, p1, p4

    .line 981
    aput-wide v0, p1, p3

    .line 982
    return-void
.end method

.method static synthetic b(Lat/D;)I
    .registers 2
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lat/D;->r:I

    return v0
.end method

.method private b(Lat/P;)LS/f;
    .registers 3
    .parameter

    .prologue
    .line 593
    iget-object v0, p0, Lat/D;->m:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS/f;

    return-object v0
.end method

.method private b([J[Lat/P;II)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1019
    if-le p4, p3, :cond_16

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p3

    .line 1021
    invoke-direct/range {v0 .. v5}, Lat/D;->a([J[Lat/P;III)I

    move-result v0

    .line 1022
    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lat/D;->b([J[Lat/P;II)V

    .line 1023
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, p2, v0, p4}, Lat/D;->b([J[Lat/P;II)V

    .line 1025
    :cond_16
    return-void
.end method

.method static synthetic c(Lat/D;)I
    .registers 3
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lat/D;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lat/D;->l:I

    return v0
.end method

.method private c(Lat/P;)LS/f;
    .registers 4
    .parameter

    .prologue
    .line 604
    iget-object v0, p0, Lat/D;->m:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS/f;

    .line 605
    if-nez v0, :cond_15

    .line 606
    invoke-direct {p0, p1}, Lat/D;->d(Lat/P;)LS/f;

    move-result-object v0

    .line 607
    if-eqz v0, :cond_15

    .line 608
    iget-object v1, p0, Lat/D;->m:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    :cond_15
    return-object v0
.end method

.method static synthetic d(Lat/D;)I
    .registers 3
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lat/D;->l:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lat/D;->l:I

    return v0
.end method

.method private d(Lat/P;)LS/f;
    .registers 10
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 621
    invoke-static {}, Lat/D;->u()J

    move-result-wide v2

    .line 622
    iget-wide v4, p0, Lat/D;->s:J

    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_f

    .line 655
    :cond_e
    :goto_e
    return-object v0

    .line 627
    :cond_f
    :try_start_f
    invoke-virtual {p1}, Lat/P;->h()Lat/P;

    move-result-object v1

    .line 628
    if-eqz v1, :cond_e

    .line 629
    invoke-virtual {v1}, Lat/P;->e()Lat/Y;

    move-result-object v4

    invoke-virtual {p1}, Lat/P;->e()Lat/Y;

    move-result-object v5

    invoke-virtual {v4, v5}, Lat/Y;->a(Lat/Y;)I

    move-result v4

    .line 630
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v1, v5, v6, v7}, Lat/D;->a(Lat/P;IZZ)Lat/I;

    move-result-object v5

    .line 631
    const/4 v6, 0x2

    if-ne v4, v6, :cond_e

    .line 634
    invoke-direct {p0, p1, v1, v5}, Lat/D;->a(Lat/P;Lat/P;Lat/I;)LS/f;
    :try_end_2e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_2e} :catch_30

    move-result-object v0

    goto :goto_e

    .line 637
    :catch_30
    move-exception v1

    .line 650
    invoke-direct {p0}, Lat/D;->t()V

    .line 651
    iput-wide v2, p0, Lat/D;->s:J

    .line 652
    const-string v2, "Map Service image scaling"

    invoke-static {v2, v1}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method private d(Z)V
    .registers 13
    .parameter

    .prologue
    .line 733
    if-eqz p1, :cond_5e

    const-wide/16 v0, 0x7d0

    move-wide v2, v0

    .line 734
    :goto_5
    iget-object v5, p0, Lat/D;->a:Ljava/util/Hashtable;

    monitor-enter v5

    .line 735
    const/4 v0, 0x1

    :try_start_9
    invoke-virtual {p0, v0}, Lat/D;->b(Z)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_6e

    .line 737
    :try_start_c
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v6

    .line 738
    iget-object v0, p0, Lat/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v8

    :cond_1e
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 739
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/P;

    .line 740
    iget-object v1, p0, Lat/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lat/I;

    .line 741
    invoke-virtual {v1}, Lat/I;->g()J

    move-result-wide v9

    .line 743
    add-long/2addr v9, v2

    cmp-long v4, v9, v6

    if-gez v4, :cond_1e

    .line 744
    invoke-virtual {v1}, Lat/I;->d()V

    .line 747
    iget-object v1, p0, Lat/D;->e:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    :goto_47
    if-ltz v4, :cond_1e

    .line 748
    iget-object v1, p0, Lat/D;->e:Ljava/util/Vector;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lat/k;

    const/16 v9, 0x8

    invoke-static {v9, v0}, Lat/P;->a(BLat/P;)Lat/P;

    move-result-object v9

    invoke-virtual {v1, v9}, Lat/k;->b(Lat/P;)V
    :try_end_5a
    .catchall {:try_start_c .. :try_end_5a} :catchall_68

    .line 747
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_47

    .line 733
    :cond_5e
    const-wide/16 v0, 0xfa0

    move-wide v2, v0

    goto :goto_5

    .line 753
    :cond_62
    const/4 v0, 0x0

    :try_start_63
    invoke-virtual {p0, v0}, Lat/D;->b(Z)V

    .line 755
    monitor-exit v5

    .line 756
    return-void

    .line 753
    :catchall_68
    move-exception v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lat/D;->b(Z)V

    throw v0

    .line 755
    :catchall_6e
    move-exception v0

    monitor-exit v5
    :try_end_70
    .catchall {:try_start_63 .. :try_end_70} :catchall_6e

    throw v0
.end method

.method private e(Lat/P;)J
    .registers 4
    .parameter

    .prologue
    .line 944
    iget-object v0, p0, Lat/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/I;

    invoke-virtual {v0}, Lat/I;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic e(Lat/D;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lat/D;->q:Ljava/util/List;

    return-object v0
.end method

.method private s()V
    .registers 2

    .prologue
    .line 334
    iget v0, p0, Lat/D;->h:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lat/D;->i:I

    .line 335
    return-void
.end method

.method private t()V
    .registers 4

    .prologue
    .line 659
    iget-object v1, p0, Lat/D;->a:Ljava/util/Hashtable;

    monitor-enter v1

    .line 660
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lat/D;->j:Z

    .line 663
    iget-object v0, p0, Lat/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 664
    :goto_c
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 665
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/I;

    .line 666
    invoke-virtual {v0}, Lat/I;->a()V

    goto :goto_c

    .line 672
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw v0

    .line 668
    :cond_1f
    const/4 v0, 0x0

    :try_start_20
    iput-boolean v0, p0, Lat/D;->j:Z

    .line 671
    invoke-virtual {p0}, Lat/D;->b()V

    .line 672
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_1c

    .line 673
    return-void
.end method

.method private static u()J
    .registers 2

    .prologue
    .line 1292
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method private v()V
    .registers 3

    .prologue
    .line 1299
    iget-boolean v0, p0, Lat/D;->c:Z

    if-nez v0, :cond_19

    .line 1300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lat/D;->c:Z

    .line 1301
    iget-object v1, p0, Lat/D;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 1302
    :try_start_a
    iget-object v0, p0, Lat/D;->o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1303
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_1a

    .line 1304
    iget-object v1, p0, Lat/D;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 1305
    :try_start_13
    iget-object v0, p0, Lat/D;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1306
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1d

    .line 1308
    :cond_19
    return-void

    .line 1303
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0

    .line 1306
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method private w()V
    .registers 3

    .prologue
    .line 1314
    iget-boolean v0, p0, Lat/D;->c:Z

    if-eqz v0, :cond_15

    .line 1315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lat/D;->c:Z

    .line 1316
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MapService"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1317
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1318
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1320
    :cond_15
    return-void
.end method


# virtual methods
.method a(Lat/P;IZIJ)Lat/I;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 453
    iget-object v0, p0, Lat/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/I;

    .line 460
    iget-object v1, p0, Lat/D;->b:Lat/K;

    if-nez v1, :cond_10

    move p3, v4

    .line 464
    :cond_10
    const-wide/high16 v1, -0x8000

    cmp-long v1, p5, v1

    if-nez v1, :cond_be

    .line 465
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    .line 468
    :goto_22
    if-nez v0, :cond_93

    .line 470
    iget-boolean v0, p0, Lat/D;->j:Z

    if-nez v0, :cond_8d

    .line 471
    iget-object v4, p0, Lat/D;->a:Ljava/util/Hashtable;

    monitor-enter v4

    .line 472
    const/4 v0, 0x1

    :try_start_2c
    invoke-virtual {p0, v0}, Lat/D;->b(Z)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_79

    .line 476
    :try_start_2f
    iget-object v0, p0, Lat/D;->b:Lat/K;

    if-eqz v0, :cond_67

    iget-object v0, p0, Lat/D;->b:Lat/K;

    invoke-interface {v0, p1}, Lat/K;->a(Lat/P;)Lat/I;

    move-result-object v0

    .line 478
    :goto_39
    if-nez v0, :cond_7c

    .line 483
    invoke-direct {p0, p1, p4}, Lat/D;->a(Lat/P;I)LS/f;

    move-result-object v3

    .line 487
    if-eqz p3, :cond_69

    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0}, Lac/h;->n()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 490
    new-instance v0, Lat/I;

    invoke-direct {v0, p1, v3}, Lat/I;-><init>(Lat/P;LS/f;)V

    .line 492
    invoke-direct {p0, v0, p2}, Lat/D;->a(Lat/I;I)V

    .line 493
    invoke-direct {p0, v0}, Lat/D;->a(Lat/I;)V

    .line 495
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/google/googlenav/bB;->a(B)Lcom/google/googlenav/bB;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/bB;->c()V
    :try_end_5e
    .catchall {:try_start_2f .. :try_end_5e} :catchall_73

    .line 524
    :goto_5e
    const/4 v3, 0x0

    :try_start_5f
    invoke-virtual {p0, v3}, Lat/D;->b(Z)V

    .line 526
    monitor-exit v4
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_79

    .line 547
    :goto_63
    invoke-virtual {v0, v1, v2}, Lat/I;->a(J)V

    .line 548
    return-object v0

    :cond_67
    move-object v0, v3

    .line 476
    goto :goto_39

    .line 498
    :cond_69
    :try_start_69
    new-instance v0, Lat/I;

    const/4 v5, 0x1

    invoke-direct {v0, p1, v3, v5}, Lat/I;-><init>(Lat/P;LS/f;Z)V

    .line 505
    invoke-direct {p0, v0}, Lat/D;->a(Lat/I;)V
    :try_end_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_73

    goto :goto_5e

    .line 524
    :catchall_73
    move-exception v0

    const/4 v1, 0x0

    :try_start_75
    invoke-virtual {p0, v1}, Lat/D;->b(Z)V

    throw v0

    .line 526
    :catchall_79
    move-exception v0

    monitor-exit v4
    :try_end_7b
    .catchall {:try_start_75 .. :try_end_7b} :catchall_79

    throw v0

    .line 512
    :cond_7c
    if-nez p3, :cond_81

    .line 513
    const-wide/16 v5, 0x4e20

    sub-long/2addr v1, v5

    .line 516
    :cond_81
    :try_start_81
    invoke-direct {p0, v0}, Lat/D;->a(Lat/I;)V

    .line 521
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/google/googlenav/bB;->a(B)Lcom/google/googlenav/bB;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/bB;->b()V
    :try_end_8c
    .catchall {:try_start_81 .. :try_end_8c} :catchall_73

    goto :goto_5e

    .line 531
    :cond_8d
    new-instance v0, Lat/I;

    invoke-direct {v0, p1, v3, v5}, Lat/I;-><init>(Lat/P;LS/f;Z)V

    goto :goto_63

    .line 533
    :cond_93
    invoke-virtual {v0}, Lat/I;->e()Z

    move-result v3

    if-nez v3, :cond_b6

    invoke-virtual {v0}, Lat/I;->v()Z

    move-result v3

    if-nez v3, :cond_b6

    if-eqz p3, :cond_b6

    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v3

    invoke-virtual {v3}, Lac/h;->n()Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 538
    invoke-direct {p0, v0, p2}, Lat/D;->a(Lat/I;I)V

    .line 540
    invoke-static {v4}, Lcom/google/googlenav/bB;->a(B)Lcom/google/googlenav/bB;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/bB;->c()V

    goto :goto_63

    .line 543
    :cond_b6
    invoke-static {v4}, Lcom/google/googlenav/bB;->a(B)Lcom/google/googlenav/bB;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/bB;->a()V

    goto :goto_63

    :cond_be
    move-wide v1, p5

    goto/16 :goto_22
.end method

.method public a(Lat/P;IZZ)Lat/I;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 395
    const-wide/high16 v5, -0x8000

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lat/D;->a(Lat/P;IZZJ)Lat/I;

    move-result-object v0

    return-object v0
.end method

.method a(Lat/P;IZZJ)Lat/I;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 424
    if-eqz p4, :cond_d

    const/4 v4, 0x2

    :goto_3
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lat/D;->a(Lat/P;IZIJ)Lat/I;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public a(Lat/P;)Lat/n;
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 556
    invoke-virtual {p0, p1, v0, v0, v0}, Lat/D;->a(Lat/P;IZZ)Lat/I;

    move-result-object v0

    invoke-virtual {v0}, Lat/I;->p()Lat/n;

    move-result-object v0

    return-object v0
.end method

.method a()Ljava/util/Hashtable;
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Lat/D;->a:Ljava/util/Hashtable;

    return-object v0
.end method

.method public a(Lat/P;ZJ)Ljava/util/Vector;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1078
    iget-object v0, p0, Lat/D;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 1079
    iget-object v0, p0, Lat/D;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_e
    if-ltz v1, :cond_41

    .line 1080
    iget-object v0, p0, Lat/D;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/k;

    .line 1081
    invoke-virtual {v0}, Lat/k;->b()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1082
    const/16 v2, 0x8

    invoke-static {v2, p1}, Lat/P;->a(BLat/P;)Lat/P;

    move-result-object v2

    .line 1083
    invoke-virtual {v0, v2, p2}, Lat/k;->a(Lat/P;Z)Lat/n;

    move-result-object v0

    .line 1087
    if-eqz v0, :cond_39

    .line 1088
    invoke-virtual {v0}, Lat/n;->h()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1089
    iget-object v2, p0, Lat/D;->g:Ljava/util/Vector;

    invoke-virtual {v0, p3, p4}, Lat/n;->b(J)LS/f;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1079
    :cond_39
    :goto_39
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_e

    .line 1091
    :cond_3d
    invoke-virtual {v0, p3, p4}, Lat/n;->a(J)V

    goto :goto_39

    .line 1096
    :cond_41
    iget-object v0, p0, Lat/D;->g:Ljava/util/Vector;

    return-object v0
.end method

.method a(II)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 1164
    iget-object v0, p0, Lat/D;->b:Lat/K;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lat/D;->b:Lat/K;

    invoke-interface {v0, p1, p2}, Lat/K;->a(II)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1165
    iget-object v2, p0, Lat/D;->a:Ljava/util/Hashtable;

    monitor-enter v2

    .line 1169
    :try_start_f
    iget-object v0, p0, Lat/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 1170
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 1171
    :cond_19
    :goto_19
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1172
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/P;

    .line 1173
    iget-object v1, p0, Lat/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lat/I;

    .line 1174
    invoke-virtual {v1}, Lat/I;->e()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1175
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 1183
    :catchall_37
    move-exception v0

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_f .. :try_end_39} :catchall_37

    throw v0

    .line 1180
    :cond_3a
    :try_start_3a
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/P;

    .line 1181
    iget-object v3, p0, Lat/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    .line 1183
    :cond_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_3a .. :try_end_51} :catchall_37

    .line 1185
    :cond_51
    return-void
.end method

.method a(LZ/d;)V
    .registers 3
    .parameter

    .prologue
    .line 316
    iget-object v0, p0, Lat/D;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    return-void
.end method

.method public a(Lat/k;)V
    .registers 3
    .parameter

    .prologue
    .line 1116
    if-eqz p1, :cond_12

    iget-object v0, p0, Lat/D;->e:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1117
    iget-object v0, p0, Lat/D;->e:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1118
    invoke-static {p1}, Lcom/google/googlenav/common/j;->a(Lcom/google/googlenav/common/h;)V

    .line 1120
    :cond_12
    return-void
.end method

.method public a(Lat/m;)V
    .registers 2
    .parameter

    .prologue
    .line 1111
    iput-object p1, p0, Lat/D;->f:Lat/m;

    .line 1112
    return-void
.end method

.method public a(Z)V
    .registers 5
    .parameter

    .prologue
    .line 1203
    invoke-static {}, Lat/f;->f()V

    .line 1204
    invoke-direct {p0}, Lat/D;->t()V

    .line 1206
    iget-object v1, p0, Lat/D;->a:Ljava/util/Hashtable;

    monitor-enter v1

    .line 1208
    const/4 v0, 0x1

    :try_start_a
    invoke-direct {p0, v0}, Lat/D;->d(Z)V

    .line 1210
    iget-boolean v0, p0, Lat/D;->d:Z

    if-eqz v0, :cond_1d

    .line 1211
    const/16 v0, 0x61a8

    iput v0, p0, Lat/D;->h:I

    .line 1212
    invoke-direct {p0}, Lat/D;->s()V

    .line 1219
    :goto_18
    invoke-virtual {p0}, Lat/D;->d()V

    .line 1220
    monitor-exit v1

    .line 1221
    return-void

    .line 1214
    :cond_1d
    iget v0, p0, Lat/D;->h:I

    add-int/lit16 v0, v0, -0x1f40

    const/16 v2, 0x61a8

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lat/D;->h:I

    .line 1216
    invoke-direct {p0}, Lat/D;->s()V

    goto :goto_18

    .line 1220
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_a .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method b()V
    .registers 4

    .prologue
    .line 682
    iget-object v1, p0, Lat/D;->a:Ljava/util/Hashtable;

    monitor-enter v1

    .line 683
    :try_start_3
    iget-object v0, p0, Lat/D;->m:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 684
    :goto_9
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 685
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS/f;

    invoke-interface {v0}, LS/f;->d()V

    goto :goto_9

    .line 689
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0

    .line 688
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lat/D;->m:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 689
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_19

    .line 690
    return-void
.end method

.method public b(Lat/k;)V
    .registers 3
    .parameter

    .prologue
    .line 1124
    iget-object v0, p0, Lat/D;->e:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1125
    invoke-static {p1}, Lcom/google/googlenav/common/j;->c(Lcom/google/googlenav/common/h;)V

    .line 1126
    return-void
.end method

.method b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 238
    iput-boolean p1, p0, Lat/D;->j:Z

    .line 239
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 763
    iget-object v0, p0, Lat/D;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    .line 764
    iget-object v0, p0, Lat/D;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/k;

    invoke-virtual {v0}, Lat/k;->f()V

    .line 763
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    .line 766
    :cond_1a
    return-void
.end method

.method c(Z)V
    .registers 4
    .parameter

    .prologue
    .line 357
    invoke-static {p0}, Lcom/google/googlenav/common/j;->c(Lcom/google/googlenav/common/h;)V

    .line 358
    invoke-direct {p0}, Lat/D;->v()V

    .line 359
    iget-object v0, p0, Lat/D;->b:Lat/K;

    if-eqz v0, :cond_f

    .line 360
    iget-object v0, p0, Lat/D;->b:Lat/K;

    invoke-interface {v0, p1}, Lat/K;->a(Z)V

    .line 364
    :cond_f
    iget-object v0, p0, Lat/D;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_18
    if-ltz v1, :cond_2c

    .line 365
    iget-object v0, p0, Lat/D;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/k;

    .line 366
    invoke-virtual {v0}, Lat/k;->d()V

    .line 367
    invoke-static {v0}, Lcom/google/googlenav/common/j;->c(Lcom/google/googlenav/common/h;)V

    .line 364
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_18

    .line 369
    :cond_2c
    iget-object v0, p0, Lat/D;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 370
    return-void
.end method

.method d()V
    .registers 6

    .prologue
    .line 782
    invoke-virtual {p0}, Lat/D;->e()I

    move-result v0

    .line 783
    iget v1, p0, Lat/D;->h:I

    if-le v0, v1, :cond_3e

    .line 784
    iget-boolean v1, p0, Lat/D;->d:Z

    if-eqz v1, :cond_3f

    .line 786
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 789
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 791
    const-wide/32 v3, 0x9c40

    sub-long/2addr v1, v3

    long-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    .line 793
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    long-to-int v2, v2

    .line 795
    div-int/lit8 v2, v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 797
    const/16 v2, 0x61a8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lat/D;->h:I

    .line 799
    invoke-direct {p0}, Lat/D;->s()V

    .line 802
    iget v1, p0, Lat/D;->h:I

    if-ge v0, v1, :cond_3f

    .line 808
    :cond_3e
    :goto_3e
    return-void

    .line 806
    :cond_3f
    invoke-direct {p0, v0}, Lat/D;->a(I)V

    goto :goto_3e
.end method

.method e()I
    .registers 5

    .prologue
    .line 849
    const/4 v0, 0x0

    .line 850
    iget-object v2, p0, Lat/D;->a:Ljava/util/Hashtable;

    monitor-enter v2

    .line 851
    :try_start_4
    iget-object v1, p0, Lat/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    move v1, v0

    :goto_b
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 852
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/I;

    .line 853
    invoke-virtual {v0}, Lat/I;->j()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 854
    goto :goto_b

    .line 855
    :cond_1e
    monitor-exit v2

    .line 856
    return v1

    .line 855
    :catchall_20
    move-exception v0

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public f()I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 871
    .line 872
    iget-object v3, p0, Lat/D;->a:Ljava/util/Hashtable;

    monitor-enter v3

    .line 874
    const/4 v1, 0x1

    :try_start_5
    invoke-virtual {p0, v1}, Lat/D;->b(Z)V

    .line 875
    invoke-virtual {p0}, Lat/D;->h()I

    move-result v1

    .line 876
    const/16 v2, 0x30

    if-le v1, v2, :cond_36

    .line 880
    invoke-virtual {p0}, Lat/D;->i()[Lat/P;

    move-result-object v4

    move v2, v0

    .line 884
    :goto_15
    array-length v0, v4

    if-ge v2, v0, :cond_36

    const/16 v0, 0x18

    if-le v1, v0, :cond_36

    .line 885
    aget-object v0, v4, v2

    .line 886
    iget-object v5, p0, Lat/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/I;

    .line 893
    invoke-virtual {v0}, Lat/I;->t()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 894
    invoke-virtual {v0}, Lat/I;->k()V
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_3c

    .line 895
    add-int/lit8 v0, v1, -0x1

    .line 884
    :goto_31
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_15

    .line 905
    :cond_36
    const/4 v0, 0x0

    :try_start_37
    invoke-virtual {p0, v0}, Lat/D;->b(Z)V

    .line 907
    monitor-exit v3

    .line 908
    return v1

    .line 905
    :catchall_3c
    move-exception v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lat/D;->b(Z)V

    throw v0

    .line 907
    :catchall_42
    move-exception v0

    monitor-exit v3
    :try_end_44
    .catchall {:try_start_37 .. :try_end_44} :catchall_42

    throw v0

    :cond_45
    move v0, v1

    goto :goto_31
.end method

.method public g()Lcom/google/googlenav/common/util/l;
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 1347
    const/4 v3, 0x0

    .line 1348
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 1350
    iget-object v5, p0, Lat/D;->a:Ljava/util/Hashtable;

    monitor-enter v5

    .line 1351
    :try_start_9
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v6

    .line 1353
    iget-object v0, p0, Lat/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v7

    move v1, v2

    .line 1354
    :goto_14
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1355
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/I;

    .line 1356
    invoke-virtual {v0}, Lat/I;->x()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 1357
    goto :goto_14

    .line 1358
    :cond_27
    new-instance v0, Lcom/google/googlenav/common/util/l;

    const-string v7, "images"

    invoke-direct {v0, v7, v1}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1360
    new-instance v0, Lcom/google/googlenav/common/util/l;

    const-string v1, "data"

    invoke-virtual {p0}, Lat/D;->e()I

    move-result v7

    invoke-direct {v0, v1, v7}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1361
    new-instance v0, Lcom/google/googlenav/common/util/l;

    const-string v1, "mapCache"

    invoke-direct {v0, v1, v3, v6}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1365
    iget-object v0, p0, Lat/D;->m:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    move v1, v2

    .line 1366
    :goto_50
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1367
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS/f;

    .line 1368
    invoke-interface {v0}, LS/f;->g()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 1369
    goto :goto_50

    .line 1370
    :cond_63
    new-instance v0, Lcom/google/googlenav/common/util/l;

    const-string v3, "tempScaledImages"

    invoke-direct {v0, v3, v1}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;I)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1372
    monitor-exit v5
    :try_end_6e
    .catchall {:try_start_9 .. :try_end_6e} :catchall_93

    .line 1374
    new-instance v0, Lcom/google/googlenav/common/util/l;

    const-string v1, "layerServices"

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;I)V

    move v1, v2

    move-object v3, v0

    .line 1375
    :goto_77
    iget-object v0, p0, Lat/D;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_96

    .line 1376
    iget-object v0, p0, Lat/D;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/k;

    .line 1377
    invoke-virtual {v0}, Lat/k;->g()Lcom/google/googlenav/common/util/l;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/googlenav/common/util/l;->a(Lcom/google/googlenav/common/util/l;)Lcom/google/googlenav/common/util/l;

    move-result-object v3

    .line 1375
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_77

    .line 1372
    :catchall_93
    move-exception v0

    :try_start_94
    monitor-exit v5
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw v0

    .line 1380
    :cond_96
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1382
    new-instance v0, Lcom/google/googlenav/common/util/l;

    const-string v1, "MapService"

    invoke-direct {v0, v1, v2, v4}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;ILjava/util/List;)V

    return-object v0
.end method

.method h()I
    .registers 4

    .prologue
    .line 917
    const/4 v0, 0x0

    .line 918
    iget-object v1, p0, Lat/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    move v1, v0

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 919
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/I;

    invoke-virtual {v0}, Lat/I;->t()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 920
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 923
    :cond_1e
    return v1
.end method

.method i()[Lat/P;
    .registers 10

    .prologue
    .line 953
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v2

    .line 954
    iget-object v0, p0, Lat/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    new-array v4, v0, [Lat/P;

    .line 955
    iget-object v0, p0, Lat/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    new-array v5, v0, [J

    .line 956
    const/4 v0, 0x0

    .line 958
    iget-object v1, p0, Lat/D;->a:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v6

    move v1, v0

    .line 959
    :goto_24
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 960
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/P;

    aput-object v0, v4, v1

    .line 961
    aget-object v0, v4, v1

    aget-object v7, v4, v1

    invoke-direct {p0, v7}, Lat/D;->e(Lat/P;)J

    move-result-wide v7

    invoke-static {v0, v2, v3, v7, v8}, Lat/D;->a(Lat/P;JJ)J

    move-result-wide v7

    aput-wide v7, v5, v1

    .line 963
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24

    .line 966
    :cond_44
    invoke-direct {p0, v5, v4}, Lat/D;->a([J[Lat/P;)V

    .line 968
    return-object v4
.end method

.method j()Z
    .registers 3

    .prologue
    .line 1035
    iget-object v0, p0, Lat/D;->k:Lat/G;

    if-eqz v0, :cond_12

    .line 1036
    iget-object v0, p0, Lat/D;->k:Lat/G;

    .line 1039
    const/4 v1, 0x0

    iput-object v1, p0, Lat/D;->k:Lat/G;

    .line 1040
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V

    .line 1041
    const/4 v0, 0x1

    .line 1043
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public k()V
    .registers 4

    .prologue
    .line 1050
    iget-object v0, p0, Lat/D;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_20

    .line 1051
    iget-object v0, p0, Lat/D;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/k;

    .line 1052
    invoke-virtual {v0}, Lat/k;->b()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1053
    invoke-virtual {v0}, Lat/k;->e()V

    .line 1050
    :cond_1c
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    .line 1056
    :cond_20
    return-void
.end method

.method public l()V
    .registers 3

    .prologue
    .line 1101
    iget-object v0, p0, Lat/D;->f:Lat/m;

    if-eqz v0, :cond_9

    .line 1102
    iget-object v0, p0, Lat/D;->f:Lat/m;

    invoke-interface {v0}, Lat/m;->c()V

    .line 1104
    :cond_9
    iget-object v0, p0, Lat/D;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_12
    if-ltz v1, :cond_23

    .line 1105
    iget-object v0, p0, Lat/D;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/k;

    invoke-virtual {v0}, Lat/k;->c()V

    .line 1104
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_12

    .line 1107
    :cond_23
    return-void
.end method

.method public m()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1132
    move v1, v2

    :goto_2
    iget-object v0, p0, Lat/D;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    .line 1133
    iget-object v0, p0, Lat/D;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/k;

    .line 1134
    invoke-virtual {v0}, Lat/k;->h()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1135
    const/4 v2, 0x1

    .line 1138
    :cond_19
    return v2

    .line 1132
    :cond_1a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public n()Z
    .registers 2

    .prologue
    .line 1145
    iget v0, p0, Lat/D;->l:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method o()V
    .registers 3

    .prologue
    .line 1192
    invoke-static {}, Lat/D;->u()J

    move-result-wide v0

    iput-wide v0, p0, Lat/D;->p:J

    .line 1193
    iget-object v0, p0, Lat/D;->b:Lat/K;

    if-eqz v0, :cond_f

    .line 1194
    iget-object v0, p0, Lat/D;->b:Lat/K;

    invoke-interface {v0}, Lat/K;->g()V

    .line 1196
    :cond_f
    iget-object v1, p0, Lat/D;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 1197
    :try_start_12
    iget-object v0, p0, Lat/D;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1198
    monitor-exit v1

    .line 1199
    return-void

    .line 1198
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method p()V
    .registers 1

    .prologue
    .line 1326
    invoke-direct {p0}, Lat/D;->v()V

    .line 1327
    return-void
.end method

.method q()V
    .registers 1

    .prologue
    .line 1333
    invoke-direct {p0}, Lat/D;->w()V

    .line 1334
    return-void
.end method

.method r()V
    .registers 2

    .prologue
    .line 1340
    iget-object v0, p0, Lat/D;->b:Lat/K;

    if-eqz v0, :cond_9

    .line 1341
    iget-object v0, p0, Lat/D;->b:Lat/K;

    invoke-interface {v0}, Lat/K;->h()V

    .line 1343
    :cond_9
    return-void
.end method

.method public run()V
    .registers 15

    .prologue
    const-wide/16 v12, 0xc29

    const-wide/16 v10, 0x835

    .line 1225
    invoke-static {}, Lat/D;->u()J

    move-result-wide v0

    add-long v2, v0, v10

    .line 1226
    invoke-static {}, Lat/D;->u()J

    move-result-wide v0

    add-long/2addr v0, v12

    .line 1228
    :cond_f
    :goto_f
    iget-boolean v4, p0, Lat/D;->c:Z

    if-nez v4, :cond_7a

    .line 1231
    :try_start_13
    iget-object v6, p0, Lat/D;->o:Ljava/lang/Object;

    monitor-enter v6
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_69
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_16} :catch_75

    .line 1238
    :try_start_16
    invoke-static {}, Lat/D;->u()J

    move-result-wide v7

    .line 1239
    cmp-long v4, v2, v0

    if-gez v4, :cond_70

    move-wide v4, v2

    :goto_1f
    sub-long/2addr v4, v7

    .line 1241
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-lez v7, :cond_2b

    .line 1242
    iget-object v7, p0, Lat/D;->o:Ljava/lang/Object;

    invoke-virtual {v7, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2b
    .catchall {:try_start_16 .. :try_end_2b} :catchall_72
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_2b} :catch_7d

    .line 1247
    :cond_2b
    :goto_2b
    :try_start_2b
    monitor-exit v6
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_72

    .line 1249
    :try_start_2c
    iget-boolean v4, p0, Lat/D;->c:Z

    if-nez v4, :cond_f

    .line 1250
    invoke-static {}, Lat/D;->u()J

    move-result-wide v4

    .line 1252
    cmp-long v6, v2, v4

    if-gez v6, :cond_3d

    .line 1253
    invoke-virtual {p0}, Lat/D;->d()V

    .line 1254
    add-long v2, v4, v10

    .line 1258
    :cond_3d
    cmp-long v6, v0, v4

    if-gez v6, :cond_47

    .line 1259
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lat/D;->d(Z)V

    .line 1260
    add-long v0, v4, v12

    .line 1268
    :cond_47
    iget-object v6, p0, Lat/D;->b:Lat/K;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lat/D;->b:Lat/K;

    invoke-interface {v6}, Lat/K;->i()Z

    move-result v6

    if-nez v6, :cond_f

    iget-wide v6, p0, Lat/D;->p:J

    const-wide/16 v8, 0xfa0

    add-long/2addr v6, v8

    cmp-long v4, v6, v4

    if-gez v4, :cond_f

    .line 1271
    iget-object v5, p0, Lat/D;->n:Ljava/lang/Object;

    monitor-enter v5
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_5f} :catch_69
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2c .. :try_end_5f} :catch_75

    .line 1273
    :try_start_5f
    iget-object v4, p0, Lat/D;->n:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_64
    .catchall {:try_start_5f .. :try_end_64} :catchall_66
    .catch Ljava/lang/InterruptedException; {:try_start_5f .. :try_end_64} :catch_7b

    .line 1277
    :goto_64
    :try_start_64
    monitor-exit v5

    goto :goto_f

    :catchall_66
    move-exception v4

    monitor-exit v5
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_66

    :try_start_68
    throw v4
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_69} :catch_69
    .catch Ljava/lang/OutOfMemoryError; {:try_start_68 .. :try_end_69} :catch_75

    .line 1280
    :catch_69
    move-exception v4

    .line 1281
    const-string v5, "MapService BG"

    invoke-static {v5, v4}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    :cond_70
    move-wide v4, v0

    .line 1239
    goto :goto_1f

    .line 1247
    :catchall_72
    move-exception v4

    :try_start_73
    monitor-exit v6
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    :try_start_74
    throw v4
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_75} :catch_69
    .catch Ljava/lang/OutOfMemoryError; {:try_start_74 .. :try_end_75} :catch_75

    .line 1282
    :catch_75
    move-exception v4

    .line 1284
    invoke-static {}, Lcom/google/googlenav/common/j;->b()V

    goto :goto_f

    .line 1289
    :cond_7a
    return-void

    .line 1274
    :catch_7b
    move-exception v4

    goto :goto_64

    .line 1244
    :catch_7d
    move-exception v4

    goto :goto_2b
.end method
