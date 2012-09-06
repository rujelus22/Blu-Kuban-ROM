.class Lcom/google/android/picasasync/PicasaSyncHelper$1;
.super Ljava/lang/Object;
.source "PicasaSyncHelper.java"

# interfaces
.implements Lcom/google/android/picasasync/PicasaApi$EntryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/picasasync/PicasaSyncHelper;->syncAlbumsForUserLocked(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/UserEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mKey:Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

.field final synthetic this$0:Lcom/google/android/picasasync/PicasaSyncHelper;

.field final synthetic val$context:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

.field final synthetic val$db:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic val$entries:Ljava/util/ArrayList;

.field final synthetic val$user:Lcom/google/android/picasasync/UserEntry;


# direct methods
.method constructor <init>(Lcom/google/android/picasasync/PicasaSyncHelper;Ljava/util/ArrayList;Lcom/google/android/picasasync/UserEntry;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->this$0:Lcom/google/android/picasasync/PicasaSyncHelper;

    iput-object p2, p0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->val$entries:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->val$user:Lcom/google/android/picasasync/UserEntry;

    iput-object p4, p0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p5, p0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->val$context:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    new-instance v0, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    invoke-direct {v0}, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;-><init>()V

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->mKey:Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    return-void
.end method


# virtual methods
.method public handleEntry(Landroid/content/ContentValues;)V
    .registers 13
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 238
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->mKey:Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    const-string v6, "_id"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->updateId(J)Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    move-result-object v2

    .line 239
    .local v2, key:Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->val$entries:Ljava/util/ArrayList;

    invoke-static {v4, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 240
    .local v1, index:I
    if-ltz v1, :cond_68

    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->val$entries:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    move-object v3, v4

    .line 241
    .local v3, metadata:Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
    :goto_23
    const-string v4, "date_updated"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 242
    .local v0, dateEdited:Ljava/lang/Long;
    if-eqz v3, :cond_37

    if-eqz v0, :cond_37

    iget-wide v6, v3, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->dateEdited:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-gez v4, :cond_63

    .line 245
    :cond_37
    const-string v4, "photos_dirty"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 246
    const-string v4, "user_id"

    iget-object v6, p0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->val$user:Lcom/google/android/picasasync/UserEntry;

    iget-wide v6, v6, Lcom/google/android/picasasync/UserEntry;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 247
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/google/android/picasasync/PicasaSyncHelper;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5, p1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 248
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->val$context:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    iget-object v4, v4, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->result:Landroid/content/SyncResult;

    iget-object v4, v4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, v4, Landroid/content/SyncStats;->numUpdates:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numUpdates:J

    .line 252
    :cond_63
    if-eqz v3, :cond_67

    iput-boolean v10, v3, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->survived:Z

    .line 253
    :cond_67
    return-void

    .end local v0           #dateEdited:Ljava/lang/Long;
    .end local v3           #metadata:Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
    :cond_68
    move-object v3, v5

    .line 240
    goto :goto_23
.end method
