.class public Lcom/google/android/apps/unveil/env/LastTextRestrictsProvider;
.super Ljava/lang/Object;
.source "LastTextRestrictsProvider.java"


# static fields
.field protected static final MAX_STORED_TEXT_RESTRICTS:I = 0x14

.field private static final WHERE_CLAUSE:Ljava/lang/String; = "text_restrict = ?"

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final contentProvider:Landroid/content/ContentResolver;

.field private final defaultUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/env/LastTextRestrictsProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/content/Context;)V
    .registers 4
    .parameter "contentProvider"
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/LastTextRestrictsProvider;->contentProvider:Landroid/content/ContentResolver;

    .line 34
    invoke-static {p2}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$LastTextRestricts;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/LastTextRestrictsProvider;->defaultUri:Landroid/net/Uri;

    .line 35
    return-void
.end method

.method private getTextRestricts()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/LastTextRestrictsProvider;->contentProvider:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/apps/unveil/env/LastTextRestrictsProvider;->defaultUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "text_restrict"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 76
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_21

    .line 77
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 78
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 85
    :goto_20
    return-object v7

    .line 80
    :cond_21
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    .local v7, restricts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2d
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_44

    .line 82
    const-string v0, "text_restrict"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2d

    .line 84
    :cond_44
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_20
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/LastTextRestrictsProvider;->contentProvider:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/apps/unveil/env/LastTextRestrictsProvider;->defaultUri:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "text_restrict"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public putTextRestrict(Ljava/lang/String;)V
    .registers 11
    .parameter "textRestrict"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 57
    :goto_8
    return-void

    .line 41
    :cond_9
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/LastTextRestrictsProvider;->getTextRestricts()Ljava/util/List;

    move-result-object v0

    .line 42
    .local v0, textRestricts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 43
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 44
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "created"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 46
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/LastTextRestrictsProvider;->contentProvider:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/google/android/apps/unveil/env/LastTextRestrictsProvider;->defaultUri:Landroid/net/Uri;

    const-string v4, "text_restrict = ?"

    new-array v5, v7, [Ljava/lang/String;

    aput-object p1, v5, v8

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_8

    .line 48
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_33
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x14

    if-ne v2, v3, :cond_54

    .line 50
    iget-object v3, p0, Lcom/google/android/apps/unveil/env/LastTextRestrictsProvider;->contentProvider:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/google/android/apps/unveil/env/LastTextRestrictsProvider;->defaultUri:Landroid/net/Uri;

    const-string v5, "text_restrict = ?"

    new-array v6, v7, [Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v6, v8

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 53
    :cond_54
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 54
    .restart local v1       #values:Landroid/content/ContentValues;
    const-string v2, "text_restrict"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/LastTextRestrictsProvider;->contentProvider:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/google/android/apps/unveil/env/LastTextRestrictsProvider;->defaultUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_8
.end method
