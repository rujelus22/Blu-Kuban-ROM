.class Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$3;
.super Landroid/os/Handler;
.source "AddMusicAlbumPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$3;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    .line 488
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    .line 492
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_86

    .line 534
    :cond_6
    :goto_6
    return-void

    .line 494
    :pswitch_7
    iget-object v7, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$3;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    #setter for: Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mDefAlbumIndex:I
    invoke-static {v7, v8}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->access$5(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;I)V

    .line 495
    iget-object v7, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$3;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mMusicAlbumAdapter:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;
    invoke-static {v7}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->access$6(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;)Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 497
    iget-object v7, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$3;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mMusicAlbumAdapter:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;
    invoke-static {v7}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->access$6(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;)Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;->notifyDataSetChanged()V

    goto :goto_6

    .line 501
    :pswitch_1e
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 502
    .local v2, objs:[Ljava/lang/Object;
    aget-object v5, v2, v8

    check-cast v5, Landroid/widget/ImageView;

    .line 503
    .local v5, targetView:Landroid/widget/ImageView;
    const/4 v7, 0x1

    aget-object v0, v2, v7

    check-cast v0, Ljava/lang/String;

    .line 504
    .local v0, bitmap:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "This is inside Load Bitmap for Music and bitmap is -->"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 505
    if-eqz v5, :cond_50

    .line 507
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 508
    sget-object v7, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mMusicAlbumBitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_6

    .line 511
    :cond_50
    const-string v7, "This is inside Load Bitmap for Music and targe bitmap is null"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 514
    .end local v0           #bitmap:Ljava/lang/String;
    .end local v2           #objs:[Ljava/lang/Object;
    .end local v5           #targetView:Landroid/widget/ImageView;
    :pswitch_56
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    .line 515
    .local v4, objsnull:[Ljava/lang/Object;
    aget-object v6, v4, v8

    check-cast v6, Landroid/widget/ImageView;

    .line 516
    .local v6, targetViewnull:Landroid/widget/ImageView;
    if-eqz v6, :cond_71

    .line 518
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 519
    iget-object v7, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$3;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mDefaultAlbums:[I
    invoke-static {v7}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->access$7(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;)[I

    move-result-object v7

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 522
    :cond_71
    const-string v7, "This is inside Load Bitmap for Music and targe bitmap is null"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 526
    .end local v4           #objsnull:[Ljava/lang/Object;
    .end local v6           #targetViewnull:Landroid/widget/ImageView;
    :pswitch_77
    const-string v7, "Inside RECYCLE_ALBUMBITMAP_IMAGE and resetting bitmap"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 527
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    .line 528
    .local v3, objs1:[Ljava/lang/Object;
    aget-object v1, v3, v8

    check-cast v1, Landroid/graphics/Bitmap;

    .line 529
    .local v1, lBitMapHolder:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 530
    goto :goto_6

    .line 492
    :pswitch_data_86
    .packed-switch 0x4b
        :pswitch_7
        :pswitch_1e
        :pswitch_77
        :pswitch_56
    .end packed-switch
.end method
