.class Lcom/swype/android/inputmethod/SwypeInputMethod$1;
.super Landroid/content/BroadcastReceiver;
.source "SwypeInputMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/inputmethod/SwypeInputMethod;->handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/inputmethod/SwypeInputMethod;


# direct methods
.method constructor <init>(Lcom/swype/android/inputmethod/SwypeInputMethod;)V
    .registers 2
    .parameter

    .prologue
    .line 971
    iput-object p1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod$1;->this$0:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 973
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod$1;->this$0:Lcom/swype/android/inputmethod/SwypeInputMethod;

    #getter for: Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;
    invoke-static {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->access$000(Lcom/swype/android/inputmethod/SwypeInputMethod;)Lcom/swype/android/inputmethod/SwypeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->isInAirplaneMode()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 976
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod$1;->this$0:Lcom/swype/android/inputmethod/SwypeInputMethod;

    #calls: Lcom/swype/android/inputmethod/SwypeInputMethod;->unRegisterAirplaneMode()V
    invoke-static {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->access$100(Lcom/swype/android/inputmethod/SwypeInputMethod;)V

    .line 978
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod$1;->this$0:Lcom/swype/android/inputmethod/SwypeInputMethod;

    #getter for: Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;
    invoke-static {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->access$200(Lcom/swype/android/inputmethod/SwypeInputMethod;)Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->checkLicense()V

    .line 980
    :cond_1a
    return-void
.end method
