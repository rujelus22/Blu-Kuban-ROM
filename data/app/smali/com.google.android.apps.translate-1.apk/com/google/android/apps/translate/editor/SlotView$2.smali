.class Lcom/google/android/apps/translate/editor/SlotView$2;
.super Ljava/lang/Object;
.source "SlotView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/editor/SlotView;->makeCursorVisible()V
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
    .line 304
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/SlotView$2;->this$0:Lcom/google/android/apps/translate/editor/SlotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 307
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/SlotView$2;->this$0:Lcom/google/android/apps/translate/editor/SlotView;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/editor/SlotView;->getSelectionStart()I

    move-result v1

    .line 308
    .local v1, start:I
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/SlotView$2;->this$0:Lcom/google/android/apps/translate/editor/SlotView;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/editor/SlotView;->getSelectionEnd()I

    move-result v0

    .line 309
    .local v0, end:I
    if-ne v1, v0, :cond_36

    .line 310
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/SlotView$2;->this$0:Lcom/google/android/apps/translate/editor/SlotView;

    const/4 v3, 0x1

    #setter for: Lcom/google/android/apps/translate/editor/SlotView;->mInternalEdit:Z
    invoke-static {v2, v3}, Lcom/google/android/apps/translate/editor/SlotView;->access$002(Lcom/google/android/apps/translate/editor/SlotView;Z)Z

    .line 311
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/SlotView$2;->this$0:Lcom/google/android/apps/translate/editor/SlotView;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/editor/SlotView;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    const-string v3, " "

    invoke-interface {v2, v1, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 312
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/SlotView$2;->this$0:Lcom/google/android/apps/translate/editor/SlotView;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/editor/SlotView;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v1, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 313
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/SlotView$2;->this$0:Lcom/google/android/apps/translate/editor/SlotView;

    new-instance v3, Lcom/google/android/apps/translate/editor/SlotView$2$1;

    invoke-direct {v3, p0}, Lcom/google/android/apps/translate/editor/SlotView$2$1;-><init>(Lcom/google/android/apps/translate/editor/SlotView$2;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/apps/translate/editor/SlotView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 320
    :cond_36
    return-void
.end method
