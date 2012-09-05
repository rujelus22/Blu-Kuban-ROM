.class Landroid/media/MediaScanner$FileInserter;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileInserter"
.end annotation


# instance fields
.field private mIndex:I

.field private final mUri:Landroid/net/Uri;

.field private final mValues:[Landroid/content/ContentValues;

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method public constructor <init>(Landroid/media/MediaScanner;Landroid/net/Uri;I)V
    .registers 5
    .parameter
    .parameter "uri"
    .parameter "count"

    .prologue
    .line 413
    iput-object p1, p0, Landroid/media/MediaScanner$FileInserter;->this$0:Landroid/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    iput-object p2, p0, Landroid/media/MediaScanner$FileInserter;->mUri:Landroid/net/Uri;

    .line 415
    new-array v0, p3, [Landroid/content/ContentValues;

    iput-object v0, p0, Landroid/media/MediaScanner$FileInserter;->mValues:[Landroid/content/ContentValues;

    .line 416
    return-void
.end method


# virtual methods
.method public flush()V
    .registers 6

    .prologue
    .line 429
    iget v2, p0, Landroid/media/MediaScanner$FileInserter;->mIndex:I

    if-lez v2, :cond_40

    .line 430
    :goto_4
    iget v2, p0, Landroid/media/MediaScanner$FileInserter;->mIndex:I

    iget-object v3, p0, Landroid/media/MediaScanner$FileInserter;->mValues:[Landroid/content/ContentValues;

    array-length v3, v3

    if-ge v2, v3, :cond_17

    .line 431
    iget-object v2, p0, Landroid/media/MediaScanner$FileInserter;->mValues:[Landroid/content/ContentValues;

    iget v3, p0, Landroid/media/MediaScanner$FileInserter;->mIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/media/MediaScanner$FileInserter;->mIndex:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    goto :goto_4

    .line 434
    :cond_17
    :try_start_17
    iget-object v2, p0, Landroid/media/MediaScanner$FileInserter;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$000(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaScanner$FileInserter;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Landroid/media/MediaScanner$FileInserter;->mValues:[Landroid/content/ContentValues;

    invoke-interface {v2, v3, v4}, Landroid/content/IContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v1

    .line 451
    .local v1, result:I
    const-string v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bulk Insert Flushed. Count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_3d} :catch_41

    .line 455
    .end local v1           #result:I
    :goto_3d
    const/4 v2, 0x0

    iput v2, p0, Landroid/media/MediaScanner$FileInserter;->mIndex:I

    .line 457
    :cond_40
    return-void

    .line 452
    :catch_41
    move-exception v0

    .line 453
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MediaScanner"

    const-string v3, "RemoteException in FileInserter.flush()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d
.end method

.method public insert(Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5
    .parameter "values"

    .prologue
    .line 419
    iget v0, p0, Landroid/media/MediaScanner$FileInserter;->mIndex:I

    iget-object v1, p0, Landroid/media/MediaScanner$FileInserter;->mValues:[Landroid/content/ContentValues;

    array-length v1, v1

    if-ne v0, v1, :cond_a

    .line 420
    invoke-virtual {p0}, Landroid/media/MediaScanner$FileInserter;->flush()V

    .line 422
    :cond_a
    iget-object v0, p0, Landroid/media/MediaScanner$FileInserter;->mValues:[Landroid/content/ContentValues;

    iget v1, p0, Landroid/media/MediaScanner$FileInserter;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/media/MediaScanner$FileInserter;->mIndex:I

    aput-object p1, v0, v1

    .line 424
    const/4 v0, 0x0

    return-object v0
.end method
