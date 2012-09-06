.class public Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;
.super Ljava/lang/Object;
.source "MediaStoreMerger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/media/MediaStoreMerger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaRow"
.end annotation


# instance fields
.field public final dateTaken:J

.field public final description:Ljava/lang/String;

.field public final displayName:Ljava/lang/String;

.field private fileLength:J

.field public final id:J

.field public final latitude:D

.field public final longitude:D

.field public final orientation:I

.field public final path:Ljava/lang/String;

.field public final storageUri:Landroid/net/Uri;

.field private uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/net/Uri;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;IDD)V
    .registers 16
    .parameter "storageUri"
    .parameter "id"
    .parameter "displayName"
    .parameter "path"
    .parameter "dateTaken"
    .parameter "description"
    .parameter "orientation"
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->fileLength:J

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->uri:Landroid/net/Uri;

    .line 76
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->storageUri:Landroid/net/Uri;

    .line 77
    iput-wide p2, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->id:J

    .line 78
    iput-object p4, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->displayName:Ljava/lang/String;

    .line 79
    iput-object p5, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->path:Ljava/lang/String;

    .line 80
    iput-wide p6, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->dateTaken:J

    .line 81
    iput-object p8, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->description:Ljava/lang/String;

    .line 82
    iput p9, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->orientation:I

    .line 83
    iput-wide p10, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->latitude:D

    .line 84
    iput-wide p12, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->longitude:D

    .line 85
    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;
    .registers 17
    .parameter "cursor"
    .parameter "storageUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/unveil/env/media/InvalidUriException;
        }
    .end annotation

    .prologue
    .line 90
    :try_start_0
    const-string v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 91
    .local v2, id:J
    const-string v0, "_display_name"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, displayName:Ljava/lang/String;
    const-string v0, "_data"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 94
    .local v5, path:Ljava/lang/String;
    const-string v0, "description"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 96
    .local v8, description:Ljava/lang/String;
    const-string v0, "orientation"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 98
    .local v9, orientation:I
    const-string v0, "latitude"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    .line 100
    .local v10, latitude:D
    const-string v0, "longitude"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    .line 102
    .local v12, longitude:D
    const-string v0, "corrected_date_taken"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 105
    .local v6, dateTaken:J
    new-instance v0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v13}, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;-><init>(Landroid/net/Uri;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;IDD)V
    :try_end_57
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_57} :catch_58

    return-object v0

    .line 115
    .end local v2           #id:J
    .end local v4           #displayName:Ljava/lang/String;
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #dateTaken:J
    .end local v8           #description:Ljava/lang/String;
    .end local v9           #orientation:I
    .end local v10           #latitude:D
    .end local v12           #longitude:D
    :catch_58
    move-exception v14

    .line 116
    .local v14, e:Ljava/lang/IllegalArgumentException;
    new-instance v0, Lcom/google/android/apps/unveil/env/media/InvalidUriException;

    invoke-direct {v0, v14}, Lcom/google/android/apps/unveil/env/media/InvalidUriException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method


# virtual methods
.method public getFileLength()J
    .registers 6

    .prologue
    .line 132
    iget-wide v1, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->fileLength:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_15

    .line 133
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->fileLength:J

    .line 136
    .end local v0           #f:Ljava/io/File;
    :cond_15
    iget-wide v1, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->fileLength:J

    return-wide v1
.end method

.method public getUri()Landroid/net/Uri;
    .registers 4

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->uri:Landroid/net/Uri;

    if-nez v0, :cond_e

    .line 125
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->storageUri:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->uri:Landroid/net/Uri;

    .line 127
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->uri:Landroid/net/Uri;

    return-object v0
.end method
