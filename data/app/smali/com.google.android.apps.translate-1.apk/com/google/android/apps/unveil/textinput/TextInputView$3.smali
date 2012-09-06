.class Lcom/google/android/apps/unveil/textinput/TextInputView$3;
.super Ljava/lang/Object;
.source "TextInputView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/textinput/TextInputView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/textinput/TextInputView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/textinput/TextInputView;)V
    .registers 2
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/TextInputView$3;->this$0:Lcom/google/android/apps/unveil/textinput/TextInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView$3;->this$0:Lcom/google/android/apps/unveil/textinput/TextInputView;

    #getter for: Lcom/google/android/apps/unveil/textinput/TextInputView;->listener:Lcom/google/android/apps/unveil/textinput/TextInputView$Listener;
    invoke-static {v0}, Lcom/google/android/apps/unveil/textinput/TextInputView;->access$200(Lcom/google/android/apps/unveil/textinput/TextInputView;)Lcom/google/android/apps/unveil/textinput/TextInputView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/unveil/textinput/TextInputView$Listener;->onKeyboardButton()V

    .line 101
    return-void
.end method
