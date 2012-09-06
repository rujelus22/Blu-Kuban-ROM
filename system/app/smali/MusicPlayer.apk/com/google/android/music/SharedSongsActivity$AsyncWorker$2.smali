.class Lcom/google/android/music/SharedSongsActivity$AsyncWorker$2;
.super Ljava/lang/Object;
.source "SharedSongsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/SharedSongsActivity$AsyncWorker;


# direct methods
.method constructor <init>(Lcom/google/android/music/SharedSongsActivity$AsyncWorker;)V
    .registers 2
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker$2;->this$1:Lcom/google/android/music/SharedSongsActivity$AsyncWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker$2;->this$1:Lcom/google/android/music/SharedSongsActivity$AsyncWorker;

    iget-object v0, v0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/google/android/music/SharedSongsActivity;->access$400(Lcom/google/android/music/SharedSongsActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0d0005

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 192
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker$2;->this$1:Lcom/google/android/music/SharedSongsActivity$AsyncWorker;

    iget-object v0, v0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/music/SharedSongsActivity;->access$500(Lcom/google/android/music/SharedSongsActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker$2;->this$1:Lcom/google/android/music/SharedSongsActivity$AsyncWorker;

    iget-object v1, v1, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    invoke-virtual {v1}, Lcom/google/android/music/SharedSongsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d017b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker$2;->this$1:Lcom/google/android/music/SharedSongsActivity$AsyncWorker;

    iget-object v0, v0, Lcom/google/android/music/SharedSongsActivity$AsyncWorker;->this$0:Lcom/google/android/music/SharedSongsActivity;

    #getter for: Lcom/google/android/music/SharedSongsActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/google/android/music/SharedSongsActivity;->access$600(Lcom/google/android/music/SharedSongsActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 195
    return-void
.end method
