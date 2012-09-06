.class public Lcom/google/googlenav/prefetch/android/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Ln/am;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ln/am;)V
    .registers 4
    .parameter

    .prologue
    .line 64
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/prefetch/android/z;-><init>(Ln/am;Ljava/util/Map;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private constructor <init>(Ln/am;Ljava/util/Map;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/z;->a:Ln/am;

    .line 70
    iput-object p2, p0, Lcom/google/googlenav/prefetch/android/z;->c:Ljava/util/Map;

    .line 71
    iput-object p3, p0, Lcom/google/googlenav/prefetch/android/z;->b:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/prefetch/android/z;
    .registers 15
    .parameter

    .prologue
    const/4 v13, 0x1

    const/4 v1, 0x0

    const/4 v12, 0x2

    .line 293
    invoke-virtual {p0, v13}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 294
    invoke-static {v0}, Ln/am;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ln/am;

    move-result-object v3

    .line 297
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v4

    .line 298
    invoke-virtual {p0, v12}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v5

    move v2, v1

    .line 299
    :goto_14
    if-ge v2, v5, :cond_43

    .line 300
    invoke-virtual {p0, v12, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v6

    .line 302
    invoke-virtual {v6, v13}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v7

    .line 303
    invoke-virtual {v6, v12}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v8

    .line 305
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    move v0, v1

    .line 306
    :goto_28
    if-ge v0, v8, :cond_38

    .line 307
    invoke-virtual {v6, v12, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(II)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 309
    :cond_38
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_14

    .line 311
    :cond_43
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 312
    new-instance v1, Lcom/google/googlenav/prefetch/android/z;

    invoke-direct {v1, v3, v4, v0}, Lcom/google/googlenav/prefetch/android/z;-><init>(Ln/am;Ljava/util/Map;Ljava/lang/String;)V

    return-object v1
.end method

.method private static a(J)Z
    .registers 8
    .parameter

    .prologue
    .line 157
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    .line 159
    sub-long v2, v0, p0

    const-wide v4, 0x9fa52400L

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1b

    cmp-long v0, p0, v0

    if-lez v0, :cond_1d

    :cond_1b
    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private static d(I)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 334
    packed-switch p0, :pswitch_data_16

    .line 346
    const-string v0, "Unknown Usage"

    :goto_5
    return-object v0

    .line 336
    :pswitch_6
    const-string v0, "My Location"

    goto :goto_5

    .line 338
    :pswitch_9
    const-string v0, "Offline Maps (lab)"

    goto :goto_5

    .line 340
    :pswitch_c
    const-string v0, "Search"

    goto :goto_5

    .line 342
    :pswitch_f
    const-string v0, "Directions Endpoint"

    goto :goto_5

    .line 344
    :pswitch_12
    const-string v0, "Prefetched Intent"

    goto :goto_5

    .line 334
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized a(I)Ljava/util/LinkedList;
    .registers 4
    .parameter

    .prologue
    .line 84
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/z;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()Ln/am;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/z;->a:Ln/am;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/z;->b:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public declared-synchronized b(I)V
    .registers 5
    .parameter

    .prologue
    .line 88
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/googlenav/prefetch/android/z;->a(I)Ljava/util/LinkedList;

    move-result-object v0

    .line 89
    if-nez v0, :cond_2a

    .line 90
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 91
    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/z;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_15
    :goto_15
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_36

    .line 96
    monitor-exit p0

    return-void

    .line 92
    :cond_2a
    :try_start_2a
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_15

    .line 93
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_36

    goto :goto_15

    .line 88
    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Z
    .registers 2

    .prologue
    .line 80
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/z;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
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

.method public declared-synchronized c()V
    .registers 7

    .prologue
    .line 111
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/z;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 113
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 114
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 116
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_b

    .line 123
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 124
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 125
    :cond_2e
    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 126
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 127
    invoke-static {v4, v5}, Lcom/google/googlenav/prefetch/android/z;->a(J)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 128
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_48

    goto :goto_2e

    .line 111
    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0

    .line 133
    :cond_4b
    :try_start_4b
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 134
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_54
    .catchall {:try_start_4b .. :try_end_54} :catchall_48

    goto :goto_b

    .line 137
    :cond_55
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized c(I)V
    .registers 4
    .parameter

    .prologue
    .line 140
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/z;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 141
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 142
    if-ne v0, p1, :cond_b

    .line 143
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_21

    goto :goto_b

    .line 140
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0

    .line 146
    :cond_24
    monitor-exit p0

    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 4
    .parameter

    .prologue
    .line 251
    check-cast p1, Lcom/google/googlenav/prefetch/android/z;

    .line 252
    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/z;->d()I

    move-result v0

    .line 253
    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/z;->d()I

    move-result v1

    .line 256
    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    if-le v0, v1, :cond_12

    const/4 v0, -0x1

    goto :goto_d

    :cond_12
    const/4 v0, 0x1

    goto :goto_d
.end method

.method protected d()I
    .registers 12

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 202
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v2

    .line 203
    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/z;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :cond_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 204
    invoke-virtual {p0, v5}, Lcom/google/googlenav/prefetch/android/z;->a(I)Ljava/util/LinkedList;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_30
    :goto_30
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 206
    sub-long v7, v2, v7

    const-wide/32 v9, 0x5265c00

    div-long/2addr v7, v9

    long-to-int v0, v7

    .line 207
    const/4 v7, 0x1

    if-ne v5, v7, :cond_4f

    .line 211
    const v1, 0x7fffffff

    sub-int/2addr v1, v0

    .line 246
    :cond_4e
    return v1

    .line 215
    :cond_4f
    rsub-int/lit8 v0, v0, 0x1f

    int-to-double v7, v0

    const-wide/high16 v9, 0x3ff0

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x403f

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x4024

    mul-double/2addr v7, v9

    double-to-int v0, v7

    .line 216
    const/4 v7, 0x2

    if-eq v5, v7, :cond_62

    const/4 v7, 0x3

    if-ne v5, v7, :cond_65

    .line 223
    :cond_62
    mul-int/2addr v0, v0

    add-int/2addr v1, v0

    goto :goto_30

    .line 224
    :cond_65
    if-nez v5, :cond_6a

    .line 225
    mul-int/2addr v0, v0

    add-int/2addr v1, v0

    goto :goto_30

    .line 226
    :cond_6a
    const/4 v7, 0x4

    if-ne v5, v7, :cond_30

    .line 240
    const/16 v7, 0x9

    if-lt v0, v7, :cond_75

    mul-int/lit16 v0, v0, 0x3e8

    :goto_73
    add-int/2addr v1, v0

    goto :goto_30

    :cond_75
    mul-int/2addr v0, v0

    goto :goto_73
.end method

.method public declared-synchronized e()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 9

    .prologue
    .line 264
    monitor-enter p0

    :try_start_1
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/ag;->J:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 267
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/z;->a:Ln/am;

    invoke-virtual {v0}, Ln/am;->i()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 268
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 271
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/z;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 272
    invoke-virtual {p0, v0}, Lcom/google/googlenav/prefetch/android/z;->a(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 273
    new-instance v4, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v5, Lcom/google/wireless/googlenav/proto/j2me/ag;->K:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 275
    const/4 v5, 0x1

    invoke-virtual {v4, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 276
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 277
    :goto_40
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 278
    const/4 v5, 0x2

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addLong(IJ)V
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_55

    goto :goto_40

    .line 264
    :catchall_55
    move-exception v0

    monitor-exit p0

    throw v0

    .line 280
    :cond_58
    const/4 v0, 0x2

    :try_start_59
    invoke-virtual {v1, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_1c

    .line 283
    :cond_5d
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/z;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V
    :try_end_63
    .catchall {:try_start_59 .. :try_end_63} :catchall_55

    .line 284
    monitor-exit p0

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    .prologue
    const/16 v10, 0xa

    .line 317
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/z;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 320
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  usage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/google/googlenav/prefetch/android/z;->d(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {p0, v0}, Lcom/google/googlenav/prefetch/android/z;->a(I)Ljava/util/LinkedList;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 323
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    minutes ago: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v6, v1, v6

    const-wide/32 v8, 0xea60

    div-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4f

    .line 326
    :cond_7f
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 328
    :cond_83
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/z;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
