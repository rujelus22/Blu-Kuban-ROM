.class Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$4;
.super Landroid/os/Handler;
.source "AddImagePickerView.java"


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
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$4;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    .line 533
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 538
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_76

    .line 584
    :cond_6
    :goto_6
    :pswitch_6
    return-void

    .line 540
    :pswitch_7
    sget-object v5, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_21

    .line 541
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v5

    if-eqz v5, :cond_21

    .line 543
    const-string v5, "Image Picker view making no Images invisible"

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 544
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->makeNoImageInVisible()V

    .line 547
    :cond_21
    iget-object v5, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$4;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mImageAdapter:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$ImageAdapter;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->access$5(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$ImageAdapter;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 550
    const-string v5, "ImagePicker :: before calling notifyData Set Chnaged -->"

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 551
    iget-object v5, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$4;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mImageAdapter:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$ImageAdapter;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->access$5(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$ImageAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$ImageAdapter;->notifyDataSetChanged()V

    goto :goto_6

    .line 556
    :pswitch_38
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 557
    .local v2, objs:[Ljava/lang/Object;
    aget-object v4, v2, v6

    check-cast v4, Landroid/widget/ImageView;

    .line 558
    .local v4, targetView:Landroid/widget/ImageView;
    const/4 v5, 0x1

    aget-object v0, v2, v5

    check-cast v0, Ljava/lang/String;

    .line 559
    .local v0, bitmap:Ljava/lang/String;
    if-eqz v4, :cond_58

    .line 561
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 562
    sget-object v5, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mImageBitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_6

    .line 565
    :cond_58
    const-string v5, "This is inside Load Bitmap fro Image and targe bitmap is null"

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 568
    .end local v0           #bitmap:Ljava/lang/String;
    .end local v2           #objs:[Ljava/lang/Object;
    .end local v4           #targetView:Landroid/widget/ImageView;
    :pswitch_5e
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    .line 569
    .local v3, objs1:[Ljava/lang/Object;
    aget-object v1, v3, v6

    check-cast v1, Landroid/graphics/Bitmap;

    .line 571
    .local v1, lBitMapHolder:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 572
    goto :goto_6

    .line 579
    .end local v1           #lBitMapHolder:Landroid/graphics/Bitmap;
    .end local v3           #objs1:[Ljava/lang/Object;
    :pswitch_68
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 580
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->makeNoImageVisible()V

    goto :goto_6

    .line 538
    :pswitch_data_76
    .packed-switch 0xf8
        :pswitch_68
        :pswitch_7
        :pswitch_38
        :pswitch_5e
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method
