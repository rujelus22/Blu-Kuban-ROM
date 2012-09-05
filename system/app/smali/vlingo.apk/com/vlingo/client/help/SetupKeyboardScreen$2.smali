.class Lcom/vlingo/client/help/SetupKeyboardScreen$2;
.super Ljava/lang/Object;
.source "SetupKeyboardScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/help/SetupKeyboardScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/help/SetupKeyboardScreen;


# direct methods
.method constructor <init>(Lcom/vlingo/client/help/SetupKeyboardScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/vlingo/client/help/SetupKeyboardScreen$2;->this$0:Lcom/vlingo/client/help/SetupKeyboardScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 37
    iget-object v1, p0, Lcom/vlingo/client/help/SetupKeyboardScreen$2;->this$0:Lcom/vlingo/client/help/SetupKeyboardScreen;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/help/SetupKeyboardScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 38
    .local v0, manager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_f

    .line 39
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 41
    :cond_f
    return-void
.end method
