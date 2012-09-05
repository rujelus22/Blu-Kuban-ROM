.class Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9$2;
.super Ljava/lang/Object;
.source "VideoSubTitleUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;)V
    .registers 2
    .parameter

    .prologue
    .line 862
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9$2;->this$1:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    .line 865
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3b

    .line 866
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 867
    sput-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    .line 868
    sget-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHasSubtitle:Z

    if-eqz v0, :cond_3c

    .line 869
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9$2;->this$1:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9$2;->this$1:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;

    iget-object v1, v1, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$600(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->createSubTitleSettingPopup(Landroid/content/Context;)V

    .line 873
    :goto_1f
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9$2;->this$1:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubFilesList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$1200(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 874
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9$2;->this$1:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubFilesList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$1200(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 875
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9$2;->this$1:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #setter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubFilesList:Ljava/util/ArrayList;
    invoke-static {v0, v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$1202(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 878
    :cond_3b
    return-void

    .line 871
    :cond_3c
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9$2;->this$1:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #calls: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->resumeByDialog()V
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$500(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    goto :goto_1f
.end method
