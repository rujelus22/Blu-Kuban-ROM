.class Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;
.super Ljava/lang/Object;
.source "VideoBtnController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/VideoBtnController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field IsFirstTouchOnProgressbar:Z

.field duration:J

.field newposition:J

.field prePos:J

.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

.field unit:J


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V
    .registers 2
    .parameter

    .prologue
    .line 1885
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 13
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1916
    if-eqz p3, :cond_1b

    .line 1917
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbRewEnable:Z
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbFfEnable:Z
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2700(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 1918
    :cond_14
    const-string v3, "VideoBtnController"

    const-string v4, "onProgressChanged - REW/FF are disabled."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    :cond_1b
    :goto_1b
    return-void

    .line 1923
    :cond_1c
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->isBtHeadSetSeekStatus()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1924
    const-string v3, "VideoBtnController"

    const-string v4, "onProgressChanged - bt headset is working"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 1928
    :cond_32
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbProgressDragStatus:Z
    invoke-static {v3, v8}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1802(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z

    .line 1930
    iget-wide v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->duration:J

    int-to-long v5, p2

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    iput-wide v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->newposition:J

    .line 1931
    const-string v3, "VideoBtnController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onProgressChanged - progress :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " duration :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->duration:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newpos:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->newposition:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    sget v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v4, 0x1e

    if-eq v3, v4, :cond_7c

    sget v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v4, 0x1d

    if-ne v3, v4, :cond_9f

    .line 1934
    :cond_7c
    const-string v3, "VideoBtnController"

    const-string v4, "onProgressChanged - streaming - S K I P"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    :cond_83
    :goto_83
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 1965
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    iget-wide v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->newposition:J

    long-to-int v5, v5

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->stringForTimeCur(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$4300(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1b

    .line 1937
    :cond_9f
    const-string v3, "VideoBtnController"

    const-string v4, "onProgressChanged - local"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    iget-wide v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->newposition:J

    iget-wide v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->prePos:J

    sub-long v0, v3, v5

    .line 1941
    .local v0, diff:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_b9

    .line 1942
    const-wide/16 v3, -0x1

    xor-long/2addr v3, v0

    const-wide/16 v5, 0x1

    add-long v0, v3, v5

    .line 1945
    :cond_b9
    const-string v3, "VideoBtnController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onProgressChanged. diff = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    iget-wide v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->unit:J

    cmp-long v3, v0, v3

    if-lez v3, :cond_83

    .line 1948
    iget-boolean v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->IsFirstTouchOnProgressbar:Z

    if-ne v3, v8, :cond_e2

    .line 1949
    iput-boolean v7, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->IsFirstTouchOnProgressbar:Z

    .line 1960
    :cond_dd
    :goto_dd
    iget-wide v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->newposition:J

    iput-wide v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->prePos:J

    goto :goto_83

    .line 1951
    :cond_e2
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->isPlayReadyFile()Z

    move-result v3

    if-eqz v3, :cond_108

    sget-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->m_IsPyvFileInComplete:Z

    if-eqz v3, :cond_108

    .line 1952
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    iget-object v3, v3, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getSecondaryProgress()I

    move-result v2

    .line 1954
    .local v2, secProgress:I
    iget-wide v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->newposition:J

    int-to-long v5, v2

    cmp-long v3, v3, v5

    if-gez v3, :cond_dd

    .line 1955
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->newposition:J

    long-to-int v4, v4

    invoke-interface {v3, v4, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->seekTo(II)V

    goto :goto_dd

    .line 1957
    .end local v2           #secProgress:I
    :cond_108
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->newposition:J

    long-to-int v4, v4

    invoke-interface {v3, v4, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->seekTo(II)V

    goto :goto_dd
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 7
    .parameter "seekBar"

    .prologue
    const/4 v4, 0x1

    .line 1893
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbRewEnable:Z
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbFfEnable:Z
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2700(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 1894
    :cond_11
    const-string v0, "VideoBtnController"

    const-string v1, "onStartTrackingTouch - REW/FF are disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbProgressDragStatus:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1802(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z

    .line 1896
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-interface {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 1913
    :goto_28
    return-void

    .line 1901
    :cond_29
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->isBtHeadSetSeekStatus()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1902
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbProgressDragStatus:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1802(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z

    goto :goto_28

    .line 1906
    :cond_3d
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v0

    const v1, 0x36ee80

    invoke-interface {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 1907
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbProgressDragStatus:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1802(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z

    .line 1908
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->getDuration()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->duration:J

    .line 1909
    iget-wide v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->duration:J

    const-wide/16 v2, 0x14

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->unit:J

    .line 1910
    iput-boolean v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->IsFirstTouchOnProgressbar:Z

    .line 1912
    const-string v0, "VideoBtnController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartTrackingTouch. unit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->unit:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 10
    .parameter "seekBar"

    .prologue
    const/16 v7, 0xbb8

    const/4 v4, 0x0

    .line 1970
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbRewEnable:Z
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbFfEnable:Z
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2700(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 1971
    :cond_13
    const-string v2, "VideoBtnController"

    const-string v3, "onStopTrackingTouch - REW/FF are disabled."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbProgressDragStatus:Z
    invoke-static {v2, v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1802(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z

    .line 1973
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 2003
    :goto_28
    return-void

    .line 1977
    :cond_29
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->isBtHeadSetSeekStatus()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1978
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbProgressDragStatus:Z
    invoke-static {v2, v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1802(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z

    goto :goto_28

    .line 1982
    :cond_3d
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbProgressDragStatus:Z
    invoke-static {v2, v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1802(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z

    .line 1984
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->isPlayReadyFile()Z

    move-result v2

    if-eqz v2, :cond_74

    sget-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->m_IsPyvFileInComplete:Z

    if-eqz v2, :cond_74

    .line 1985
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 1986
    .local v0, progress:I
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getSecondaryProgress()I

    move-result v1

    .line 1988
    .local v1, secProgress:I
    if-ge v0, v1, :cond_6a

    .line 1989
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->newposition:J

    long-to-int v3, v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->seekTo(I)V

    .line 2002
    .end local v0           #progress:I
    .end local v1           #secProgress:I
    :cond_6a
    :goto_6a
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    goto :goto_28

    .line 1991
    :cond_74
    sget v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_80

    sget v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_94

    .line 1993
    :cond_80
    const-string v2, "VideoBtnController"

    const-string v3, "onStopTrackingTouch streaming "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->newposition:J

    long-to-int v3, v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->seekTo(I)V

    goto :goto_6a

    .line 1997
    :cond_94
    const-string v2, "VideoBtnController"

    const-string v3, "onStopTrackingTouch local"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;->newposition:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    long-to-int v3, v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->seekTo(II)V

    goto :goto_6a
.end method
