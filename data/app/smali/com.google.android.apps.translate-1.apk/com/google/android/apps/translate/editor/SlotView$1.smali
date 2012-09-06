.class Lcom/google/android/apps/translate/editor/SlotView$1;
.super Ljava/lang/Object;
.source "SlotView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/editor/SlotView;->initWatcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/editor/SlotView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/editor/SlotView;)V
    .registers 2
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/SlotView$1;->this$0:Lcom/google/android/apps/translate/editor/SlotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .parameter "s"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView$1;->this$0:Lcom/google/android/apps/translate/editor/SlotView;

    #getter for: Lcom/google/android/apps/translate/editor/SlotView;->mInternalEdit:Z
    invoke-static {v0}, Lcom/google/android/apps/translate/editor/SlotView;->access$000(Lcom/google/android/apps/translate/editor/SlotView;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 203
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SlotView$1;->this$0:Lcom/google/android/apps/translate/editor/SlotView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/editor/SlotView;->onValueChanged(Ljava/lang/String;)V

    .line 205
    :cond_11
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 198
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 193
    return-void
.end method
