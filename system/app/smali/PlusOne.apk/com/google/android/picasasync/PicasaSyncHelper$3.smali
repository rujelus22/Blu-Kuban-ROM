.class Lcom/google/android/picasasync/PicasaSyncHelper$3;
.super Ljava/lang/Object;
.source "PicasaSyncHelper.java"

# interfaces
.implements Lcom/google/android/picasasync/PicasaApi$EntryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/picasasync/PicasaSyncHelper;->syncPhotosForUploadLocked(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDisplayIndex:I

.field private mKey:Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

.field final synthetic this$0:Lcom/google/android/picasasync/PicasaSyncHelper;

.field final synthetic val$context:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

.field final synthetic val$db:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic val$entries:Ljava/util/ArrayList;

.field final synthetic val$userId:J


# direct methods
.method constructor <init>(Lcom/google/android/picasasync/PicasaSyncHelper;Ljava/util/ArrayList;JLandroid/database/sqlite/SQLiteDatabase;Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/google/android/picasasync/PicasaSyncHelper$3;->this$0:Lcom/google/android/picasasync/PicasaSyncHelper;

    iput-object p2, p0, Lcom/google/android/picasasync/PicasaSyncHelper$3;->val$entries:Ljava/util/ArrayList;

    iput-wide p3, p0, Lcom/google/android/picasasync/PicasaSyncHelper$3;->val$userId:J

    iput-object p5, p0, Lcom/google/android/picasasync/PicasaSyncHelper$3;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p6, p0, Lcom/google/android/picasasync/PicasaSyncHelper$3;->val$context:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    new-instance v0, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    invoke-direct {v0}, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;-><init>()V

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$3;->mKey:Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    .line 525
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$3;->mDisplayIndex:I

    return-void
.end method


# virtual methods
.method public handleEntry(Landroid/content/ContentValues;)V
    .registers 11
    .parameter "values"

    .prologue
    .line 529
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncHelper$3;->mKey:Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    const-string v5, "_id"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->updateId(J)Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    move-result-object v2

    .line 531
    .local v2, key:Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncHelper$3;->val$entries:Ljava/util/ArrayList;

    invoke-static {v4, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 532
    .local v1, index:I
    if-ltz v1, :cond_5e

    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncHelper$3;->val$entries:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    move-object v3, v4

    .line 533
    .local v3, metadata:Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
    :goto_21
    const-string v4, "date_updated"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 534
    .local v0, dateEdited:Ljava/lang/Long;
    if-eqz v3, :cond_35

    if-eqz v0, :cond_35

    iget-wide v4, v3, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->dateEdited:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_58

    .line 537
    :cond_35
    const-string v4, "user_id"

    iget-wide v5, p0, Lcom/google/android/picasasync/PicasaSyncHelper$3;->val$userId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 538
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncHelper$3;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/google/android/picasasync/PicasaSyncHelper;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v4, v5, v6, p1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 539
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncHelper$3;->val$context:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    iget-object v4, v4, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->result:Landroid/content/SyncResult;

    iget-object v4, v4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, v4, Landroid/content/SyncStats;->numUpdates:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numUpdates:J

    .line 542
    :cond_58
    if-eqz v3, :cond_5d

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->survived:Z

    .line 543
    :cond_5d
    return-void

    .line 532
    .end local v0           #dateEdited:Ljava/lang/Long;
    .end local v3           #metadata:Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
    :cond_5e
    const/4 v3, 0x0

    goto :goto_21
.end method
