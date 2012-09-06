.class public Lcom/google/android/finsky/widget/WidgetUtils;
.super Ljava/lang/Object;
.source "WidgetUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDips(Landroid/content/Context;I)I
    .registers 5
    .parameter "context"
    .parameter "dimensResource"

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 122
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static parseSparseIntArray(Ljava/lang/String;)Landroid/util/SparseIntArray;
    .registers 16
    .parameter "map"

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 62
    const-string v10, ","

    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 63
    .local v9, tuples:[Ljava/lang/String;
    new-instance v6, Landroid/util/SparseIntArray;

    array-length v10, v9

    invoke-direct {v6, v10}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 64
    .local v6, result:Landroid/util/SparseIntArray;
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_12
    if-ge v3, v4, :cond_54

    aget-object v8, v0, v3

    .line 65
    .local v8, tuple:Ljava/lang/String;
    const/16 v10, 0x3a

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 66
    .local v2, colonIndex:I
    if-gez v2, :cond_2c

    .line 67
    const-string v10, "Invalid tuple: map=%s, tuple=%s"

    new-array v11, v14, [Ljava/lang/Object;

    aput-object p0, v11, v12

    aput-object v8, v11, v13

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :goto_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 71
    :cond_2c
    const/4 v10, 0x0

    :try_start_2d
    invoke-virtual {v8, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 72
    .local v1, backend:I
    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 73
    .local v7, score:I
    invoke-virtual {v6, v1, v7}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_46} :catch_47

    goto :goto_29

    .line 74
    .end local v1           #backend:I
    .end local v7           #score:I
    :catch_47
    move-exception v5

    .line 75
    .local v5, nfe:Ljava/lang/NumberFormatException;
    const-string v10, "Malformed key or value: map=%s, tuple=%s"

    new-array v11, v14, [Ljava/lang/Object;

    aput-object p0, v11, v12

    aput-object v8, v11, v13

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_29

    .line 78
    .end local v2           #colonIndex:I
    .end local v5           #nfe:Ljava/lang/NumberFormatException;
    .end local v8           #tuple:Ljava/lang/String;
    :cond_54
    return-object v6
.end method

.method public static registerLibraryMutationsListener(Landroid/content/Context;Lcom/google/android/finsky/library/LibraryReplicators;)V
    .registers 3
    .parameter "context"
    .parameter "replicators"

    .prologue
    .line 103
    new-instance v0, Lcom/google/android/finsky/widget/WidgetUtils$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/widget/WidgetUtils$1;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Lcom/google/android/finsky/library/LibraryReplicators;->addListener(Lcom/google/android/finsky/library/LibraryReplicators$Listener;)V

    .line 118
    return-void
.end method

.method public static serializeSparseIntArray(Landroid/util/SparseIntArray;)Ljava/lang/String;
    .registers 7
    .parameter "array"

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 87
    .local v2, isFirst:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_30

    .line 88
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 89
    .local v3, key:I
    if-gez v3, :cond_16

    .line 87
    :goto_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 92
    :cond_16
    if-nez v2, :cond_1d

    .line 93
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    :cond_1d
    const/4 v2, 0x0

    .line 96
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 98
    .end local v3           #key:I
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static translate(Ljava/lang/String;)I
    .registers 4
    .parameter "backendType"

    .prologue
    .line 24
    const-string v0, "all"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 25
    const/4 v0, 0x0

    .line 35
    :goto_9
    return v0

    .line 26
    :cond_a
    const-string v0, "apps"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 27
    const/4 v0, 0x3

    goto :goto_9

    .line 28
    :cond_14
    const-string v0, "books"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 29
    const/4 v0, 0x1

    goto :goto_9

    .line 30
    :cond_1e
    const-string v0, "movies"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 31
    const/4 v0, 0x4

    goto :goto_9

    .line 32
    :cond_28
    const-string v0, "music"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 33
    const/4 v0, 0x2

    goto :goto_9

    .line 34
    :cond_32
    const-string v0, "magazines"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 35
    const/4 v0, 0x6

    goto :goto_9

    .line 37
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid backend type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static translate(I)Ljava/lang/String;
    .registers 4
    .parameter "backendId"

    .prologue
    .line 41
    packed-switch p0, :pswitch_data_2e

    .line 55
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid backend ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :pswitch_1c
    const-string v0, "apps"

    .line 53
    :goto_1e
    return-object v0

    .line 45
    :pswitch_1f
    const-string v0, "books"

    goto :goto_1e

    .line 47
    :pswitch_22
    const-string v0, "movies"

    goto :goto_1e

    .line 49
    :pswitch_25
    const-string v0, "music"

    goto :goto_1e

    .line 51
    :pswitch_28
    const-string v0, "magazines"

    goto :goto_1e

    .line 53
    :pswitch_2b
    const-string v0, "all"

    goto :goto_1e

    .line 41
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_1f
        :pswitch_25
        :pswitch_1c
        :pswitch_22
        :pswitch_3
        :pswitch_28
    .end packed-switch
.end method
