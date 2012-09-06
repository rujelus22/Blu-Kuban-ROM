.class public LaS/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/List;

.field private b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaS/b;->a:Ljava/util/List;

    .line 480
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, LaS/b;->b:Ljava/util/Map;

    .line 482
    if-nez p1, :cond_13

    .line 494
    :cond_12
    return-void

    .line 486
    :cond_13
    const/4 v0, 0x0

    :goto_14
    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 487
    invoke-virtual {p1, v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 489
    invoke-static {v1}, LaS/h;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)LaS/h;

    move-result-object v1

    .line 490
    if-eqz v1, :cond_27

    .line 491
    invoke-direct {p0, v1}, LaS/b;->a(LaS/h;)V

    .line 486
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method

.method private a(LaS/h;)V
    .registers 6
    .parameter

    .prologue
    .line 497
    iget-object v0, p0, LaS/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    invoke-static {p1}, LaS/h;->a(LaS/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaS/d;

    .line 499
    iget-object v2, p0, LaS/b;->b:Ljava/util/Map;

    iget-object v3, v0, LaS/d;->a:LaS/e;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 500
    iget-object v2, p0, LaS/b;->b:Ljava/util/Map;

    iget-object v0, v0, LaS/d;->a:LaS/e;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 503
    :cond_2b
    return-void
.end method


# virtual methods
.method public a(LaS/e;)LaS/h;
    .registers 3
    .parameter

    .prologue
    .line 510
    iget-object v0, p0, LaS/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaS/h;

    return-object v0
.end method
