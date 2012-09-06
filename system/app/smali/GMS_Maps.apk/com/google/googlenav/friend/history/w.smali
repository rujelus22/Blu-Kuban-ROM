.class public Lcom/google/googlenav/friend/history/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/friend/history/s;

.field private final b:Lcom/google/googlenav/friend/history/n;

.field private final c:Lcom/google/googlenav/friend/history/L;

.field private final d:Lcom/google/googlenav/friend/reporting/s;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/history/s;Lcom/google/googlenav/friend/history/n;Lcom/google/googlenav/friend/history/L;Lcom/google/googlenav/friend/reporting/s;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/google/googlenav/friend/history/w;->a:Lcom/google/googlenav/friend/history/s;

    .line 87
    iput-object p2, p0, Lcom/google/googlenav/friend/history/w;->b:Lcom/google/googlenav/friend/history/n;

    .line 88
    iput-object p3, p0, Lcom/google/googlenav/friend/history/w;->c:Lcom/google/googlenav/friend/history/L;

    .line 89
    iput-object p4, p0, Lcom/google/googlenav/friend/history/w;->d:Lcom/google/googlenav/friend/reporting/s;

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/friend/history/w;)Lcom/google/googlenav/friend/history/s;
    .registers 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/googlenav/friend/history/w;->a:Lcom/google/googlenav/friend/history/s;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/googlenav/friend/history/w;
    .registers 6
    .parameter

    .prologue
    .line 68
    invoke-static {p0}, Lcom/google/googlenav/friend/reporting/u;->a(Landroid/content/Context;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 69
    new-instance v1, Lcom/google/googlenav/friend/reporting/f;

    invoke-direct {v1, v0}, Lcom/google/googlenav/friend/reporting/f;-><init>(Ljavax/crypto/SecretKey;)V

    .line 70
    invoke-static {p0, v1}, Lcom/google/googlenav/friend/reporting/s;->a(Landroid/content/Context;Lcom/google/googlenav/friend/reporting/f;)Lcom/google/googlenav/friend/reporting/s;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/google/googlenav/friend/history/w;

    new-instance v2, Lcom/google/googlenav/friend/history/s;

    invoke-static {p0}, LaT/b;->a(Landroid/content/Context;)LaT/b;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/google/googlenav/friend/history/s;-><init>(Landroid/content/Context;LaT/b;)V

    new-instance v3, Lcom/google/googlenav/friend/history/n;

    invoke-direct {v3}, Lcom/google/googlenav/friend/history/n;-><init>()V

    new-instance v4, Lcom/google/googlenav/friend/history/L;

    invoke-direct {v4, p0}, Lcom/google/googlenav/friend/history/L;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/googlenav/friend/history/w;-><init>(Lcom/google/googlenav/friend/history/s;Lcom/google/googlenav/friend/history/n;Lcom/google/googlenav/friend/history/L;Lcom/google/googlenav/friend/reporting/s;)V

    return-object v1
.end method

.method private b(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 459
    :try_start_1
    iget-object v1, p0, Lcom/google/googlenav/friend/history/w;->b:Lcom/google/googlenav/friend/history/n;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/friend/history/n;->a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_f

    move-result-object v0

    .line 465
    :goto_7
    return-object v0

    .line 460
    :catch_8
    move-exception v1

    .line 461
    const-string v2, "LocationHistory.LocationHistoryManager"

    invoke-static {v2, v1}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 463
    :catch_f
    move-exception v1

    .line 464
    const-string v2, "LocationHistory.LocationHistoryManager"

    invoke-static {v2, v1}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method static synthetic b(Lcom/google/googlenav/friend/history/w;)Lcom/google/googlenav/friend/reporting/s;
    .registers 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/googlenav/friend/history/w;->d:Lcom/google/googlenav/friend/reporting/s;

    return-object v0
.end method

.method private b()Z
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 514
    new-instance v0, Lcom/google/googlenav/friend/U;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlenav/friend/U;-><init>(Ljava/util/List;Lcom/google/googlenav/friend/aq;Z)V

    .line 517
    invoke-virtual {v0}, Lcom/google/googlenav/friend/U;->m()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/V;

    .line 518
    if-eqz v0, :cond_1c

    iget-boolean v2, v0, Lcom/google/googlenav/friend/V;->a:Z

    if-nez v2, :cond_1e

    .line 519
    :cond_1c
    const/4 v0, 0x0

    .line 528
    :goto_1d
    return v0

    .line 522
    :cond_1e
    new-instance v2, Lcom/google/googlenav/friend/W;

    iget-object v0, v0, Lcom/google/googlenav/friend/V;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {v2, v0}, Lcom/google/googlenav/friend/W;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 524
    new-instance v0, Lcom/google/googlenav/friend/ag;

    invoke-virtual {v2, v4}, Lcom/google/googlenav/friend/W;->a(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/googlenav/friend/ag;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 526
    iget-object v2, p0, Lcom/google/googlenav/friend/history/w;->d:Lcom/google/googlenav/friend/reporting/s;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/ag;->c()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/friend/reporting/s;->a(Z)V

    .line 527
    invoke-static {v0}, Lcom/google/googlenav/friend/aJ;->a(Lcom/google/googlenav/friend/ag;)V

    move v0, v1

    .line 528
    goto :goto_1d
.end method

.method static synthetic c(Lcom/google/googlenav/friend/history/w;)Z
    .registers 2
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/googlenav/friend/history/w;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 4
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/googlenav/friend/history/w;->a:Lcom/google/googlenav/friend/history/s;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/friend/history/s;->a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_9

    .line 235
    :cond_8
    :goto_8
    return-object v0

    .line 230
    :cond_9
    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/history/w;->b(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_8

    .line 232
    iget-object v1, p0, Lcom/google/googlenav/friend/history/w;->a:Lcom/google/googlenav/friend/history/s;

    invoke-virtual {v1, p1, v0}, Lcom/google/googlenav/friend/history/s;->a(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)Z

    goto :goto_8
.end method

.method a(Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/friend/history/J;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x5

    .line 492
    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/google/googlenav/common/io/protocol/b;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 495
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 496
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 497
    new-instance v3, Lcom/google/googlenav/friend/history/c;

    invoke-direct {v3, v0, p1}, Lcom/google/googlenav/friend/history/c;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/friend/history/b;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 500
    :cond_27
    const/4 v0, 0x0

    .line 501
    invoke-virtual {p2, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 502
    invoke-virtual {p2, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getFloat(I)F

    move-result v0

    .line 505
    :cond_32
    new-instance v2, Lcom/google/googlenav/friend/history/J;

    const/4 v3, 0x3

    invoke-virtual {p2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3, v1, v0}, Lcom/google/googlenav/friend/history/J;-><init>(Lcom/google/googlenav/friend/history/b;Ljava/lang/String;Ljava/util/List;F)V

    return-object v2
.end method

.method a(Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;Landroid/util/Pair;Z)Lcom/google/googlenav/friend/history/f;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 434
    new-instance v0, Lcom/google/googlenav/friend/history/d;

    iget-object v1, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/friend/history/d;-><init>(Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;IIZLcom/google/googlenav/friend/history/e;)V

    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/d;->m()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/history/f;

    .line 439
    return-object v0
.end method

.method a(Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;)Ljava/util/List;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 475
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 476
    invoke-static {p1, p2}, Lcom/google/googlenav/friend/history/b;->a(Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/history/b;

    .line 477
    iget-object v3, p0, Lcom/google/googlenav/friend/history/w;->a:Lcom/google/googlenav/friend/history/s;

    invoke-virtual {v3, v0}, Lcom/google/googlenav/friend/history/s;->b(Lcom/google/googlenav/friend/history/b;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 478
    if-eqz v3, :cond_c

    .line 479
    invoke-virtual {p0, v0, v3}, Lcom/google/googlenav/friend/history/w;->a(Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/friend/history/J;

    move-result-object v0

    .line 481
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 484
    :cond_28
    return-object v1
.end method

.method public a(Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;Z)Ljava/util/List;
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 354
    invoke-static {p1, p2}, Lcom/google/googlenav/friend/history/b;->a(Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;)Ljava/util/List;

    move-result-object v2

    .line 356
    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/friend/history/w;->a(Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;)Ljava/util/List;

    move-result-object v0

    .line 362
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_15

    .line 394
    :goto_14
    return-object v0

    .line 367
    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/friend/history/w;->c:Lcom/google/googlenav/friend/history/L;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/L;->a()Landroid/util/Pair;

    move-result-object v0

    .line 368
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/googlenav/friend/history/w;->a(Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;Landroid/util/Pair;Z)Lcom/google/googlenav/friend/history/f;

    move-result-object v0

    .line 372
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/f;->a()Z

    move-result v2

    if-nez v2, :cond_29

    :cond_27
    move-object v0, v1

    .line 374
    goto :goto_14

    .line 377
    :cond_29
    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/f;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 379
    if-nez v0, :cond_36

    move-object v0, v1

    .line 381
    goto :goto_14

    .line 386
    :cond_36
    invoke-static {v0, v7}, Lcom/google/googlenav/common/io/protocol/b;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 389
    array-length v2, v1

    const/4 v0, 0x0

    :goto_3c
    if-ge v0, v2, :cond_51

    aget-object v3, v1, v0

    .line 390
    iget-object v4, p0, Lcom/google/googlenav/friend/history/w;->a:Lcom/google/googlenav/friend/history/s;

    new-instance v5, Lcom/google/googlenav/friend/history/b;

    invoke-virtual {v3, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/googlenav/friend/history/b;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    invoke-virtual {v4, v5, v3}, Lcom/google/googlenav/friend/history/s;->a(Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 394
    :cond_51
    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/friend/history/w;->a(Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;)Ljava/util/List;

    move-result-object v0

    goto :goto_14
.end method

.method public a()V
    .registers 3

    .prologue
    .line 150
    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v0

    .line 151
    new-instance v1, Lcom/google/googlenav/friend/history/y;

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/friend/history/y;-><init>(Lcom/google/googlenav/friend/history/w;LY/c;)V

    .line 157
    invoke-virtual {v1}, LY/b;->g()V

    .line 158
    return-void
.end method

.method public a(Lcom/google/googlenav/friend/history/b;)V
    .registers 4
    .parameter

    .prologue
    .line 139
    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v0

    .line 140
    new-instance v1, Lcom/google/googlenav/friend/history/x;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/googlenav/friend/history/x;-><init>(Lcom/google/googlenav/friend/history/w;LY/c;Lcom/google/googlenav/friend/history/b;)V

    .line 146
    invoke-virtual {v1}, LY/b;->g()V

    .line 147
    return-void
.end method

.method public a(Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/G;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 244
    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v2

    .line 245
    new-instance v0, Lcom/google/googlenav/friend/history/C;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/friend/history/C;-><init>(Lcom/google/googlenav/friend/history/w;LY/c;Lcom/google/googlenav/friend/history/G;Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;)V

    .line 302
    invoke-virtual {v0}, LY/b;->g()V

    .line 303
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/googlenav/friend/history/H;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 190
    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v0

    .line 191
    new-instance v1, Lcom/google/googlenav/friend/history/z;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/google/googlenav/friend/history/z;-><init>(Lcom/google/googlenav/friend/history/w;LY/c;Ljava/lang/String;Lcom/google/googlenav/friend/history/H;)V

    .line 214
    invoke-virtual {v1}, LY/b;->g()V

    .line 215
    return-void
.end method
