.class Lcom/sec/android/app/videoplayer/view/VideoSplitView$6;
.super Ljava/lang/Object;
.source "VideoSplitView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/view/VideoSplitView;->selectProcess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)V
    .registers 2
    .parameter

    .prologue
    .line 806
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    .line 808
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$200(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080038

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 809
    .local v1, msg:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget-object v3, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_68

    .line 810
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$200(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080039

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 816
    :cond_2b
    :goto_2b
    :try_start_2b
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$200(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08000c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f020041

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080036

    new-instance v4, Lcom/sec/android/app/videoplayer/view/VideoSplitView$6$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView$6$2;-><init>(Lcom/sec/android/app/videoplayer/view/VideoSplitView$6;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080037

    new-instance v4, Lcom/sec/android/app/videoplayer/view/VideoSplitView$6$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView$6$1;-><init>(Lcom/sec/android/app/videoplayer/view/VideoSplitView$6;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_67} :catch_91

    .line 836
    :goto_67
    return-void

    .line 811
    :cond_68
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_2b

    .line 812
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$200(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08003a

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    iget-object v6, v6, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    .line 833
    :catch_91
    move-exception v0

    .line 834
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VideoSplitView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectProcess() { ... show(); ...} - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67
.end method
