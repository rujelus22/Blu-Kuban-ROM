.class public Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;
.super Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;
.source "MXMultiSelector.java"


# instance fields
.field mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mMaxNum:I

.field mMaxSize:J

.field mSelectedSize:J


# direct methods
.method public constructor <init>(IJ)V
    .registers 7
    .parameter "maxNum"
    .parameter "maxSize"

    .prologue
    const-wide/16 v1, 0x0

    .line 21
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mMap:Ljava/util/HashMap;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mMaxNum:I

    .line 19
    iput-wide v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mSelectedSize:J

    .line 22
    if-eqz p1, :cond_15

    .line 23
    iput p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mMaxNum:I

    .line 24
    :cond_15
    cmp-long v0, p2, v1

    if-eqz v0, :cond_1e

    .line 25
    const-wide/16 v0, 0x400

    mul-long/2addr v0, p2

    iput-wide v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mMaxSize:J

    .line 26
    :cond_1e
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mSelectedSize:J

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->mChangedListner:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$onSelecterChangedListener;

    if-eqz v0, :cond_16

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->mChangedListner:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$onSelecterChangedListener;

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->getCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$onSelecterChangedListener;->onSelecterChanged(I)V

    .line 115
    :cond_16
    return-void
.end method

.method public declared-synchronized getCount()I
    .registers 2

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I
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

.method public getSelectedFile()[Ljava/lang/String;
    .registers 7

    .prologue
    .line 62
    iget-object v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 63
    .local v3, keyset:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 64
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 68
    .local v2, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 69
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 72
    .end local v2           #key:Ljava/lang/String;
    :cond_2d
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 73
    const/4 v0, 0x0

    .line 78
    :goto_34
    return-object v0

    .line 75
    :cond_35
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    .line 76
    .local v0, array:[Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_34
.end method

.method public isSelected(Ljava/lang/String;)Z
    .registers 5
    .parameter "path"

    .prologue
    const/4 v1, 0x1

    .line 134
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 135
    .local v0, selected:Ljava/lang/Boolean;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v1, :cond_12

    .line 138
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 15
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v9, 0x0

    .line 29
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 30
    .local v1, filename:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 33
    .local v2, filesize:J
    if-eqz p2, :cond_77

    .line 34
    iget-object v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_69

    .line 35
    iget-wide v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mMaxSize:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3f

    iget-wide v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mSelectedSize:J

    add-long/2addr v5, v2

    iget-wide v7, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mMaxSize:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_3f

    .line 36
    invoke-virtual {p1, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 37
    iget-object v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->mSizeListener:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$OnOverSizeSelectedListener;

    if-eqz v5, :cond_3e

    .line 38
    iget-object v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->mSizeListener:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$OnOverSizeSelectedListener;

    iget-wide v6, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mMaxSize:J

    iget-wide v8, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mMaxSize:J

    iget-wide v10, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mSelectedSize:J

    sub-long/2addr v8, v10

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$OnOverSizeSelectedListener;->onOverSizeSelected(JJ)V

    .line 59
    :cond_3e
    :goto_3e
    return-void

    .line 41
    :cond_3f
    iget v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mMaxNum:I

    if-eqz v5, :cond_5a

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->getCount()I

    move-result v5

    iget v6, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mMaxNum:I

    if-lt v5, v6, :cond_5a

    .line 42
    invoke-virtual {p1, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 43
    iget-object v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->mMaxNumListener:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$OnMaxNumberSelectedListener;

    if-eqz v5, :cond_3e

    .line 44
    iget-object v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->mMaxNumListener:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$OnMaxNumberSelectedListener;

    iget v6, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mMaxNum:I

    invoke-interface {v5, v6}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$OnMaxNumberSelectedListener;->onMaxNumberSelected(I)V

    goto :goto_3e

    .line 47
    :cond_5a
    iget-object v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mMap:Ljava/util/HashMap;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-wide v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mSelectedSize:J

    add-long/2addr v5, v2

    iput-wide v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mSelectedSize:J

    .line 57
    :cond_69
    :goto_69
    iget-object v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->mChangedListner:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$onSelecterChangedListener;

    if-eqz v5, :cond_3e

    .line 58
    iget-object v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->mChangedListner:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$onSelecterChangedListener;

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->getCount()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$onSelecterChangedListener;->onSelecterChanged(I)V

    goto :goto_3e

    .line 51
    :cond_77
    iget-object v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 53
    .local v4, removedItem:Ljava/lang/Boolean;
    if-eqz v4, :cond_69

    .line 54
    iget-wide v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mSelectedSize:J

    sub-long/2addr v5, v2

    iput-wide v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mSelectedSize:J

    goto :goto_69
.end method

.method public refresh()V
    .registers 9

    .prologue
    .line 90
    new-instance v5, Ljava/util/HashMap;

    iget-object v6, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mMap:Ljava/util/HashMap;

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 91
    .local v5, tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 92
    .local v4, keyset:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 95
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_f
    :goto_f
    :try_start_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_30

    .line 96
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 97
    .local v3, key:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_f

    .line 99
    iget-object v6, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/util/ConcurrentModificationException; {:try_start_f .. :try_end_2b} :catch_2c

    goto :goto_f

    .line 101
    .end local v1           #file:Ljava/io/File;
    .end local v3           #key:Ljava/lang/String;
    :catch_2c
    move-exception v0

    .line 102
    .local v0, e:Ljava/util/ConcurrentModificationException;
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    .line 105
    .end local v0           #e:Ljava/util/ConcurrentModificationException;
    :cond_30
    iget-object v6, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->mChangedListner:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$onSelecterChangedListener;

    if-eqz v6, :cond_3d

    .line 106
    iget-object v6, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->mChangedListner:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$onSelecterChangedListener;

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->getCount()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$onSelecterChangedListener;->onSelecterChanged(I)V

    .line 107
    :cond_3d
    return-void
.end method

.method public setMaxSize(J)V
    .registers 5
    .parameter "maxsize"

    .prologue
    .line 146
    const-wide/16 v0, 0x400

    mul-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mMaxSize:J

    .line 147
    return-void
.end method

.method public setSelected(Ljava/io/File;)V
    .registers 11
    .parameter "file"

    .prologue
    .line 156
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 158
    .local v0, filesize:J
    iget-wide v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mMaxSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_26

    iget-wide v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mSelectedSize:J

    add-long/2addr v2, v0

    iget-wide v4, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mMaxSize:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_26

    .line 159
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->mSizeListener:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$OnOverSizeSelectedListener;

    if-eqz v2, :cond_25

    .line 160
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->mSizeListener:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$OnOverSizeSelectedListener;

    iget-wide v3, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mMaxSize:J

    iget-wide v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mMaxSize:J

    iget-wide v7, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mSelectedSize:J

    sub-long/2addr v5, v7

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$OnOverSizeSelectedListener;->onOverSizeSelected(JJ)V

    .line 170
    :cond_25
    :goto_25
    return-void

    .line 163
    :cond_26
    iget v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mMaxNum:I

    if-eqz v2, :cond_3e

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->getCount()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mMaxNum:I

    if-lt v2, v3, :cond_3e

    .line 164
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->mMaxNumListener:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$OnMaxNumberSelectedListener;

    if-eqz v2, :cond_25

    .line 165
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->mMaxNumListener:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$OnMaxNumberSelectedListener;

    iget v3, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mMaxNum:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$OnMaxNumberSelectedListener;->onMaxNumberSelected(I)V

    goto :goto_25

    .line 168
    :cond_3e
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-wide v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mSelectedSize:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mSelectedSize:J

    goto :goto_25
.end method

.method public setSelectedFiles([Ljava/lang/String;)V
    .registers 8
    .parameter "filePaths"

    .prologue
    .line 174
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v3, :cond_14

    aget-object v1, v0, v2

    .line 176
    .local v1, filePath:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->mMap:Ljava/util/HashMap;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 178
    .end local v1           #filePath:Ljava/lang/String;
    :cond_14
    return-void
.end method
