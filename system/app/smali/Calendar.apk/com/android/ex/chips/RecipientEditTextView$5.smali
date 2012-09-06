.class Lcom/android/ex/chips/RecipientEditTextView$5;
.super Landroid/os/Handler;
.source "RecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/RecipientEditTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/RecipientEditTextView;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;)V
    .registers 2
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$5;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 249
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/android/ex/chips/RecipientEditTextView;->access$600()I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 250
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 254
    :goto_f
    return-void

    .line 253
    :cond_10
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_f
.end method
