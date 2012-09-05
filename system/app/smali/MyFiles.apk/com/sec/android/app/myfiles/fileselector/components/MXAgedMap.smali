.class public Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;
.super Ljava/lang/Object;
.source "MXAgedMap.java"


# instance fields
.field mAgeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mMaxSize:I

.field mMinSize:I


# direct methods
.method public constructor <init>(Ljava/util/Map;II)V
    .registers 6
    .parameter "map"
    .parameter "maxSize"
    .parameter "minSize"

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;->mAgeMap:Ljava/util/HashMap;

    .line 29
    iput v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;->mMaxSize:I

    .line 31
    iput v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;->mMinSize:I

    .line 45
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;->mMap:Ljava/util/Map;

    .line 47
    iput p2, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;->mMaxSize:I

    .line 49
    iput p3, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;->mMinSize:I

    .line 51
    return-void
.end method

.method private aging()V
    .registers 8

    .prologue
    .line 92
    iget-object v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;->mAgeMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 93
    :try_start_3
    new-instance v3, Ljava/util/HashMap;

    iget-object v4, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;->mAgeMap:Ljava/util/HashMap;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 94
    .local v3, tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 95
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_39

    move-result v4

    if-eqz v4, :cond_3c

    .line 97
    :try_start_18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 98
    .local v2, key:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;->mAgeMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_18 .. :try_end_33} :catchall_39
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_33} :catch_34

    goto :goto_12

    .line 99
    .end local v2           #key:Ljava/lang/String;
    :catch_34
    move-exception v0

    .line 100
    .local v0, e:Ljava/lang/Exception;
    :try_start_35
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12

    .line 103
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_39
    move-exception v4

    monitor-exit v5
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_39

    throw v4

    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3       #tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3c
    :try_start_3c
    monitor-exit v5
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_39

    .line 104
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;->mAgeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 61
    return-void
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "key"

    .prologue
    .line 110
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;->mAgeMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 114
    :try_start_3
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;->aging()V

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;->mAgeMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    monitor-exit v1

    return-object v0

    .line 120
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 67
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;->mAgeMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 71
    :try_start_3
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;->aging()V

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;->mAgeMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;->mMaxSize:I

    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;->mMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-gt v0, v2, :cond_22

    .line 81
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;->removeOldItem()V

    .line 85
    :cond_22
    monitor-exit v1

    return-object p2

    .line 87
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public removeOldItem()V
    .registers 10

    .prologue
    .line 128
    iget-object v7, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;->mAgeMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 132
    :try_start_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashMap;

    iget-object v6, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;->mAgeMap:Ljava/util/HashMap;

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 135
    .local v5, tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 137
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_17
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_3c

    move-result v6

    if-eqz v6, :cond_3f

    .line 139
    :try_start_1d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 140
    .local v2, item:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;->mAgeMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v8, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;->mMinSize:I

    if-le v6, v8, :cond_17

    .line 141
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catchall {:try_start_1d .. :try_end_36} :catchall_3c
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_36} :catch_37

    goto :goto_17

    .line 143
    .end local v2           #item:Ljava/lang/String;
    :catch_37
    move-exception v1

    .line 144
    .local v1, e:Ljava/lang/Exception;
    :try_start_38
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17

    .line 167
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_3c
    move-exception v6

    monitor-exit v7
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_3c

    throw v6

    .line 148
    .restart local v3       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3f
    :try_start_3f
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 150
    :goto_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_3c

    move-result v6

    if-eqz v6, :cond_6d

    .line 153
    :try_start_49
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 154
    .restart local v2       #item:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;->mMap:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 155
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5d

    .line 156
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 157
    const/4 v0, 0x0

    .line 159
    :cond_5d
    iget-object v6, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;->mMap:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v6, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;->mAgeMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_67
    .catchall {:try_start_49 .. :try_end_67} :catchall_3c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_67} :catch_68

    goto :goto_43

    .line 161
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #item:Ljava/lang/String;
    :catch_68
    move-exception v1

    .line 162
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_69
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_43

    .line 167
    .end local v1           #e:Ljava/lang/Exception;
    :cond_6d
    monitor-exit v7
    :try_end_6e
    .catchall {:try_start_69 .. :try_end_6e} :catchall_3c

    .line 169
    return-void
.end method
