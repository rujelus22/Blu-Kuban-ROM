.class Lcom/google/android/picasasync/PicasaSyncHelper$2;
.super Ljava/lang/Object;
.source "PicasaSyncHelper.java"

# interfaces
.implements Lcom/google/android/picasasync/PicasaApi$EntryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/picasasync/PicasaSyncHelper;->syncPhotosForAlbumLocked(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/AlbumEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDisplayIndex:I

.field private mKey:Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

.field final synthetic this$0:Lcom/google/android/picasasync/PicasaSyncHelper;

.field final synthetic val$album:Lcom/google/android/picasasync/AlbumEntry;

.field final synthetic val$context:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

.field final synthetic val$db:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic val$entries:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/android/picasasync/PicasaSyncHelper;Ljava/util/ArrayList;Lcom/google/android/picasasync/AlbumEntry;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->this$0:Lcom/google/android/picasasync/PicasaSyncHelper;

    iput-object p2, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$entries:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$album:Lcom/google/android/picasasync/AlbumEntry;

    iput-object p4, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p5, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$context:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    new-instance v0, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    invoke-direct {v0}, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;-><init>()V

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->mKey:Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    .line 376
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->mDisplayIndex:I

    return-void
.end method


# virtual methods
.method public handleEntry(Landroid/content/ContentValues;)V
    .registers 11
    .parameter "values"

    .prologue
    .line 380
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->mKey:Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    const-string v5, "_id"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->updateId(J)Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    move-result-object v2

    .line 382
    .local v2, key:Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$entries:Ljava/util/ArrayList;

    invoke-static {v4, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 383
    .local v1, index:I
    if-ltz v1, :cond_77

    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$entries:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    move-object v3, v4

    .line 384
    .local v3, metadata:Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
    :goto_21
    const-string v4, "date_updated"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 385
    .local v0, dateEdited:Ljava/lang/Long;
    if-eqz v3, :cond_3b

    if-eqz v0, :cond_3b

    iget-wide v4, v3, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->dateEdited:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3b

    iget v4, v3, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->displayIndex:I

    iget v5, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->mDisplayIndex:I

    if-eq v4, v5, :cond_6b

    .line 388
    :cond_3b
    const-string v4, "display_index"

    iget v5, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->mDisplayIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 389
    const-string v4, "user_id"

    iget-object v5, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$album:Lcom/google/android/picasasync/AlbumEntry;

    iget-wide v5, v5, Lcom/google/android/picasasync/AlbumEntry;->userId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 390
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/google/android/picasasync/PicasaSyncHelper;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v4, v5, v6, p1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 391
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$context:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    iget-object v4, v4, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->result:Landroid/content/SyncResult;

    iget-object v4, v4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, v4, Landroid/content/SyncStats;->numUpdates:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numUpdates:J

    .line 394
    :cond_6b
    if-eqz v3, :cond_70

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->survived:Z

    .line 395
    :cond_70
    iget v4, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->mDisplayIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->mDisplayIndex:I

    .line 396
    return-void

    .line 383
    .end local v0           #dateEdited:Ljava/lang/Long;
    .end local v3           #metadata:Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
    :cond_77
    const/4 v3, 0x0

    goto :goto_21
.end method
