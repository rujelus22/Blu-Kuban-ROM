.class Lcom/google/android/apps/plus/fragments/EditPostFragment$2;
.super Ljava/lang/Object;
.source "EditPostFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/EditPostFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/EditPostFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/EditPostFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/EditPostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .parameter "s"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/EditPostFragment;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/plus/fragments/EditPostFragment;->mChanged:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/EditPostFragment;->access$402(Lcom/google/android/apps/plus/fragments/EditPostFragment;Z)Z

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditPostFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/EditPostFragment;

    #calls: Lcom/google/android/apps/plus/fragments/EditPostFragment;->updatePostUI()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/EditPostFragment;->access$500(Lcom/google/android/apps/plus/fragments/EditPostFragment;)V

    .line 138
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 127
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 131
    return-void
.end method
