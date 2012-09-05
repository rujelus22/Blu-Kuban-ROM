.class Lcom/sec/android/app/myfiles/RenameFileBrowser$3;
.super Ljava/lang/Object;
.source "RenameFileBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/RenameFileBrowser;->browseTo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/RenameFileBrowser;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/RenameFileBrowser;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser$3;->this$0:Lcom/sec/android/app/myfiles/RenameFileBrowser;

    iput-object p2, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser$3;->val$path:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 204
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/myfiles/RenameFileBrowser$3;->this$0:Lcom/sec/android/app/myfiles/RenameFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/RenameFileBrowser;->mLoadingHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->access$300(Lcom/sec/android/app/myfiles/RenameFileBrowser;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 206
    const-string v1, "[MyFiles]"

    const-string v2, "RenameFileBrowser-load file list => start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/myfiles/RenameFileBrowser$3;->val$path:Ljava/lang/String;

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    .local v12, dir:Ljava/io/File;
    if-eqz v12, :cond_76

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 210
    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v16

    .line 212
    .local v16, list:[Ljava/io/File;
    if-eqz v16, :cond_76

    .line 213
    move-object/from16 v11, v16

    .local v11, arr$:[Ljava/io/File;
    array-length v15, v11

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_34
    if-ge v14, v15, :cond_76

    aget-object v3, v11, v14

    .line 214
    .local v3, currentFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/Utils;->isHiddenItem(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_73

    .line 215
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/MediaFile;->needThumbnail(Ljava/lang/String;)Z

    move-result v10

    .line 217
    .local v10, isImage:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/myfiles/RenameFileBrowser$3;->this$0:Lcom/sec/android/app/myfiles/RenameFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/RenameFileBrowser;->tempDirectoryEntries:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->access$600(Lcom/sec/android/app/myfiles/RenameFileBrowser;)Ljava/util/List;

    move-result-object v17

    new-instance v1, Lcom/sec/android/app/myfiles/SimpleItem;

    invoke-static {}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->access$400()Lcom/sec/android/app/myfiles/RenameFileBrowser;

    move-result-object v2

    new-instance v4, Lcom/sec/android/app/myfiles/SimpleIcon;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/myfiles/RenameFileBrowser$3;->this$0:Lcom/sec/android/app/myfiles/RenameFileBrowser;

    #calls: Lcom/sec/android/app/myfiles/RenameFileBrowser;->getIconByType(Ljava/io/File;)Landroid/graphics/drawable/Drawable;
    invoke-static {v5, v3}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->access$500(Lcom/sec/android/app/myfiles/RenameFileBrowser;Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/sec/android/app/myfiles/SimpleIcon;-><init>(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->RENAMEFILE:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    const/4 v9, 0x1

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/app/myfiles/SimpleItem;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/sec/android/app/myfiles/SimpleIcon;ZZZLcom/sec/android/app/myfiles/SimpleItem$ItemType;ZZ)V

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    .end local v10           #isImage:Z
    :cond_73
    add-int/lit8 v14, v14, 0x1

    goto :goto_34

    .line 227
    .end local v3           #currentFile:Ljava/io/File;
    .end local v11           #arr$:[Ljava/io/File;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v16           #list:[Ljava/io/File;
    :cond_76
    const-string v1, "[MyFiles]"

    const-string v2, "RenameFileBrowser-load file list => finish"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v1, "[MyFiles]"

    const-string v2, "RenameFileBrowser-sort after loading => start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/myfiles/RenameFileBrowser$3;->this$0:Lcom/sec/android/app/myfiles/RenameFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/RenameFileBrowser;->tempDirectoryEntries:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->access$600(Lcom/sec/android/app/myfiles/RenameFileBrowser;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/myfiles/RenameFileBrowser$3;->this$0:Lcom/sec/android/app/myfiles/RenameFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/RenameFileBrowser;->mCurrentSortBy:I
    invoke-static {v2}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->access$700(Lcom/sec/android/app/myfiles/RenameFileBrowser;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/SimpleItem;->sort(Ljava/util/List;I)V

    .line 231
    const-string v1, "[MyFiles]"

    const-string v2, "RenameFileBrowser-sort after loading => finish"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_0 .. :try_end_9e} :catchall_d1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9e} :catch_ab

    .line 236
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/myfiles/RenameFileBrowser$3;->this$0:Lcom/sec/android/app/myfiles/RenameFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/RenameFileBrowser;->mLoadingHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->access$300(Lcom/sec/android/app/myfiles/RenameFileBrowser;)Landroid/os/Handler;

    move-result-object v1

    .end local v12           #dir:Ljava/io/File;
    :goto_a6
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 238
    return-void

    .line 233
    :catch_ab
    move-exception v13

    .line 234
    .local v13, e:Ljava/lang/Exception;
    :try_start_ac
    const-string v1, "[MyFiles]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "browseTo - Exception occured : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c8
    .catchall {:try_start_ac .. :try_end_c8} :catchall_d1

    .line 236
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/myfiles/RenameFileBrowser$3;->this$0:Lcom/sec/android/app/myfiles/RenameFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/RenameFileBrowser;->mLoadingHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->access$300(Lcom/sec/android/app/myfiles/RenameFileBrowser;)Landroid/os/Handler;

    move-result-object v1

    goto :goto_a6

    .end local v13           #e:Ljava/lang/Exception;
    :catchall_d1
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/myfiles/RenameFileBrowser$3;->this$0:Lcom/sec/android/app/myfiles/RenameFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/RenameFileBrowser;->mLoadingHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->access$300(Lcom/sec/android/app/myfiles/RenameFileBrowser;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    throw v1
.end method
