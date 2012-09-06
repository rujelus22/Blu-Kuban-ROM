.class public Lcom/google/android/apps/unveil/env/media/MediaStoreMerger;
.super Ljava/lang/Object;
.source "MediaStoreMerger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$1;,
        Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;,
        Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;
    }
.end annotation


# static fields
.field private static final ORDER_BY:Ljava/lang/String; = "corrected_date_taken desc"

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final cursors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 29
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 31
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/apps/unveil/env/media/MediaStoreUtils;->CORRECTED_DATE_TAKEN_EXPR:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "longitude"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger;->cursors:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-object v0
.end method

.method public static fromUris(Landroid/content/ContentResolver;Ljava/util/List;)Lcom/google/android/apps/unveil/env/media/MediaStoreMerger;
    .registers 12
    .parameter "cr"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Lcom/google/android/apps/unveil/env/media/MediaStoreMerger;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/unveil/env/media/InvalidUriException;
        }
    .end annotation

    .prologue
    .local p1, contentUris:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    const/4 v3, 0x0

    .line 212
    new-instance v8, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger;

    invoke-direct {v8}, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger;-><init>()V

    .line 213
    .local v8, merger:Lcom/google/android/apps/unveil/env/media/MediaStoreMerger;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 215
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger;->PROJECTION:[Ljava/lang/String;

    const-string v5, "corrected_date_taken desc"

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 216
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_a

    .line 217
    new-instance v9, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;

    invoke-direct {v9, v1, v6, v3}, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;-><init>(Landroid/net/Uri;Landroid/database/Cursor;Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$1;)V

    .line 218
    .local v9, mrc:Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;
    invoke-virtual {v9}, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;->moveToFirst()Z

    .line 219
    iget-object v0, v8, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger;->cursors:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 222
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v9           #mrc:Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;
    :cond_30
    return-object v8
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    .line 259
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger;->cursors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;

    .line 260
    .local v1, info:Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;
    #getter for: Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;->cursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;->access$200(Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 262
    .end local v1           #info:Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;
    :cond_1a
    return-void
.end method

.method public nextMediaRow()Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/unveil/env/media/InvalidUriException;
        }
    .end annotation

    .prologue
    .line 226
    const/4 v2, 0x0

    .line 227
    .local v2, maxCursor:Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger;->cursors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;

    .line 229
    .local v0, cursor:Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;
    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;->get()Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;

    move-result-object v4

    .line 230
    .local v4, row:Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;
    if-eqz v4, :cond_7

    .line 235
    if-nez v2, :cond_1d

    .line 236
    move-object v2, v0

    .line 237
    goto :goto_7

    .line 241
    :cond_1d
    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;->get()Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;

    move-result-object v5

    iget-wide v5, v5, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->dateTaken:J

    iget-wide v7, v4, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->dateTaken:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_7

    .line 242
    move-object v2, v0

    goto :goto_7

    .line 247
    .end local v0           #cursor:Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;
    .end local v4           #row:Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;
    :cond_2b
    const/4 v3, 0x0

    .line 248
    .local v3, result:Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;
    if-eqz v2, :cond_35

    .line 249
    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;->get()Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;

    move-result-object v3

    .line 250
    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;->moveToNext()Z

    .line 252
    :cond_35
    return-object v3
.end method
