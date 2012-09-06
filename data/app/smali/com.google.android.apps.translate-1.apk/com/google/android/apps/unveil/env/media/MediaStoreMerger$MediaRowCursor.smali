.class Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;
.super Ljava/lang/Object;
.source "MediaStoreMerger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/media/MediaStoreMerger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaRowCursor"
.end annotation


# instance fields
.field private final cursor:Landroid/database/Cursor;

.field private row:Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;

.field private final storageUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Landroid/database/Cursor;)V
    .registers 3
    .parameter "storageUri"
    .parameter "cursor"

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;->storageUri:Landroid/net/Uri;

    .line 150
    iput-object p2, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;->cursor:Landroid/database/Cursor;

    .line 151
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Landroid/database/Cursor;Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;-><init>(Landroid/net/Uri;Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private readUntilValid(Z)Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;
    .registers 8
    .parameter "cursorHasData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/unveil/env/media/InvalidUriException;
        }
    .end annotation

    .prologue
    .line 188
    :goto_0
    if-eqz p1, :cond_41

    .line 189
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;->cursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;->storageUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->fromCursor(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;

    move-result-object v0

    .line 190
    .local v0, row:Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;
    iget-object v1, v0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->path:Ljava/lang/String;

    if-eqz v1, :cond_21

    iget-object v1, v0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_21

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->getFileLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_21

    .line 198
    .end local v0           #row:Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;
    :goto_20
    return-object v0

    .line 194
    .restart local v0       #row:Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;
    :cond_21
    invoke-static {}, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v1

    const-string v2, "skipping invalid MediaStore row=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;->getUri()Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    .line 188
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    goto :goto_0

    .line 198
    .end local v0           #row:Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;
    :cond_41
    const/4 v0, 0x0

    goto :goto_20
.end method


# virtual methods
.method public get()Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;->row:Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;

    return-object v0
.end method

.method public moveToFirst()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/unveil/env/media/InvalidUriException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;->readUntilValid(Z)Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;->row:Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;

    .line 167
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;->row:Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public moveToNext()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/unveil/env/media/InvalidUriException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;->readUntilValid(Z)Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;->row:Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;

    .line 177
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRowCursor;->row:Lcom/google/android/apps/unveil/env/media/MediaStoreMerger$MediaRow;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
