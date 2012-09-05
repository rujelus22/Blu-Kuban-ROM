.class Lcom/infraware/filemanager/media/MediaScanner$MediaScannerClient;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaScannerClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/media/MediaScanner;


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/media/MediaScanner;)V
    .registers 2
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/infraware/filemanager/media/MediaScanner$MediaScannerClient;->this$0:Lcom/infraware/filemanager/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 56
    iget-object v5, p0, Lcom/infraware/filemanager/media/MediaScanner$MediaScannerClient;->this$0:Lcom/infraware/filemanager/media/MediaScanner;

    #getter for: Lcom/infraware/filemanager/media/MediaScanner;->m_oParent:Lcom/infraware/filemanager/file/FileBaseActivity;
    invoke-static {v5}, Lcom/infraware/filemanager/media/MediaScanner;->access$0(Lcom/infraware/filemanager/media/MediaScanner;)Lcom/infraware/filemanager/file/FileBaseActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/infraware/filemanager/file/FileBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 57
    .local v0, contentResolver:Landroid/content/ContentResolver;
    :cond_b
    :goto_b
    iget-object v5, p0, Lcom/infraware/filemanager/media/MediaScanner$MediaScannerClient;->this$0:Lcom/infraware/filemanager/media/MediaScanner;

    #getter for: Lcom/infraware/filemanager/media/MediaScanner;->m_oMediaList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/infraware/filemanager/media/MediaScanner;->access$1(Lcom/infraware/filemanager/media/MediaScanner;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 99
    :goto_17
    iget-object v5, p0, Lcom/infraware/filemanager/media/MediaScanner$MediaScannerClient;->this$0:Lcom/infraware/filemanager/media/MediaScanner;

    #getter for: Lcom/infraware/filemanager/media/MediaScanner;->m_oParent:Lcom/infraware/filemanager/file/FileBaseActivity;
    invoke-static {v5}, Lcom/infraware/filemanager/media/MediaScanner;->access$0(Lcom/infraware/filemanager/media/MediaScanner;)Lcom/infraware/filemanager/file/FileBaseActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/infraware/filemanager/file/FileBaseActivity;->onPostScan()V

    .line 100
    return-void

    .line 59
    :cond_21
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, stateSd:Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    .line 62
    iget-object v5, p0, Lcom/infraware/filemanager/media/MediaScanner$MediaScannerClient;->this$0:Lcom/infraware/filemanager/media/MediaScanner;

    #getter for: Lcom/infraware/filemanager/media/MediaScanner;->m_oMediaList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/infraware/filemanager/media/MediaScanner;->access$1(Lcom/infraware/filemanager/media/MediaScanner;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_17

    .line 67
    :cond_37
    iget-object v5, p0, Lcom/infraware/filemanager/media/MediaScanner$MediaScannerClient;->this$0:Lcom/infraware/filemanager/media/MediaScanner;

    #getter for: Lcom/infraware/filemanager/media/MediaScanner;->m_oMediaList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/infraware/filemanager/media/MediaScanner;->access$1(Lcom/infraware/filemanager/media/MediaScanner;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/filemanager/media/MediaItem;

    .line 69
    .local v1, mediaItem:Lcom/infraware/filemanager/media/MediaItem;
    iget v5, v1, Lcom/infraware/filemanager/media/MediaItem;->dbAction:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_57

    .line 71
    iget-object v5, p0, Lcom/infraware/filemanager/media/MediaScanner$MediaScannerClient;->this$0:Lcom/infraware/filemanager/media/MediaScanner;

    #getter for: Lcom/infraware/filemanager/media/MediaScanner;->m_oConnection:Landroid/media/MediaScannerConnection;
    invoke-static {v5}, Lcom/infraware/filemanager/media/MediaScanner;->access$2(Lcom/infraware/filemanager/media/MediaScanner;)Landroid/media/MediaScannerConnection;

    move-result-object v5

    iget-object v6, v1, Lcom/infraware/filemanager/media/MediaItem;->targetPath:Ljava/lang/String;

    iget-object v7, v1, Lcom/infraware/filemanager/media/MediaItem;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 75
    :cond_57
    iget-object v5, v1, Lcom/infraware/filemanager/media/MediaItem;->mediaUri:Landroid/net/Uri;

    if-eqz v5, :cond_b

    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "_id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcom/infraware/filemanager/media/MediaItem;->contentId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, where:Ljava/lang/String;
    iget v5, v1, Lcom/infraware/filemanager/media/MediaItem;->dbAction:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_77

    .line 81
    iget-object v5, v1, Lcom/infraware/filemanager/media/MediaItem;->mediaUri:Landroid/net/Uri;

    invoke-virtual {v0, v5, v4, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_b

    .line 85
    :cond_77
    iget v5, v1, Lcom/infraware/filemanager/media/MediaItem;->dbAction:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_b

    .line 87
    iget-object v5, v1, Lcom/infraware/filemanager/media/MediaItem;->mediaUri:Landroid/net/Uri;

    invoke-virtual {v0, v5, v4, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 89
    iget-object v5, p0, Lcom/infraware/filemanager/media/MediaScanner$MediaScannerClient;->this$0:Lcom/infraware/filemanager/media/MediaScanner;

    #getter for: Lcom/infraware/filemanager/media/MediaScanner;->m_oParent:Lcom/infraware/filemanager/file/FileBaseActivity;
    invoke-static {v5}, Lcom/infraware/filemanager/media/MediaScanner;->access$0(Lcom/infraware/filemanager/media/MediaScanner;)Lcom/infraware/filemanager/file/FileBaseActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/infraware/filemanager/file/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08030e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "- FV02"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_b9

    .line 91
    iget-object v5, p0, Lcom/infraware/filemanager/media/MediaScanner$MediaScannerClient;->this$0:Lcom/infraware/filemanager/media/MediaScanner;

    #getter for: Lcom/infraware/filemanager/media/MediaScanner;->m_oParent:Lcom/infraware/filemanager/file/FileBaseActivity;
    invoke-static {v5}, Lcom/infraware/filemanager/media/MediaScanner;->access$0(Lcom/infraware/filemanager/media/MediaScanner;)Lcom/infraware/filemanager/file/FileBaseActivity;

    move-result-object v5

    iget-object v6, v1, Lcom/infraware/filemanager/media/MediaItem;->targetPath:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/infraware/common/util/Utils;->getMimeInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/infraware/common/define/CMDefine$MimeInfo;

    move-result-object v2

    .line 92
    .local v2, mimeInfo:Lcom/infraware/common/define/CMDefine$MimeInfo;
    iget-object v5, p0, Lcom/infraware/filemanager/media/MediaScanner$MediaScannerClient;->this$0:Lcom/infraware/filemanager/media/MediaScanner;

    #getter for: Lcom/infraware/filemanager/media/MediaScanner;->m_oConnection:Landroid/media/MediaScannerConnection;
    invoke-static {v5}, Lcom/infraware/filemanager/media/MediaScanner;->access$2(Lcom/infraware/filemanager/media/MediaScanner;)Landroid/media/MediaScannerConnection;

    move-result-object v5

    iget-object v6, v1, Lcom/infraware/filemanager/media/MediaItem;->targetPath:Ljava/lang/String;

    iget-object v7, v2, Lcom/infraware/common/define/CMDefine$MimeInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 95
    .end local v2           #mimeInfo:Lcom/infraware/common/define/CMDefine$MimeInfo;
    :cond_b9
    iget-object v5, p0, Lcom/infraware/filemanager/media/MediaScanner$MediaScannerClient;->this$0:Lcom/infraware/filemanager/media/MediaScanner;

    #getter for: Lcom/infraware/filemanager/media/MediaScanner;->m_oConnection:Landroid/media/MediaScannerConnection;
    invoke-static {v5}, Lcom/infraware/filemanager/media/MediaScanner;->access$2(Lcom/infraware/filemanager/media/MediaScanner;)Landroid/media/MediaScannerConnection;

    move-result-object v5

    iget-object v6, v1, Lcom/infraware/filemanager/media/MediaItem;->targetPath:Ljava/lang/String;

    iget-object v7, v1, Lcom/infraware/filemanager/media/MediaItem;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/infraware/filemanager/media/MediaScanner$MediaScannerClient;->this$0:Lcom/infraware/filemanager/media/MediaScanner;

    #getter for: Lcom/infraware/filemanager/media/MediaScanner;->m_oConnection:Landroid/media/MediaScannerConnection;
    invoke-static {v0}, Lcom/infraware/filemanager/media/MediaScanner;->access$2(Lcom/infraware/filemanager/media/MediaScanner;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 104
    return-void
.end method
