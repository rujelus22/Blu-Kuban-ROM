.class public abstract Lcom/lifevibes/videoeditor/MediaItem;
.super Ljava/lang/Object;
.source "MediaItem.java"


# instance fields
.field protected final mFilename:Ljava/lang/String;

.field private final mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

.field private final mProjectPath:Ljava/lang/String;

.field private mRenderingMode:I

.field private final mUniqueId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/lifevibes/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .parameter "editor"
    .parameter "mediaItemId"
    .parameter "filename"
    .parameter "renderingMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 132
    if-nez p3, :cond_d

    .line 133
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "MediaItem : filename is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_d
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_31

    .line 137
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found ! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_31
    iput-object p2, p0, Lcom/lifevibes/videoeditor/MediaItem;->mUniqueId:Ljava/lang/String;

    .line 140
    iput-object p3, p0, Lcom/lifevibes/videoeditor/MediaItem;->mFilename:Ljava/lang/String;

    .line 141
    iput p4, p0, Lcom/lifevibes/videoeditor/MediaItem;->mRenderingMode:I

    move-object v1, p1

    .line 142
    check-cast v1, Lcom/lifevibes/videoeditor/VideoEditorImpl;

    invoke-virtual {v1}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->getNativeContext()Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/lifevibes/videoeditor/MediaItem;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    .line 143
    invoke-interface {p1}, Lcom/lifevibes/videoeditor/VideoEditor;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lifevibes/videoeditor/MediaItem;->mProjectPath:Ljava/lang/String;

    .line 144
    return-void
.end method


# virtual methods
.method public getFilename()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/lifevibes/videoeditor/MediaItem;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getHeight()I
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/lifevibes/videoeditor/MediaItem;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderingMode()I
    .registers 2

    .prologue
    .line 186
    iget v0, p0, Lcom/lifevibes/videoeditor/MediaItem;->mRenderingMode:I

    return v0
.end method

.method public abstract getTimelineDuration()J
.end method

.method public abstract getWidth()I
.end method
