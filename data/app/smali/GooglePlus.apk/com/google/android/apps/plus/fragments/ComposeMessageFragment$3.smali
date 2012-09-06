.class Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$3;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "editable"

    .prologue
    .line 134
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "text"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 138
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    #calls: Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->updateSendButtonState()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->access$300(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;)V

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    #calls: Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->updateTypingStatus()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->access$200(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;)V

    .line 144
    return-void
.end method
