.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4$1;
.super Ljava/lang/Object;
.source "PhotoRetouching.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4$1;->this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;

    .line 2055
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2058
    const-string v5, "[PhotoEditor_U1ICS_120206]"

    const-string v6, "Edit Done Start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    invoke-static {v9}, Lcom/sec/android/mimage/photoretouching/common/Image;->getSaveFileName(I)Ljava/lang/String;

    move-result-object v4

    .line 2061
    .local v4, path:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/sec/android/mimage/photoretouching/common/Constants;->DB_DIR:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2063
    .local v2, db_path:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4$1;->this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->access$0(Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;)Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    move-result-object v5

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mdatabase:Lcom/sec/android/mimage/photoretouching/DBAdapter;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$20(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/DBAdapter;

    move-result-object v5

    if-nez v5, :cond_46

    .line 2064
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4$1;->this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->access$0(Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;)Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    move-result-object v5

    new-instance v6, Lcom/sec/android/mimage/photoretouching/DBAdapter;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4$1;->this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;
    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->access$0(Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;)Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sec/android/mimage/photoretouching/DBAdapter;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mdatabase:Lcom/sec/android/mimage/photoretouching/DBAdapter;
    invoke-static {v5, v6}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$21(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Lcom/sec/android/mimage/photoretouching/DBAdapter;)V

    .line 2065
    :cond_46
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4$1;->this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->access$0(Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;)Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    move-result-object v5

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mdatabase:Lcom/sec/android/mimage/photoretouching/DBAdapter;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$20(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/DBAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4$1;->this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->access$0(Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;)Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    move-result-object v6

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->undo_redo_pos:I
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$22(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/sec/android/mimage/photoretouching/DBController;->deleteNextAll(Lcom/sec/android/mimage/photoretouching/DBAdapter;I)V

    .line 2067
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4$1;->this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->access$0(Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;)Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    move-result-object v5

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$19(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v6, Lcom/sec/android/mimage/photoretouching/common/Constants;->DB_DIR:Ljava/lang/String;

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v5, v6, v4, v7}, Lcom/sec/android/mimage/photoretouching/common/Image;->storeImage(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 2068
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4$1;->this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->access$0(Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;)Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    move-result-object v5

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mdatabase:Lcom/sec/android/mimage/photoretouching/DBAdapter;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$20(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/DBAdapter;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/sec/android/mimage/photoretouching/DBController;->saveToDB(Lcom/sec/android/mimage/photoretouching/DBAdapter;Ljava/lang/String;)[I

    .line 2071
    :cond_82
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4$1;->this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->access$0(Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;)Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    move-result-object v5

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDBfront:I
    invoke-static {v5, v8}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$23(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 2072
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4$1;->this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->access$0(Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;)Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    move-result-object v5

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mdatabase:Lcom/sec/android/mimage/photoretouching/DBAdapter;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$20(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/DBAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/DBAdapter;->open()Lcom/sec/android/mimage/photoretouching/DBAdapter;

    .line 2073
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4$1;->this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->access$0(Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;)Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    move-result-object v5

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mdatabase:Lcom/sec/android/mimage/photoretouching/DBAdapter;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$20(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/DBAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/DBAdapter;->fetchAllBooks()Landroid/database/Cursor;

    move-result-object v1

    .line 2074
    .local v1, c:Landroid/database/Cursor;
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4$1;->this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->access$0(Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;)Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    move-result-object v5

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDBrear:I
    invoke-static {v5, v6}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$24(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 2075
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4$1;->this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->access$0(Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;)Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4$1;->this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->access$0(Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;)Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    move-result-object v6

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDBrear:I
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$25(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)I

    move-result v6

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->undo_redo_pos:I
    invoke-static {v5, v6}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$26(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 2076
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2077
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4$1;->this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->access$0(Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;)Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    move-result-object v5

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mdatabase:Lcom/sec/android/mimage/photoretouching/DBAdapter;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$20(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/DBAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/DBAdapter;->close()V

    .line 2080
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4$1;->this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->access$0(Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;)Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0xb

    invoke-virtual {v5, v9, v6, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 2081
    .local v3, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2082
    .local v0, bundle:Landroid/os/Bundle;
    const-string v5, "path"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2083
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2084
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4$1;->this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;->access$0(Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;)Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2087
    return-void
.end method
