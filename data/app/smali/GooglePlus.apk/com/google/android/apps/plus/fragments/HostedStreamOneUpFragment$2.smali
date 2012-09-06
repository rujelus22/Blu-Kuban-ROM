.class Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$2;
.super Ljava/lang/Object;
.source "HostedStreamOneUpFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mCommentButton:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$200(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 382
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$300(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->requestFocus()Z

    .line 383
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$300(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/util/SoftInput;->show(Landroid/view/View;)V

    .line 385
    :cond_1a
    return-void
.end method
