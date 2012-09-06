.class Lcom/google/android/apps/plus/fragments/EditCommentFragment$2;
.super Ljava/lang/Object;
.source "EditCommentFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/EditCommentFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/EditCommentFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/EditCommentFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EditCommentFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/EditCommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .parameter "s"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditCommentFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/EditCommentFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->mChanged:Z

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditCommentFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/EditCommentFragment;

    #calls: Lcom/google/android/apps/plus/fragments/EditCommentFragment;->updatePostUI()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->access$100(Lcom/google/android/apps/plus/fragments/EditCommentFragment;)V

    .line 112
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 102
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 105
    return-void
.end method
