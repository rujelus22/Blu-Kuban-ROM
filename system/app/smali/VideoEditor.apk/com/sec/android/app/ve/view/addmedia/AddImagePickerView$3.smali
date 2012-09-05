.class Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$3;
.super Ljava/lang/Object;
.source "AddImagePickerView.java"

# interfaces
.implements Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$VideoImageThumbnaiFetcherCallbak;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$3;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bitmapCreated(Landroid/view/View;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 7
    .parameter "targetView"
    .parameter "bitmap"
    .parameter "aFilePath"

    .prologue
    .line 494
    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$3;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    #calls: Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->insertBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-static {v1, p3, p2}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->access$2(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 496
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 497
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xfa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 498
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 499
    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$3;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->access$3(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 501
    return-void
.end method

.method public isTargetViewExist(Landroid/view/View;ILjava/lang/String;)Z
    .registers 9
    .parameter "targetView"
    .parameter "position"
    .parameter "aFilePath"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 505
    iget-object v4, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$3;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mAddImagePickerView:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;
    invoke-static {v4}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->access$4(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->getFirstVisiblePosition()I

    move-result v1

    .line 507
    .local v1, lStartpos:I
    iget-object v4, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$3;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mAddImagePickerView:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;
    invoke-static {v4}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->access$4(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->getLastVisiblePosition()I

    move-result v0

    .line 508
    .local v0, lEndpos:I
    if-nez p2, :cond_23

    .line 510
    sget-object v4, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mImageBitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 529
    :cond_20
    :goto_20
    return v2

    :cond_21
    move v2, v3

    .line 519
    goto :goto_20

    .line 522
    :cond_23
    add-int/lit8 v4, v1, -0x8

    if-lt p2, v4, :cond_2b

    add-int/lit8 v4, v0, 0x8

    if-le p2, v4, :cond_20

    .line 527
    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Current view is not highlighted -->"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    move v2, v3

    .line 529
    goto :goto_20
.end method
