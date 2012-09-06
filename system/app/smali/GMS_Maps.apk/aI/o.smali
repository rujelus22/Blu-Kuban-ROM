.class public LaI/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:LaI/o;


# instance fields
.field private final b:LaI/z;

.field private c:LaI/q;

.field private d:LaI/p;

.field private final e:Ljava/util/List;

.field private f:LaI/v;

.field private g:Lcom/google/googlenav/android/Y;

.field private final h:Ljava/lang/Object;

.field private i:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private j:J

.field private k:LaI/s;

.field private l:LaI/s;

.field private final m:Ljava/util/Set;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LaI/o;->h:Ljava/lang/Object;

    .line 177
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, LaI/o;->e:Ljava/util/List;

    .line 178
    new-instance v0, LaI/z;

    invoke-direct {v0}, LaI/z;-><init>()V

    iput-object v0, p0, LaI/o;->b:LaI/z;

    .line 179
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, LaI/o;->m:Ljava/util/Set;

    .line 180
    return-void
.end method

.method public static a()LaI/o;
    .registers 1

    .prologue
    .line 204
    sget-object v0, LaI/o;->a:LaI/o;

    return-object v0
.end method

.method private a(LaI/m;)V
    .registers 6
    .parameter

    .prologue
    .line 742
    iget-object v1, p0, LaI/o;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 743
    :try_start_3
    invoke-direct {p0}, LaI/o;->o()Z

    move-result v0

    if-nez v0, :cond_b

    .line 744
    monitor-exit v1

    .line 761
    :goto_a
    return-void

    .line 746
    :cond_b
    invoke-direct {p0}, LaI/o;->m()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    if-nez v0, :cond_42

    .line 747
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v2

    iput-wide v2, p0, LaI/o;->j:J

    .line 748
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LaI/m;->a(I)LaI/m;

    .line 749
    iget-object v0, p0, LaI/o;->c:LaI/q;

    if-eqz v0, :cond_30

    .line 750
    iget-object v0, p0, LaI/o;->c:LaI/q;

    invoke-interface {v0}, LaI/q;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {p1, v0}, LaI/m;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)LaI/m;

    .line 756
    :cond_30
    :goto_30
    invoke-virtual {p1}, LaI/m;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 757
    iget-object v2, p0, LaI/o;->i:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 759
    invoke-static {v0}, LaI/o;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 760
    monitor-exit v1

    goto :goto_a

    :catchall_3f
    move-exception v0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v0

    .line 753
    :cond_42
    :try_start_42
    invoke-direct {p0}, LaI/o;->n()I

    move-result v0

    invoke-virtual {p1, v0}, LaI/m;->a(I)LaI/m;
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_3f

    goto :goto_30
.end method

.method public static a(LaI/q;LaI/p;Lcom/google/googlenav/android/Y;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    sget-object v0, LaI/o;->a:LaI/o;

    if-nez v0, :cond_b

    .line 187
    new-instance v0, LaI/o;

    invoke-direct {v0}, LaI/o;-><init>()V

    sput-object v0, LaI/o;->a:LaI/o;

    .line 189
    :cond_b
    if-eqz p0, :cond_11

    .line 190
    sget-object v0, LaI/o;->a:LaI/o;

    iput-object p0, v0, LaI/o;->c:LaI/q;

    .line 192
    :cond_11
    if-eqz p1, :cond_17

    .line 193
    sget-object v0, LaI/o;->a:LaI/o;

    iput-object p1, v0, LaI/o;->d:LaI/p;

    .line 195
    :cond_17
    if-eqz p2, :cond_1d

    .line 196
    sget-object v0, LaI/o;->a:LaI/o;

    iput-object p2, v0, LaI/o;->g:Lcom/google/googlenav/android/Y;

    .line 198
    :cond_1d
    return-void
.end method

.method private a(LaI/z;)V
    .registers 5
    .parameter

    .prologue
    .line 265
    invoke-virtual {p1}, LaI/z;->b()LaI/s;

    move-result-object v0

    invoke-virtual {v0}, LaI/s;->b()Ljava/lang/String;

    move-result-object v0

    .line 267
    iget-object v1, p0, LaI/o;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 270
    :try_start_b
    iget-object v2, p0, LaI/o;->b:LaI/z;

    invoke-virtual {v2}, LaI/z;->b()LaI/s;

    move-result-object v2

    invoke-virtual {v2}, LaI/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, LaI/o;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 271
    iget-object v0, p0, LaI/o;->b:LaI/z;

    invoke-virtual {v0, p1}, LaI/z;->a(LaI/z;)V

    .line 273
    :cond_20
    monitor-exit v1

    .line 274
    return-void

    .line 273
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_22

    throw v0
.end method

.method static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 10
    .parameter

    .prologue
    const/4 v5, 0x6

    const/4 v8, 0x4

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 630
    const-string v0, "<<<<\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    invoke-virtual {p0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prefix: ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    :cond_35
    invoke-virtual {p0, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prefix_delta: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    :goto_5b
    invoke-virtual {p0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timestamp:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    :cond_81
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 644
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action timestamp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    :cond_cd
    invoke-virtual {p0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_144

    .line 649
    invoke-virtual {p0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timestamp for impression:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    const/4 v0, 0x0

    :goto_f8
    invoke-virtual {v2, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    if-ge v0, v3, :cond_144

    .line 653
    invoke-virtual {v2, v7, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 654
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "impression("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " source:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    add-int/lit8 v0, v0, 0x1

    goto :goto_f8

    .line 638
    :cond_13d
    const-string v0, "prefix_delta: 1\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5b

    .line 659
    :cond_144
    invoke-virtual {p0, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_15d

    .line 660
    invoke-virtual {p0, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 661
    const-string v2, "input_index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    :cond_15d
    const-string v0, ">>>>\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 4
    .parameter

    .prologue
    .line 376
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaI/r;

    .line 378
    invoke-interface {v0}, LaI/r;->g()V

    goto :goto_4

    .line 380
    :cond_14
    return-void
.end method

.method private a(Ljava/util/Set;)V
    .registers 6
    .parameter

    .prologue
    .line 724
    iget-object v0, p0, LaI/o;->i:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-nez v0, :cond_5

    .line 730
    :cond_4
    return-void

    .line 727
    :cond_5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 728
    iget-object v2, p0, LaI/o;->i:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    goto :goto_9
.end method

.method private b(LaI/s;)Ljava/util/List;
    .registers 5
    .parameter

    .prologue
    .line 388
    invoke-virtual {p1}, LaI/s;->d()Ljava/util/Set;

    move-result-object v0

    .line 389
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/cx;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 390
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 391
    invoke-virtual {p0, v0}, LaI/o;->c(I)LaI/r;

    move-result-object v0

    .line 392
    if-eqz v0, :cond_10

    .line 393
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 396
    :cond_2a
    return-object v1
.end method

.method private static b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 888
    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    move v2, v1

    .line 889
    :goto_7
    if-ge v2, v3, :cond_1f

    .line 890
    invoke-virtual {p0, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 891
    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v5

    if-nez v5, :cond_1b

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 896
    :cond_1b
    :goto_1b
    return v0

    .line 889
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1f
    move v0, v1

    .line 896
    goto :goto_1b
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 277
    if-nez p0, :cond_17

    const-string v0, ""

    move-object v1, v0

    .line 278
    :goto_5
    if-nez p1, :cond_1d

    const-string v0, ""

    .line 279
    :goto_9
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_15
    const/4 v0, 0x1

    :goto_16
    return v0

    .line 277
    :cond_17
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_5

    .line 278
    :cond_1d
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 279
    :cond_22
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private c(LaI/s;)V
    .registers 7
    .parameter

    .prologue
    .line 405
    invoke-virtual {p1}, LaI/s;->b()Ljava/lang/String;

    move-result-object v1

    .line 406
    invoke-direct {p0, p1}, LaI/o;->b(LaI/s;)Ljava/util/List;

    move-result-object v2

    .line 408
    iget-object v3, p0, LaI/o;->h:Ljava/lang/Object;

    monitor-enter v3

    .line 409
    :try_start_b
    iget-object v0, p0, LaI/o;->k:LaI/s;

    if-eqz v0, :cond_1d

    iget-object v0, p0, LaI/o;->k:LaI/s;

    invoke-virtual {v0}, LaI/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Laa/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 412
    monitor-exit v3

    .line 453
    :goto_1c
    return-void

    .line 414
    :cond_1d
    invoke-direct {p0}, LaI/o;->o()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 416
    new-instance v4, LaI/m;

    invoke-direct {v4}, LaI/m;-><init>()V

    .line 419
    iget-object v0, p0, LaI/o;->k:LaI/s;

    if-eqz v0, :cond_8a

    iget-object v0, p0, LaI/o;->k:LaI/s;

    invoke-virtual {v0}, LaI/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->i(Ljava/lang/String;)I

    move-result v0

    .line 421
    :goto_36
    invoke-static {v1}, Laa/b;->i(Ljava/lang/String;)I

    move-result v1

    sub-int v0, v1, v0

    invoke-virtual {v4, v0}, LaI/m;->b(I)LaI/m;

    .line 423
    invoke-virtual {p1}, LaI/s;->f()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 424
    invoke-virtual {p1}, LaI/s;->e()I

    move-result v0

    invoke-virtual {v4, v0}, LaI/m;->c(I)LaI/m;

    .line 426
    :cond_4c
    invoke-direct {p0, v4}, LaI/o;->a(LaI/m;)V

    .line 432
    :cond_4f
    iput-object p1, p0, LaI/o;->k:LaI/s;

    .line 433
    monitor-exit v3
    :try_end_52
    .catchall {:try_start_b .. :try_end_52} :catchall_8c

    .line 436
    invoke-direct {p0, v2}, LaI/o;->a(Ljava/util/List;)V

    .line 438
    iget-object v1, p0, LaI/o;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 440
    :try_start_58
    iget-object v0, p0, LaI/o;->b:LaI/z;

    invoke-virtual {v0, p1}, LaI/z;->a(LaI/s;)V

    .line 441
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_8f

    .line 443
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_62
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaI/r;

    .line 447
    :try_start_6e
    invoke-interface {v0, p1}, LaI/r;->a(LaI/s;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_62

    .line 448
    :catch_72
    move-exception v2

    .line 449
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SuggestManager, Provider:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_62

    .line 419
    :cond_8a
    const/4 v0, 0x0

    goto :goto_36

    .line 433
    :catchall_8c
    move-exception v0

    :try_start_8d
    monitor-exit v3
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw v0

    .line 441
    :catchall_8f
    move-exception v0

    :try_start_90
    monitor-exit v1
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    throw v0

    .line 452
    :cond_92
    invoke-direct {p0}, LaI/o;->k()V

    goto :goto_1c
.end method

.method private f(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 927
    invoke-virtual {p0, p1}, LaI/o;->c(I)LaI/r;

    move-result-object v0

    .line 928
    if-eqz v0, :cond_b

    .line 929
    invoke-interface {v0}, LaI/r;->b()Ljava/lang/String;

    move-result-object v0

    .line 932
    :goto_a
    return-object v0

    :cond_b
    const-string v0, "o"

    goto :goto_a
.end method

.method private declared-synchronized k()V
    .registers 4

    .prologue
    .line 519
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, LaI/o;->h:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1d

    .line 520
    :try_start_4
    iget-object v0, p0, LaI/o;->b:LaI/z;

    invoke-virtual {v0}, LaI/z;->c()LaI/z;

    move-result-object v0

    .line 521
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_1a

    .line 522
    :try_start_b
    iget-object v1, p0, LaI/o;->f:LaI/v;

    if-eqz v1, :cond_18

    .line 525
    iget-object v1, p0, LaI/o;->f:LaI/v;

    invoke-virtual {p0}, LaI/o;->h()Z

    move-result v2

    invoke-interface {v1, v0, v2}, LaI/v;->a(LaI/z;Z)V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_1d

    .line 527
    :cond_18
    monitor-exit p0

    return-void

    .line 521
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1d

    .line 519
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private l()V
    .registers 8

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 673
    iget-object v1, p0, LaI/o;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 674
    :try_start_7
    iget-object v0, p0, LaI/o;->b:LaI/z;

    invoke-virtual {v0}, LaI/z;->e()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 675
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_1c

    .line 676
    invoke-direct {p0}, LaI/o;->n()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 678
    invoke-direct {p0}, LaI/o;->m()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 679
    if-nez v1, :cond_1f

    .line 708
    :goto_1b
    return-void

    .line 675
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0

    .line 687
    :cond_1f
    invoke-virtual {v1, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 688
    const/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 690
    new-instance v2, LaI/m;

    invoke-direct {v2}, LaI/m;-><init>()V

    .line 691
    invoke-virtual {v2, v0}, LaI/m;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)LaI/m;

    .line 694
    invoke-virtual {v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 695
    invoke-virtual {v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-virtual {v2, v0}, LaI/m;->b(I)LaI/m;

    .line 698
    :cond_3f
    invoke-virtual {v1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 699
    invoke-virtual {v1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-virtual {v2, v0}, LaI/m;->c(I)LaI/m;

    .line 702
    :cond_4c
    invoke-direct {p0, v2}, LaI/o;->a(LaI/m;)V

    goto :goto_1b

    .line 704
    :cond_50
    invoke-virtual {v1, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 706
    invoke-static {v1}, LaI/o;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_1b
.end method

.method private m()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5

    .prologue
    .line 711
    iget-object v1, p0, LaI/o;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 712
    :try_start_3
    iget-object v0, p0, LaI/o;->i:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_1b

    .line 713
    iget-object v0, p0, LaI/o;->i:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 714
    if-lez v0, :cond_1b

    .line 715
    iget-object v2, p0, LaI/o;->i:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v3, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    monitor-exit v1

    .line 720
    :goto_1a
    return-object v0

    .line 719
    :cond_1b
    monitor-exit v1

    .line 720
    const/4 v0, 0x0

    goto :goto_1a

    .line 719
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method private n()I
    .registers 7

    .prologue
    .line 765
    iget-object v1, p0, LaI/o;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 766
    :try_start_3
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v2

    iget-wide v4, p0, LaI/o;->j:J

    sub-long/2addr v2, v4

    .line 767
    iget-wide v4, p0, LaI/o;->j:J

    add-long/2addr v4, v2

    iput-wide v4, p0, LaI/o;->j:J

    .line 768
    long-to-int v0, v2

    monitor-exit v1

    return v0

    .line 769
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private o()Z
    .registers 3

    .prologue
    .line 877
    iget-object v1, p0, LaI/o;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 878
    :try_start_3
    iget-object v0, p0, LaI/o;->i:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    .line 879
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method


# virtual methods
.method a(Ljava/lang/String;Z)I
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 540
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 564
    :goto_8
    return v0

    .line 543
    :cond_9
    iget-object v3, p0, LaI/o;->h:Ljava/lang/Object;

    monitor-enter v3

    move v1, v2

    .line 544
    :goto_d
    :try_start_d
    iget-object v4, p0, LaI/o;->b:LaI/z;

    invoke-virtual {v4}, LaI/z;->d()I

    move-result v4

    if-ge v1, v4, :cond_4a

    .line 545
    iget-object v4, p0, LaI/o;->b:LaI/z;

    invoke-virtual {v4, v1}, LaI/z;->a(I)LaI/w;

    move-result-object v4

    .line 546
    invoke-virtual {v4}, LaI/w;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 549
    if-eqz p2, :cond_44

    .line 551
    invoke-virtual {v4}, LaI/w;->a()I

    move-result v4

    move v0, v2

    .line 552
    :goto_2c
    if-ge v2, v1, :cond_3f

    .line 553
    iget-object v5, p0, LaI/o;->b:LaI/z;

    invoke-virtual {v5, v2}, LaI/z;->a(I)LaI/w;

    move-result-object v5

    invoke-virtual {v5}, LaI/w;->a()I

    move-result v5

    if-ne v5, v4, :cond_3c

    .line 554
    add-int/lit8 v0, v0, 0x1

    .line 552
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 557
    :cond_3f
    monitor-exit v3

    goto :goto_8

    .line 562
    :catchall_41
    move-exception v0

    monitor-exit v3
    :try_end_43
    .catchall {:try_start_d .. :try_end_43} :catchall_41

    throw v0

    .line 559
    :cond_44
    :try_start_44
    monitor-exit v3

    move v0, v1

    goto :goto_8

    .line 544
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 562
    :cond_4a
    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_41

    goto :goto_8
.end method

.method public a(III)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 786
    :try_start_0
    iget-object v1, p0, LaI/o;->h:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_3} :catch_ac

    .line 787
    :try_start_3
    iget-object v0, p0, LaI/o;->b:LaI/z;

    invoke-virtual {v0, p2}, LaI/z;->a(I)LaI/w;

    move-result-object v0

    .line 788
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_a9

    .line 796
    :goto_a
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/gV;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 797
    const/4 v1, 0x1

    invoke-direct {p0}, LaI/o;->n()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 798
    const/4 v1, 0x2

    invoke-virtual {v2, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 799
    const/4 v1, 0x3

    invoke-virtual {v2, v1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 800
    const/4 v1, 0x5

    invoke-virtual {v2, v1, p3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 803
    if-eqz v0, :cond_b0

    .line 804
    const/4 v1, 0x0

    :goto_28
    invoke-virtual {v0}, LaI/w;->m()[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_b0

    .line 805
    invoke-virtual {v0}, LaI/w;->m()[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    aget-object v3, v3, v1

    .line 806
    new-instance v4, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v5, Lcom/google/wireless/googlenav/proto/j2me/gV;->f:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 807
    const/4 v5, 0x1

    invoke-virtual {v0}, LaI/w;->b()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v7

    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 809
    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 810
    const/4 v5, 0x2

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 812
    :cond_62
    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 813
    const/4 v5, 0x3

    const/4 v6, 0x6

    invoke-virtual {v3, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 815
    :cond_72
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 816
    const/4 v5, 0x4

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 819
    :cond_82
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 820
    const/4 v5, 0x5

    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 822
    :cond_92
    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 823
    const/4 v5, 0x6

    const/4 v6, 0x7

    invoke-virtual {v3, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v3

    invoke-virtual {v4, v5, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 826
    :cond_a2
    const/4 v3, 0x6

    invoke-virtual {v2, v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 804
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 788
    :catchall_a9
    move-exception v0

    :try_start_aa
    monitor-exit v1
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    :try_start_ab
    throw v0
    :try_end_ac
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_ab .. :try_end_ac} :catch_ac

    .line 789
    :catch_ac
    move-exception v0

    .line 792
    const/4 v0, 0x0

    goto/16 :goto_a

    .line 829
    :cond_b0
    iget-object v1, p0, LaI/o;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 830
    :try_start_b3
    invoke-direct {p0}, LaI/o;->m()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 832
    if-eqz v0, :cond_c0

    .line 833
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 835
    invoke-static {v0}, LaI/o;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 837
    :cond_c0
    monitor-exit v1

    .line 838
    return-void

    .line 837
    :catchall_c2
    move-exception v0

    monitor-exit v1
    :try_end_c4
    .catchall {:try_start_b3 .. :try_end_c4} :catchall_c2

    throw v0
.end method

.method public a(LaI/r;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 223
    invoke-interface {p1, p2}, LaI/r;->b(I)V

    .line 224
    iget-object v0, p0, LaI/o;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    return-void
.end method

.method public a(LaI/s;)V
    .registers 5
    .parameter

    .prologue
    .line 463
    invoke-virtual {p1}, LaI/s;->d()Ljava/util/Set;

    move-result-object v0

    .line 464
    iget-object v1, p0, LaI/o;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 465
    :try_start_7
    iget-object v2, p0, LaI/o;->b:LaI/z;

    invoke-virtual {v2, v0}, LaI/z;->a(Ljava/util/Set;)V

    .line 466
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_21

    .line 470
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaI/o;->c(I)LaI/r;

    move-result-object v0

    check-cast v0, LaI/i;

    .line 471
    if-eqz v0, :cond_1d

    .line 472
    invoke-virtual {p1}, LaI/s;->c()I

    move-result v1

    invoke-virtual {v0, v1}, LaI/i;->c(I)V

    .line 475
    :cond_1d
    invoke-direct {p0, p1}, LaI/o;->c(LaI/s;)V

    .line 476
    return-void

    .line 466
    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public a(LaI/v;)V
    .registers 2
    .parameter

    .prologue
    .line 936
    iput-object p1, p0, LaI/o;->f:LaI/v;

    .line 937
    return-void
.end method

.method public a(LaI/z;ZI)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 315
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-direct {p0, p1}, LaI/o;->a(LaI/z;)V

    .line 317
    invoke-direct {p0}, LaI/o;->o()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 318
    invoke-direct {p0}, LaI/o;->l()V

    .line 320
    :cond_f
    if-eqz p2, :cond_14

    .line 321
    invoke-direct {p0}, LaI/o;->k()V

    .line 324
    :cond_14
    invoke-virtual {p0}, LaI/o;->h()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 326
    iget-object v1, p0, LaI/o;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 327
    :try_start_1d
    iget-object v0, p0, LaI/o;->l:LaI/s;

    if-eqz v0, :cond_39

    invoke-virtual {p1}, LaI/z;->b()LaI/s;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {p1}, LaI/z;->b()LaI/s;

    move-result-object v0

    invoke-virtual {v0}, LaI/s;->g()J

    move-result-wide v2

    iget-object v0, p0, LaI/o;->l:LaI/s;

    invoke-virtual {v0}, LaI/s;->g()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_3f

    .line 330
    :cond_39
    invoke-virtual {p1}, LaI/z;->b()LaI/s;

    move-result-object v0

    iput-object v0, p0, LaI/o;->l:LaI/s;

    .line 332
    :cond_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_1d .. :try_end_40} :catchall_5c

    .line 336
    :cond_40
    invoke-virtual {p0, p3}, LaI/o;->c(I)LaI/r;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_5f

    .line 338
    invoke-interface {v0}, LaI/r;->d()[I

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4c
    if-ge v0, v2, :cond_5f

    aget v3, v1, v0

    .line 339
    iget-object v4, p0, LaI/o;->m:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 332
    :catchall_5c
    move-exception v0

    :try_start_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v0

    .line 342
    :cond_5f
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 586
    sget-object v0, Lcom/google/googlenav/ag;->a:Lcom/google/googlenav/ag;

    invoke-virtual {p0, p1, p2, v0}, LaI/o;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ag;)V

    .line 587
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ag;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 603
    iget-object v1, p0, LaI/o;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 604
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, LaI/o;->a(Ljava/lang/String;Z)I

    move-result v0

    .line 605
    const/4 v2, -0x1

    if-ne v0, v2, :cond_d

    .line 606
    monitor-exit v1

    .line 626
    :goto_c
    return-void

    .line 608
    :cond_d
    invoke-virtual {p0, v0}, LaI/o;->d(I)LaI/w;

    move-result-object v2

    .line 609
    invoke-virtual {p0}, LaI/o;->c()Ljava/lang/String;

    move-result-object v3

    .line 610
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4}, LaI/o;->a(Ljava/lang/String;Z)I

    move-result v4

    .line 611
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_e9

    .line 613
    const/16 v1, 0x49

    const-string v5, "s"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Laa/b;->i(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "s"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Laa/b;->i(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "o"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, LaI/w;->a()I

    move-result v6

    invoke-direct {p0, v6}, LaI/o;->f(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "y"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, LaI/w;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "p"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "u"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/googlenav/ag;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v5, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 611
    :catchall_e9
    move-exception v0

    :try_start_ea
    monitor-exit v1
    :try_end_eb
    .catchall {:try_start_ea .. :try_end_eb} :catchall_e9

    throw v0
.end method

.method public a(I)Z
    .registers 4
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, LaI/o;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaI/r;

    .line 251
    invoke-interface {v0}, LaI/r;->c()I

    move-result v0

    if-ne v0, p1, :cond_6

    .line 252
    const/4 v0, 0x1

    .line 255
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public b()V
    .registers 4

    .prologue
    .line 297
    iget-object v0, p0, LaI/o;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaI/r;

    .line 298
    invoke-interface {v0}, LaI/r;->h()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 301
    invoke-interface {v0}, LaI/r;->c()I

    move-result v0

    invoke-virtual {p0, v0}, LaI/o;->b(I)V

    goto :goto_6

    .line 304
    :cond_20
    return-void
.end method

.method public b(I)V
    .registers 4
    .parameter

    .prologue
    .line 286
    iget-object v1, p0, LaI/o;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 287
    :try_start_3
    iget-object v0, p0, LaI/o;->b:LaI/z;

    invoke-virtual {v0, p1}, LaI/z;->b(I)V

    .line 288
    monitor-exit v1

    .line 289
    return-void

    .line 288
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public c(I)LaI/r;
    .registers 5
    .parameter

    .prologue
    .line 482
    iget-object v0, p0, LaI/o;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaI/r;

    .line 483
    invoke-interface {v0}, LaI/r;->c()I

    move-result v2

    if-ne v2, p1, :cond_6

    .line 487
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 349
    iget-object v1, p0, LaI/o;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 350
    :try_start_3
    iget-object v0, p0, LaI/o;->b:LaI/z;

    invoke-virtual {v0}, LaI/z;->b()LaI/s;

    move-result-object v0

    invoke-virtual {v0}, LaI/s;->b()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 351
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public d()LaI/s;
    .registers 3

    .prologue
    .line 355
    iget-object v1, p0, LaI/o;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 356
    :try_start_3
    iget-object v0, p0, LaI/o;->l:LaI/s;

    monitor-exit v1

    return-object v0

    .line 357
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public d(I)LaI/w;
    .registers 4
    .parameter

    .prologue
    .line 574
    iget-object v1, p0, LaI/o;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 575
    :try_start_3
    iget-object v0, p0, LaI/o;->b:LaI/z;

    invoke-virtual {v0, p1}, LaI/z;->a(I)LaI/w;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 576
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public e()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, LaI/o;->c:LaI/q;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, LaI/o;->c:LaI/q;

    invoke-interface {v0}, LaI/q;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto :goto_5
.end method

.method public e(I)V
    .registers 5
    .parameter

    .prologue
    .line 857
    iget-object v1, p0, LaI/o;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 858
    :try_start_3
    invoke-direct {p0}, LaI/o;->o()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 859
    invoke-virtual {p0}, LaI/o;->j()V

    .line 861
    :cond_c
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/gV;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, LaI/o;->i:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 862
    if-eqz p1, :cond_1d

    .line 863
    iget-object v0, p0, LaI/o;->i:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 865
    :cond_1d
    iget-object v0, p0, LaI/o;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 866
    iget-object v0, p0, LaI/o;->b:LaI/z;

    invoke-virtual {v0}, LaI/z;->a()V

    .line 867
    const/4 v0, 0x0

    iput-object v0, p0, LaI/o;->k:LaI/s;

    .line 868
    const/4 v0, 0x0

    iput-object v0, p0, LaI/o;->l:LaI/s;

    .line 869
    monitor-exit v1

    .line 870
    return-void

    .line 869
    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public f()Lat/B;
    .registers 2

    .prologue
    .line 368
    iget-object v0, p0, LaI/o;->d:LaI/p;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, LaI/o;->d:LaI/p;

    invoke-interface {v0}, LaI/p;->a()Lat/B;

    move-result-object v0

    goto :goto_5
.end method

.method public g()Lcom/google/common/collect/ImmutableSet;
    .registers 4

    .prologue
    .line 494
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->g()Lcom/google/common/collect/bD;

    move-result-object v1

    .line 495
    iget-object v0, p0, LaI/o;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaI/r;

    .line 496
    invoke-interface {v0}, LaI/r;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/bD;->b(Ljava/lang/Object;)Lcom/google/common/collect/bD;

    goto :goto_a

    .line 498
    :cond_22
    invoke-virtual {v1}, Lcom/google/common/collect/bD;->a()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .registers 3

    .prologue
    .line 505
    iget-object v0, p0, LaI/o;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaI/r;

    .line 506
    invoke-interface {v0}, LaI/r;->f()Z

    move-result v0

    if-nez v0, :cond_6

    .line 507
    const/4 v0, 0x0

    .line 510
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public i()V
    .registers 4

    .prologue
    .line 845
    invoke-direct {p0}, LaI/o;->m()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 846
    if-eqz v0, :cond_e

    .line 847
    const/4 v1, 0x3

    invoke-virtual {p0}, LaI/o;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 849
    :cond_e
    return-void
.end method

.method public j()V
    .registers 3

    .prologue
    .line 904
    iget-object v1, p0, LaI/o;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 905
    :try_start_3
    invoke-direct {p0}, LaI/o;->o()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 914
    :cond_9
    :goto_9
    const/4 v0, 0x0

    iput-object v0, p0, LaI/o;->i:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 915
    const/4 v0, 0x0

    iput-object v0, p0, LaI/o;->k:LaI/s;

    .line 916
    const/4 v0, 0x0

    iput-object v0, p0, LaI/o;->l:LaI/s;

    .line 917
    iget-object v0, p0, LaI/o;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 918
    iget-object v0, p0, LaI/o;->b:LaI/z;

    invoke-virtual {v0}, LaI/z;->a()V

    .line 920
    monitor-exit v1

    .line 921
    return-void

    .line 907
    :cond_1e
    iget-object v0, p0, LaI/o;->i:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0}, LaI/o;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 910
    iget-object v0, p0, LaI/o;->m:Ljava/util/Set;

    invoke-direct {p0, v0}, LaI/o;->a(Ljava/util/Set;)V

    .line 911
    iget-object v0, p0, LaI/o;->i:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0}, LaT/k;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_9

    .line 920
    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v0
.end method
