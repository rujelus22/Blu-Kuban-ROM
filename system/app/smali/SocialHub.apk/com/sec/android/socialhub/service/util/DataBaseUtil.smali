.class public Lcom/sec/android/socialhub/service/util/DataBaseUtil;
.super Ljava/lang/Object;
.source "DataBaseUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bulkInsert(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/ArrayList;)I
    .registers 11
    .parameter "resolver"
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/16 v5, 0x1f4

    .line 15
    const/4 v2, 0x0

    .line 21
    .local v2, ret:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v5, :cond_35

    .line 23
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/content/ContentValues;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/ContentValues;

    invoke-virtual {p0, p1, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v4

    add-int/2addr v2, v4

    .line 57
    :cond_1a
    :goto_1a
    const-string v4, "DataBaseUtil"

    const-string v5, "bulkInsert()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " data is inserted."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return v2

    .line 27
    :cond_35
    const/16 v3, 0x1f4

    .line 29
    .local v3, size:I
    :goto_37
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v5, :cond_5d

    .line 31
    new-array v0, v3, [Landroid/content/ContentValues;

    .line 34
    .local v0, array:[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_40
    if-ge v1, v3, :cond_4d

    .line 36
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    aput-object v4, v0, v1

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 43
    :cond_4d
    const/4 v1, 0x0

    :goto_4e
    if-ge v1, v3, :cond_57

    .line 45
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    .line 48
    :cond_57
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v4

    add-int/2addr v2, v4

    .line 49
    goto :goto_37

    .line 51
    .end local v0           #array:[Landroid/content/ContentValues;
    .end local v1           #index:I
    :cond_5d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1a

    .line 53
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/content/ContentValues;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/ContentValues;

    invoke-virtual {p0, p1, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1a
.end method
