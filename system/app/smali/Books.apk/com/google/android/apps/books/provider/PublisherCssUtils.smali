.class public Lcom/google/android/apps/books/provider/PublisherCssUtils;
.super Ljava/lang/Object;
.source "PublisherCssUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/provider/PublisherCssUtils$SegmentResourcesQuery;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static calculateAndEnsureBookCssUris(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/service/FetchService;Landroid/content/ContentResolver;)Ljava/util/Set;
    .registers 10
    .parameter "account"
    .parameter "volumeId"
    .parameter "mService"
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/books/service/FetchService;",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p0, p1, p3}, Lcom/google/android/apps/books/provider/PublisherCssUtils;->findMostUsedCSS(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/util/Collection;

    move-result-object v0

    .line 51
    .local v0, cssResourceIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v0, :cond_2e

    .line 52
    new-instance v3, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 53
    .local v3, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 55
    .local v2, resId:Ljava/lang/String;
    invoke-interface {p2, p1, v2, p0}, Lcom/google/android/apps/books/service/FetchService;->ensureResourceContent(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    .line 57
    invoke-static {p0, p1, v2}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->buildResourceContentUri(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 58
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 61
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #resId:Ljava/lang/String;
    .end local v3           #result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #uri:Landroid/net/Uri;
    :cond_2e
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 64
    .restart local v3       #result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_33
    return-object v3
.end method

.method private static findMostUsedCSS(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/util/Collection;
    .registers 23
    .parameter "account"
    .parameter "volumeId"
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/books/provider/BooksContract$SegmentResources;->buildDirUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 76
    .local v3, segmentResDirUri:Landroid/net/Uri;
    sget-object v4, Lcom/google/android/apps/books/provider/PublisherCssUtils$SegmentResourcesQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 80
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_f
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_39

    move-result v16

    .line 81
    .local v16, rowsCount:I
    if-gtz v16, :cond_1a

    const/4 v14, 0x0

    .line 108
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :goto_19
    return-object v14

    .line 85
    :cond_1a
    const/4 v2, 0x1

    :try_start_1b
    move/from16 v0, v16

    invoke-static {v0, v2}, Lcom/google/common/collect/HashMultimap;->create(II)Lcom/google/common/collect/HashMultimap;

    move-result-object v19

    .line 86
    .local v19, segmentToResources:Lcom/google/common/collect/HashMultimap;,"Lcom/google/common/collect/HashMultimap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_21
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 87
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 88
    .local v15, resourceId:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 89
    .local v18, segmentId:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Lcom/google/common/collect/HashMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_38
    .catchall {:try_start_1b .. :try_end_38} :catchall_39

    goto :goto_21

    .line 108
    .end local v15           #resourceId:Ljava/lang/String;
    .end local v16           #rowsCount:I
    .end local v18           #segmentId:Ljava/lang/String;
    .end local v19           #segmentToResources:Lcom/google/common/collect/HashMultimap;,"Lcom/google/common/collect/HashMultimap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_39
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 93
    .restart local v16       #rowsCount:I
    .restart local v19       #segmentToResources:Lcom/google/common/collect/HashMultimap;,"Lcom/google/common/collect/HashMultimap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3e
    const/4 v14, 0x0

    .line 94
    .local v14, mostUsedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 95
    .local v13, maxCount:I
    const/4 v2, 0x1

    :try_start_41
    invoke-static {v2}, Lcom/google/common/collect/HashMultiset;->create(I)Lcom/google/common/collect/HashMultiset;

    move-result-object v9

    .line 96
    .local v9, cssSetUsage:Lcom/google/common/collect/HashMultiset;,"Lcom/google/common/collect/HashMultiset<Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-virtual/range {v19 .. v19}, Lcom/google/common/collect/HashMultimap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_4d
    :goto_4d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 97
    .local v17, segment:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/common/collect/HashMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v10

    .line 99
    .local v10, currentSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x1

    invoke-virtual {v9, v10, v2}, Lcom/google/common/collect/HashMultiset;->add(Ljava/lang/Object;I)I
    :try_end_65
    .catchall {:try_start_41 .. :try_end_65} :catchall_39

    move-result v2

    add-int/lit8 v8, v2, 0x1

    .line 100
    .local v8, count:I
    if-ge v13, v8, :cond_4d

    .line 101
    move v13, v8

    .line 102
    move-object v14, v10

    goto :goto_4d

    .line 108
    .end local v8           #count:I
    .end local v10           #currentSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17           #segment:Ljava/lang/String;
    :cond_6d
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_19
.end method
