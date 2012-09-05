.class Lcom/cooliris/picasa/PicasaContentProvider$1;
.super Ljava/lang/Object;
.source "PicasaContentProvider.java"

# interfaces
.implements Lcom/cooliris/picasa/GDataParser$EntryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/picasa/PicasaContentProvider;->syncUserAlbums(Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;Lcom/cooliris/picasa/UserEntry;Landroid/content/SyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/picasa/PicasaContentProvider;

.field final synthetic val$albumSchema:Lcom/cooliris/picasa/EntrySchema;

.field final synthetic val$context:Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;

.field final synthetic val$db:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic val$key:Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;

.field final synthetic val$local:[Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;

.field final synthetic val$syncResult:Landroid/content/SyncResult;

.field final synthetic val$user:Lcom/cooliris/picasa/UserEntry;


# direct methods
.method constructor <init>(Lcom/cooliris/picasa/PicasaContentProvider;Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;[Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;Lcom/cooliris/picasa/UserEntry;Lcom/cooliris/picasa/EntrySchema;Landroid/database/sqlite/SQLiteDatabase;Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;Landroid/content/SyncResult;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/cooliris/picasa/PicasaContentProvider$1;->this$0:Lcom/cooliris/picasa/PicasaContentProvider;

    iput-object p2, p0, Lcom/cooliris/picasa/PicasaContentProvider$1;->val$key:Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;

    iput-object p3, p0, Lcom/cooliris/picasa/PicasaContentProvider$1;->val$local:[Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;

    iput-object p4, p0, Lcom/cooliris/picasa/PicasaContentProvider$1;->val$user:Lcom/cooliris/picasa/UserEntry;

    iput-object p5, p0, Lcom/cooliris/picasa/PicasaContentProvider$1;->val$albumSchema:Lcom/cooliris/picasa/EntrySchema;

    iput-object p6, p0, Lcom/cooliris/picasa/PicasaContentProvider$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p7, p0, Lcom/cooliris/picasa/PicasaContentProvider$1;->val$context:Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;

    iput-object p8, p0, Lcom/cooliris/picasa/PicasaContentProvider$1;->val$syncResult:Landroid/content/SyncResult;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEntry(Lcom/cooliris/picasa/Entry;)V
    .registers 13
    .parameter "entry"

    .prologue
    const/4 v10, 0x1

    .line 328
    move-object v0, p1

    check-cast v0, Lcom/cooliris/picasa/AlbumEntry;

    .line 329
    .local v0, album:Lcom/cooliris/picasa/AlbumEntry;
    iget-wide v1, v0, Lcom/cooliris/picasa/Entry;->id:J

    .line 330
    .local v1, albumId:J
    iget-object v5, p0, Lcom/cooliris/picasa/PicasaContentProvider$1;->val$key:Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;

    iput-wide v1, v5, Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;->id:J

    .line 331
    iget-object v5, p0, Lcom/cooliris/picasa/PicasaContentProvider$1;->val$local:[Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;

    iget-object v6, p0, Lcom/cooliris/picasa/PicasaContentProvider$1;->val$key:Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;

    invoke-static {v5, v6}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 332
    .local v3, index:I
    if-ltz v3, :cond_68

    iget-object v5, p0, Lcom/cooliris/picasa/PicasaContentProvider$1;->val$local:[Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;

    aget-object v4, v5, v3

    .line 333
    .local v4, metadata:Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;
    :goto_18
    if-eqz v4, :cond_22

    iget-wide v5, v4, Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;->dateEdited:J

    iget-wide v7, v0, Lcom/cooliris/picasa/AlbumEntry;->dateEdited:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_63

    .line 335
    :cond_22
    const-string v5, "PicasaContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert / update album "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/cooliris/picasa/AlbumEntry;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v5, p0, Lcom/cooliris/picasa/PicasaContentProvider$1;->val$user:Lcom/cooliris/picasa/UserEntry;

    iget-object v5, v5, Lcom/cooliris/picasa/UserEntry;->account:Ljava/lang/String;

    iput-object v5, v0, Lcom/cooliris/picasa/AlbumEntry;->syncAccount:Ljava/lang/String;

    .line 337
    iput-boolean v10, v0, Lcom/cooliris/picasa/AlbumEntry;->photosDirty:Z

    .line 338
    iget-object v5, p0, Lcom/cooliris/picasa/PicasaContentProvider$1;->val$albumSchema:Lcom/cooliris/picasa/EntrySchema;

    iget-object v6, p0, Lcom/cooliris/picasa/PicasaContentProvider$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, v6, v0}, Lcom/cooliris/picasa/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/cooliris/picasa/Entry;)J

    .line 339
    if-nez v4, :cond_58

    .line 340
    iget-object v5, p0, Lcom/cooliris/picasa/PicasaContentProvider$1;->val$context:Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;

    iget-object v5, v5, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->albumsAdded:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_58
    iget-object v5, p0, Lcom/cooliris/picasa/PicasaContentProvider$1;->val$syncResult:Landroid/content/SyncResult;

    iget-object v5, v5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numUpdates:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numUpdates:J

    .line 351
    :cond_63
    if-eqz v4, :cond_67

    .line 352
    iput-boolean v10, v4, Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;->survived:Z

    .line 354
    :cond_67
    return-void

    .line 332
    .end local v4           #metadata:Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;
    :cond_68
    const/4 v4, 0x0

    goto :goto_18
.end method
