.class Lcom/cooliris/picasa/PicasaContentProvider$2;
.super Ljava/lang/Object;
.source "PicasaContentProvider.java"

# interfaces
.implements Lcom/cooliris/picasa/GDataParser$EntryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/picasa/PicasaContentProvider;->syncAlbumPhotos(Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;Ljava/lang/String;Lcom/cooliris/picasa/AlbumEntry;Landroid/content/SyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/picasa/PicasaContentProvider;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$db:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic val$displayIndex:[I

.field final synthetic val$key:Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;

.field final synthetic val$local:[Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;

.field final synthetic val$photoSchema:Lcom/cooliris/picasa/EntrySchema;

.field final synthetic val$syncResult:Landroid/content/SyncResult;


# direct methods
.method constructor <init>(Lcom/cooliris/picasa/PicasaContentProvider;[ILcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;[Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;Ljava/lang/String;Lcom/cooliris/picasa/EntrySchema;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/SyncResult;)V
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
    .line 464
    iput-object p1, p0, Lcom/cooliris/picasa/PicasaContentProvider$2;->this$0:Lcom/cooliris/picasa/PicasaContentProvider;

    iput-object p2, p0, Lcom/cooliris/picasa/PicasaContentProvider$2;->val$displayIndex:[I

    iput-object p3, p0, Lcom/cooliris/picasa/PicasaContentProvider$2;->val$key:Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;

    iput-object p4, p0, Lcom/cooliris/picasa/PicasaContentProvider$2;->val$local:[Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;

    iput-object p5, p0, Lcom/cooliris/picasa/PicasaContentProvider$2;->val$account:Ljava/lang/String;

    iput-object p6, p0, Lcom/cooliris/picasa/PicasaContentProvider$2;->val$photoSchema:Lcom/cooliris/picasa/EntrySchema;

    iput-object p7, p0, Lcom/cooliris/picasa/PicasaContentProvider$2;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p8, p0, Lcom/cooliris/picasa/PicasaContentProvider$2;->val$syncResult:Landroid/content/SyncResult;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEntry(Lcom/cooliris/picasa/Entry;)V
    .registers 14
    .parameter "entry"

    .prologue
    const/4 v11, 0x0

    .line 466
    move-object v3, p1

    check-cast v3, Lcom/cooliris/picasa/PhotoEntry;

    .line 467
    .local v3, photo:Lcom/cooliris/picasa/PhotoEntry;
    iget-wide v4, v3, Lcom/cooliris/picasa/Entry;->id:J

    .line 468
    .local v4, photoId:J
    iget-object v6, p0, Lcom/cooliris/picasa/PicasaContentProvider$2;->val$displayIndex:[I

    aget v2, v6, v11

    .line 469
    .local v2, newDisplayIndex:I
    iget-object v6, p0, Lcom/cooliris/picasa/PicasaContentProvider$2;->val$key:Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;

    iput-wide v4, v6, Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;->id:J

    .line 470
    iget-object v6, p0, Lcom/cooliris/picasa/PicasaContentProvider$2;->val$local:[Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;

    iget-object v7, p0, Lcom/cooliris/picasa/PicasaContentProvider$2;->val$key:Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;

    invoke-static {v6, v7}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 471
    .local v0, index:I
    if-ltz v0, :cond_4e

    iget-object v6, p0, Lcom/cooliris/picasa/PicasaContentProvider$2;->val$local:[Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;

    aget-object v1, v6, v0

    .line 472
    .local v1, metadata:Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;
    :goto_1c
    if-eqz v1, :cond_2a

    iget-wide v6, v1, Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;->dateEdited:J

    iget-wide v8, v3, Lcom/cooliris/picasa/PhotoEntry;->dateEdited:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_2a

    iget v6, v1, Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;->displayIndex:I

    if-eq v6, v2, :cond_42

    .line 478
    :cond_2a
    iget-object v6, p0, Lcom/cooliris/picasa/PicasaContentProvider$2;->val$account:Ljava/lang/String;

    iput-object v6, v3, Lcom/cooliris/picasa/PhotoEntry;->syncAccount:Ljava/lang/String;

    .line 479
    iput v2, v3, Lcom/cooliris/picasa/PhotoEntry;->displayIndex:I

    .line 480
    iget-object v6, p0, Lcom/cooliris/picasa/PicasaContentProvider$2;->val$photoSchema:Lcom/cooliris/picasa/EntrySchema;

    iget-object v7, p0, Lcom/cooliris/picasa/PicasaContentProvider$2;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, v7, v3}, Lcom/cooliris/picasa/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/cooliris/picasa/Entry;)J

    .line 481
    iget-object v6, p0, Lcom/cooliris/picasa/PicasaContentProvider$2;->val$syncResult:Landroid/content/SyncResult;

    iget-object v6, v6, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v6, Landroid/content/SyncStats;->numUpdates:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numUpdates:J

    .line 490
    :cond_42
    if-eqz v1, :cond_47

    .line 491
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;->survived:Z

    .line 495
    :cond_47
    iget-object v6, p0, Lcom/cooliris/picasa/PicasaContentProvider$2;->val$displayIndex:[I

    add-int/lit8 v7, v2, 0x1

    aput v7, v6, v11

    .line 496
    return-void

    .line 471
    .end local v1           #metadata:Lcom/cooliris/picasa/PicasaContentProvider$EntryMetadata;
    :cond_4e
    const/4 v1, 0x0

    goto :goto_1c
.end method
