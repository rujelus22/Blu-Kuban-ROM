.class Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$2;
.super Landroid/os/Handler;
.source "AddVideoImagePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$2;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    .line 487
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$2;)Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;
    .registers 2
    .parameter

    .prologue
    .line 487
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$2;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 491
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_52

    .line 529
    :cond_6
    :goto_6
    :pswitch_6
    return-void

    .line 493
    :pswitch_7
    iget-object v5, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$2;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mVideoAdapter:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$VideoAdapter;
    invoke-static {v5}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->access$1(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;)Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$VideoAdapter;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 495
    const-string v5, "This is before calling notifyData Set Chnaged"

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 496
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->access$2()Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$2$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$2$1;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$2;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 506
    :pswitch_21
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 507
    .local v2, objs:[Ljava/lang/Object;
    aget-object v4, v2, v6

    check-cast v4, Landroid/widget/ImageView;

    .line 508
    .local v4, targetView:Landroid/widget/ImageView;
    const/4 v5, 0x1

    aget-object v0, v2, v5

    check-cast v0, Ljava/lang/String;

    .line 509
    .local v0, bitmap:Ljava/lang/String;
    if-eqz v4, :cond_41

    .line 511
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 512
    sget-object v5, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mImageBitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_6

    .line 515
    :cond_41
    const-string v5, "This is inside Load Bitmap fro Image and targe bitmap is null"

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 518
    .end local v0           #bitmap:Ljava/lang/String;
    .end local v2           #objs:[Ljava/lang/Object;
    .end local v4           #targetView:Landroid/widget/ImageView;
    :pswitch_47
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    .line 519
    .local v3, objs1:[Ljava/lang/Object;
    aget-object v1, v3, v6

    check-cast v1, Landroid/graphics/Bitmap;

    .line 520
    .local v1, lBitMapHolder:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 521
    goto :goto_6

    .line 491
    nop

    :pswitch_data_52
    .packed-switch 0x31
        :pswitch_7
        :pswitch_21
        :pswitch_47
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
