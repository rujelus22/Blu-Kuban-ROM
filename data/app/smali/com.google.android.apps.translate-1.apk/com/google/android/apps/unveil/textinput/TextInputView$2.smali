.class Lcom/google/android/apps/unveil/textinput/TextInputView$2;
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
    .line 89
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/TextInputView$2;->this$0:Lcom/google/android/apps/unveil/textinput/TextInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView$2;->this$0:Lcom/google/android/apps/unveil/textinput/TextInputView;

    #getter for: Lcom/google/android/apps/unveil/textinput/TextInputView;->textInput:Lcom/google/android/apps/unveil/textinput/TextInput;
    invoke-static {v0}, Lcom/google/android/apps/unveil/textinput/TextInputView;->access$000(Lcom/google/android/apps/unveil/textinput/TextInputView;)Lcom/google/android/apps/unveil/textinput/TextInput;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInputView$2;->this$0:Lcom/google/android/apps/unveil/textinput/TextInputView;

    #getter for: Lcom/google/android/apps/unveil/textinput/TextInputView;->sourceLanguage:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/unveil/textinput/TextInputView;->access$100(Lcom/google/android/apps/unveil/textinput/TextInputView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/textinput/TextInput;->startInput(Ljava/lang/String;)Z

    .line 93
    return-void
.end method
