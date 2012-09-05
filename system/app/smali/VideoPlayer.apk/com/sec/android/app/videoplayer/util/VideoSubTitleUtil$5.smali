.class Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$5;
.super Ljava/lang/Object;
.source "VideoSubTitleUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->createSizePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V
    .registers 2
    .parameter

    .prologue
    .line 686
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$5;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 689
    packed-switch p2, :pswitch_data_32

    .line 715
    :goto_3
    return-void

    .line 691
    :pswitch_4
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setSubTitleSize(I)V

    .line 705
    :goto_8
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getSubTitleView()Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;

    move-result-object v0

    .line 707
    .local v0, subTitelView:Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;
    if-eqz v0, :cond_13

    .line 708
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->updateSubTitleProperty()V

    .line 711
    :cond_13
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 712
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    .line 714
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$5;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$5;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$600(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->createSubTitleSettingPopup(Landroid/content/Context;)V

    goto :goto_3

    .line 695
    .end local v0           #subTitelView:Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;
    :pswitch_27
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setSubTitleSize(I)V

    goto :goto_8

    .line 699
    :pswitch_2c
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setSubTitleSize(I)V

    goto :goto_8

    .line 689
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_4
        :pswitch_27
        :pswitch_2c
    .end packed-switch
.end method
