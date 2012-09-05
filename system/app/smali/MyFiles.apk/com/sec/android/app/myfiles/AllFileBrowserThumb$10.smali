.class Lcom/sec/android/app/myfiles/AllFileBrowserThumb$10;
.super Ljava/lang/Object;
.source "AllFileBrowserThumb.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->browseToFolder(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

.field final synthetic val$dir:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;Ljava/io/File;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    iput-object p2, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$10;->val$dir:Ljava/io/File;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 470
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mLoadingHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->access$800(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 475
    :try_start_b
    const-string v1, "MyFiles"

    const-string v2, "ThumbBrowser-load file list => start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$10;->val$dir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    #calls: Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->fill([Ljava/io/File;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->access$900(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;[Ljava/io/File;)V

    .line 477
    const-string v1, "MyFiles"

    const-string v2, "ThumbBrowser-load file list => finish"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-string v1, "MyFiles"

    const-string v2, "ThumbBrowser-sort after loading => start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->tempDirectoryEntries:Ljava/util/List;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mCurrentSortBy:I
    invoke-static {v2}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->access$700(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/SimpleItem;->sort(Ljava/util/List;I)V

    .line 482
    const-string v1, "MyFiles"

    const-string v2, "ThumbBrowser-sort after loading => finish"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_b .. :try_end_3f} :catchall_70
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_3f} :catch_49

    .line 487
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mLoadingHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->access$800(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 495
    :goto_48
    return-void

    .line 484
    :catch_49
    move-exception v0

    .line 485
    .local v0, e:Ljava/lang/Exception;
    :try_start_4a
    const-string v1, "MyFiles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fill Exception occured : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_4a .. :try_end_66} :catchall_70

    .line 487
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mLoadingHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->access$800(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_48

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_70
    move-exception v1

    iget-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$10;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mLoadingHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->access$800(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    throw v1
.end method
