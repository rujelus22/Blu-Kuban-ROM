.class Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$3;
.super Landroid/os/Handler;
.source "MediaInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$3;->this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 156
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_34

    .line 174
    :goto_5
    return-void

    .line 158
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$3;->this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    #calls: Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->showMediaInfoView()V
    invoke-static {v0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->access$200(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$3;->this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mRichInfoView:Lcom/sec/android/app/music/common/richinfo/RichInfoView;
    invoke-static {v0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->access$300(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)Lcom/sec/android/app/music/common/richinfo/RichInfoView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$3;->this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->initView(Landroid/view/Display;)V

    .line 162
    sget-boolean v0, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasRichInfo:Z

    if-eqz v0, :cond_27

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$3;->this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    #calls: Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->setVisibleMediaInfoView()V
    invoke-static {v0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->access$400(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V

    .line 166
    :cond_27
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$3;->this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    #calls: Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->hideProgressDialog()V
    invoke-static {v0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->access$500(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V

    goto :goto_5

    .line 169
    :pswitch_2d
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$3;->this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    #calls: Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->requestUMSinfo()V
    invoke-static {v0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->access$600(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V

    goto :goto_5

    .line 156
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_6
        :pswitch_2d
    .end packed-switch
.end method
