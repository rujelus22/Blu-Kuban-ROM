.class Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$3;
.super Ljava/lang/Object;
.source "ManagedFileBrowserThumb.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->browseTo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

.field final synthetic val$dir:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;Ljava/io/File;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$3;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    iput-object p2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$3;->val$dir:Ljava/io/File;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 337
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$3;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mLoadingHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$800(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 338
    const-string v1, "MyFiles"

    const-string v2, "ManagedFileBrowserThumb-load file list => start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$3;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$3;->val$dir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    #calls: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->fill([Ljava/io/File;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$900(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;[Ljava/io/File;)V

    .line 340
    const-string v1, "MyFiles"

    const-string v2, "ManagedFileBrowserThumb-load file list => finish"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string v1, "MyFiles"

    const-string v2, "ManagedFileBrowserThumb-sort after loading => start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$3;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->tempDirectoryEntries:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$1000(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$3;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mCurrentSortBy:I
    invoke-static {v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$1100(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/SimpleItem;->sort(Ljava/util/List;I)V

    .line 343
    const-string v1, "MyFiles"

    const-string v2, "ManagedFileBrowserThumb-sort after loading => finish"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_6f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_41} :catch_4b

    .line 347
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$3;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mLoadingHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$800(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Landroid/os/Handler;

    move-result-object v1

    :goto_47
    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 349
    return-void

    .line 344
    :catch_4b
    move-exception v0

    .line 345
    .local v0, e:Ljava/lang/Exception;
    :try_start_4c
    const-string v1, "MyFiles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "browseTo - Fill Exception occured : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_4c .. :try_end_68} :catchall_6f

    .line 347
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$3;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mLoadingHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$800(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Landroid/os/Handler;

    move-result-object v1

    goto :goto_47

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_6f
    move-exception v1

    iget-object v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$3;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mLoadingHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$800(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    throw v1
.end method