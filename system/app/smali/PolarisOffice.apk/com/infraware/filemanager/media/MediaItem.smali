.class public Lcom/infraware/filemanager/media/MediaItem;
.super Ljava/lang/Object;
.source "MediaItem.java"


# instance fields
.field public contentId:I

.field public dbAction:I

.field public mediaType:I

.field public mediaUri:Landroid/net/Uri;

.field public mimeType:Ljava/lang/String;

.field public sourcePath:Ljava/lang/String;

.field public targetPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "sourcePath"

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/infraware/filemanager/media/MediaItem;->sourcePath:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/infraware/filemanager/media/MediaItem;->dbAction:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/filemanager/media/MediaItem;->mediaUri:Landroid/net/Uri;

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/infraware/filemanager/media/MediaItem;->contentId:I

    .line 39
    iput v1, p0, Lcom/infraware/filemanager/media/MediaItem;->mediaType:I

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/filemanager/media/MediaItem;->targetPath:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/filemanager/media/MediaItem;->mimeType:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public clone()Lcom/infraware/filemanager/media/MediaItem;
    .registers 3

    .prologue
    .line 20
    new-instance v0, Lcom/infraware/filemanager/media/MediaItem;

    iget-object v1, p0, Lcom/infraware/filemanager/media/MediaItem;->sourcePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/media/MediaItem;-><init>(Ljava/lang/String;)V

    .line 21
    .local v0, cloneItem:Lcom/infraware/filemanager/media/MediaItem;
    iget v1, p0, Lcom/infraware/filemanager/media/MediaItem;->dbAction:I

    iput v1, v0, Lcom/infraware/filemanager/media/MediaItem;->dbAction:I

    .line 23
    iget v1, p0, Lcom/infraware/filemanager/media/MediaItem;->contentId:I

    iput v1, v0, Lcom/infraware/filemanager/media/MediaItem;->contentId:I

    .line 24
    iget v1, p0, Lcom/infraware/filemanager/media/MediaItem;->mediaType:I

    iput v1, v0, Lcom/infraware/filemanager/media/MediaItem;->mediaType:I

    .line 25
    iget-object v1, p0, Lcom/infraware/filemanager/media/MediaItem;->mediaUri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/infraware/filemanager/media/MediaItem;->mediaUri:Landroid/net/Uri;

    .line 27
    iget-object v1, p0, Lcom/infraware/filemanager/media/MediaItem;->targetPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/infraware/filemanager/media/MediaItem;->targetPath:Ljava/lang/String;

    .line 28
    iget-object v1, p0, Lcom/infraware/filemanager/media/MediaItem;->mimeType:Ljava/lang/String;

    iput-object v1, v0, Lcom/infraware/filemanager/media/MediaItem;->mimeType:Ljava/lang/String;

    .line 30
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/infraware/filemanager/media/MediaItem;->clone()Lcom/infraware/filemanager/media/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public setTargetPath(Ljava/lang/String;)V
    .registers 2
    .parameter "targetPath"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/infraware/filemanager/media/MediaItem;->targetPath:Ljava/lang/String;

    .line 47
    return-void
.end method
