.class Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;
.super Ljava/lang/Object;
.source "VideoSubTitleUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->createSelectSubtitlesPopup(Landroid/content/Context;)V
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
    .line 822
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 7
    .parameter "dialog"

    .prologue
    .line 825
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->findingSubtitleFilesDlg:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$1100(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-nez v1, :cond_9

    .line 883
    :goto_8
    return-void

    .line 828
    :cond_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$600(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 829
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f08008c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 831
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubFilesList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$1200(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_64

    .line 832
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubFilesList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$1200(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 833
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubFilesList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$1200(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$600(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080070

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    :cond_49
    new-instance v1, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SelectSubtitleAdapter;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$600(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubFilesList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$1200(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SelectSubtitleAdapter;-><init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;Landroid/content/Context;Ljava/util/ArrayList;)V

    new-instance v2, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9$1;-><init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 860
    :cond_64
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$1500(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 861
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    .line 862
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9$2;-><init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 881
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 882
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->findingSubtitleFilesDlg:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$1102(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_8
.end method
