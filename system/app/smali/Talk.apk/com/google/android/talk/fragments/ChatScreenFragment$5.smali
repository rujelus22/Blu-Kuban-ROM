.class Lcom/google/android/talk/fragments/ChatScreenFragment$5;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;->setupInputFieldAndSendButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1255
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$5;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .parameter "s"

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$5;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mSendButton:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2700(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_11

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1259
    return-void

    .line 1258
    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1263
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1267
    return-void
.end method
