.class Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup$1;
.super Ljava/lang/Object;
.source "VideoAutoPlayPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;)V
    .registers 2
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 57
    .local v0, isOn:Z
    if-nez p2, :cond_6a

    .line 58
    const/4 v0, 0x1

    .line 59
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->access$000(Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080089

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, toastText:Ljava/lang/String;
    :goto_11
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->access$000(Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;

    move-result-object v2

    const-string v3, "autoPlay"

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->saveState(Ljava/lang/String;Z)V

    .line 67
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->access$000(Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->access$000(Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080088

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 69
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->settings:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->access$100(Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_69

    .line 70
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->settings:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->access$100(Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 71
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;

    const/4 v3, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->settings:Landroid/app/AlertDialog;
    invoke-static {v2, v3}, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->access$102(Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 73
    :cond_69
    return-void

    .line 61
    .end local v1           #toastText:Ljava/lang/String;
    :cond_6a
    const/4 v0, 0x0

    .line 62
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;->access$000(Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08008a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #toastText:Ljava/lang/String;
    goto :goto_11
.end method
