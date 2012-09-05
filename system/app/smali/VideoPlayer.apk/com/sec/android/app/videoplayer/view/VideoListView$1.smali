.class Lcom/sec/android/app/videoplayer/view/VideoListView$1;
.super Ljava/lang/Object;
.source "VideoListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/view/VideoListView;->initMainView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoListView;)V
    .registers 2
    .parameter

    .prologue
    .line 769
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v5, 0x7f080025

    .line 771
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$000(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 773
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_52

    .line 774
    const-string v2, "VideoListView"

    const-string v3, "onResume() - call connect. Do not play video."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const-string v2, "VideoListView"

    const-string v3, "onResume() - CALL_STATE_OFFHOOK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$100(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/widget/Toast;

    move-result-object v2

    if-nez v2, :cond_48

    .line 777
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$000(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mToast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$102(Lcom/sec/android/app/videoplayer/view/VideoListView;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 781
    :goto_3e
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$100(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 809
    :cond_47
    :goto_47
    return-void

    .line 779
    :cond_48
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$100(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Toast;->setText(I)V

    goto :goto_3e

    .line 785
    :cond_52
    const-wide/16 v2, -0x65

    cmp-long v2, p4, v2

    if-eqz v2, :cond_47

    const-wide/16 v2, -0x66

    cmp-long v2, p4, v2

    if-eqz v2, :cond_47

    const-wide/16 v2, -0x67

    cmp-long v2, p4, v2

    if-eqz v2, :cond_47

    .line 787
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mPlayPosition:I
    invoke-static {v2, p3}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$202(Lcom/sec/android/app/videoplayer/view/VideoListView;I)I

    .line 788
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mFirstPosition:I
    invoke-static {v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$302(Lcom/sec/android/app/videoplayer/view/VideoListView;I)I

    .line 790
    const-string v2, "VideoListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initMainView() - viewBy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->viewBy:I
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$400(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->viewBy:I
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$400(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_a0

    .line 793
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoListView;->callMoviePlay()V
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$500(Lcom/sec/android/app/videoplayer/view/VideoListView;)V

    goto :goto_47

    .line 795
    :cond_a0
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mPlayPosition:I
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$200(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mFirstPosition:I
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$300(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v4

    sub-int/2addr v3, v4

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mAnimationPos:I
    invoke-static {v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$602(Lcom/sec/android/app/videoplayer/view/VideoListView;I)I

    .line 797
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v3

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mAdapterSize:I
    invoke-static {v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$702(Lcom/sec/android/app/videoplayer/view/VideoListView;I)I

    .line 800
    :try_start_bb
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mAnimationPos:I
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$600(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0028

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_d0} :catch_d7

    .line 806
    :goto_d0
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoListView;->callMoviePlay()V
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$500(Lcom/sec/android/app/videoplayer/view/VideoListView;)V

    goto/16 :goto_47

    .line 801
    :catch_d7
    move-exception v0

    .line 802
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VideoListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const-string v2, "VideoListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adapterSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mAdapterSize:I
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$700(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0
.end method
