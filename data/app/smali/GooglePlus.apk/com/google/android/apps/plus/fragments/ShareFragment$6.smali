.class Lcom/google/android/apps/plus/fragments/ShareFragment$6;
.super Ljava/lang/Object;
.source "ShareFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/ShareFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/ShareFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 918
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .parameter "s"

    .prologue
    .line 938
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getView()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/ShareFragment;->updatePostUI(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$1500(Lcom/google/android/apps/plus/fragments/ShareFragment;Landroid/view/View;)V

    .line 939
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 924
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 930
    return-void
.end method
