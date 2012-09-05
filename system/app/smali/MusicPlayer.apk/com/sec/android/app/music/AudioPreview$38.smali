.class Lcom/sec/android/app/music/AudioPreview$38;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/AudioPreview;)V
    .registers 2
    .parameter

    .prologue
    .line 4828
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$38;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 9
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/16 v2, 0x2c

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4833
    const/4 v0, 0x1

    .line 4836
    .local v0, result:Z
    const/16 v1, 0x321

    if-ne p2, v1, :cond_e

    .line 4837
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$38;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iput-boolean v3, v1, Lcom/sec/android/app/music/AudioPreview;->mIsSeekable:Z

    .line 4838
    const/4 v0, 0x0

    .line 4841
    :cond_e
    if-eq p2, v2, :cond_12

    if-ne p3, v2, :cond_66

    .line 4842
    :cond_12
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$38;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v2, "onInfoListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4843
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$38;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/music/AudioPreview;->access$2900(Lcom/sec/android/app/music/AudioPreview;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$38;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/music/AudioPreview;->access$2900(Lcom/sec/android/app/music/AudioPreview;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 4844
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$38;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v2, "onInfoListener here aquiring pop up is dismissed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4845
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$38;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/music/AudioPreview;->access$2900(Lcom/sec/android/app/music/AudioPreview;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4849
    :cond_41
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$38;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->InfoModechanged:Z
    invoke-static {v1}, Lcom/sec/android/app/music/AudioPreview;->access$4600(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v1

    if-ne v1, v4, :cond_57

    .line 4850
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$38;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iput-boolean v4, v1, Lcom/sec/android/app/music/AudioPreview;->isInfoMode:Z

    .line 4851
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$38;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #setter for: Lcom/sec/android/app/music/AudioPreview;->InfoModechanged:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/music/AudioPreview;->access$4602(Lcom/sec/android/app/music/AudioPreview;Z)Z

    .line 4852
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$38;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v1}, Lcom/sec/android/app/music/AudioPreview;->updateMediaInfo()V

    .line 4854
    :cond_57
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$38;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #setter for: Lcom/sec/android/app/music/AudioPreview;->pyv_wmdrm_file:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/music/AudioPreview;->access$4502(Lcom/sec/android/app/music/AudioPreview;Z)Z

    .line 4855
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$38;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v2, "pyv_wmdrm_file is made false onInfoListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4856
    const/4 v0, 0x1

    .line 4858
    :cond_66
    return v0
.end method
