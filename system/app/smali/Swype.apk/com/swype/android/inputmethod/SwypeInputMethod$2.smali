.class Lcom/swype/android/inputmethod/SwypeInputMethod$2;
.super Landroid/content/BroadcastReceiver;
.source "SwypeInputMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/inputmethod/SwypeInputMethod;->secondaryInit()V
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
    .line 1296
    iput-object p1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod$2;->this$0:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1299
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1309
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod$2;->this$0:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1310
    if-eqz v0, :cond_17

    .line 1311
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1319
    :cond_17
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod$2;->this$0:Lcom/swype/android/inputmethod/SwypeInputMethod;

    #calls: Lcom/swype/android/inputmethod/SwypeInputMethod;->cancelPredictionAndConversion()V
    invoke-static {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->access$300(Lcom/swype/android/inputmethod/SwypeInputMethod;)V

    .line 1320
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod$2;->this$0:Lcom/swype/android/inputmethod/SwypeInputMethod;

    #getter for: Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;
    invoke-static {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->access$200(Lcom/swype/android/inputmethod/SwypeInputMethod;)Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->onHiding()V

    .line 1342
    :cond_25
    :goto_25
    return-void

    .line 1321
    :cond_26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1327
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod$2;->this$0:Lcom/swype/android/inputmethod/SwypeInputMethod;

    #getter for: Lcom/swype/android/inputmethod/SwypeInputMethod;->activeDialog:Lcom/swype/android/inputmethod/SwypeDialog;
    invoke-static {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->access$400(Lcom/swype/android/inputmethod/SwypeInputMethod;)Lcom/swype/android/inputmethod/SwypeDialog;

    move-result-object v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod$2;->this$0:Lcom/swype/android/inputmethod/SwypeInputMethod;

    #getter for: Lcom/swype/android/inputmethod/SwypeInputMethod;->activeDialog:Lcom/swype/android/inputmethod/SwypeDialog;
    invoke-static {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->access$400(Lcom/swype/android/inputmethod/SwypeInputMethod;)Lcom/swype/android/inputmethod/SwypeDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod$2;->this$0:Lcom/swype/android/inputmethod/SwypeInputMethod;

    #getter for: Lcom/swype/android/inputmethod/SwypeInputMethod;->activeDialog:Lcom/swype/android/inputmethod/SwypeDialog;
    invoke-static {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->access$400(Lcom/swype/android/inputmethod/SwypeInputMethod;)Lcom/swype/android/inputmethod/SwypeDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod$2;->this$0:Lcom/swype/android/inputmethod/SwypeInputMethod;

    #getter for: Lcom/swype/android/inputmethod/SwypeInputMethod;->activeDialog:Lcom/swype/android/inputmethod/SwypeDialog;
    invoke-static {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->access$400(Lcom/swype/android/inputmethod/SwypeInputMethod;)Lcom/swype/android/inputmethod/SwypeDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeDialog;->getDismissOnSleep()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1330
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod$2;->this$0:Lcom/swype/android/inputmethod/SwypeInputMethod;

    #calls: Lcom/swype/android/inputmethod/SwypeInputMethod;->dismissActiveDialog()V
    invoke-static {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->access$500(Lcom/swype/android/inputmethod/SwypeInputMethod;)V

    .line 1332
    :cond_67
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod$2;->this$0:Lcom/swype/android/inputmethod/SwypeInputMethod;

    #getter for: Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;
    invoke-static {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->access$200(Lcom/swype/android/inputmethod/SwypeInputMethod;)Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->onShowing()V

    goto :goto_25

    .line 1333
    :cond_71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 1335
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod$2;->this$0:Lcom/swype/android/inputmethod/SwypeInputMethod;

    #calls: Lcom/swype/android/inputmethod/SwypeInputMethod;->closeStaleDialogs()V
    invoke-static {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->access$600(Lcom/swype/android/inputmethod/SwypeInputMethod;)V

    goto :goto_25

    .line 1336
    :cond_83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1338
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod$2;->this$0:Lcom/swype/android/inputmethod/SwypeInputMethod;

    #calls: Lcom/swype/android/inputmethod/SwypeInputMethod;->closeStaleDialogs()V
    invoke-static {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->access$600(Lcom/swype/android/inputmethod/SwypeInputMethod;)V

    .line 1339
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod$2;->this$0:Lcom/swype/android/inputmethod/SwypeInputMethod;

    #calls: Lcom/swype/android/inputmethod/SwypeInputMethod;->hideChoiceWindow()V
    invoke-static {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->access$700(Lcom/swype/android/inputmethod/SwypeInputMethod;)V

    .line 1340
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod$2;->this$0:Lcom/swype/android/inputmethod/SwypeInputMethod;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->requestHideSelf(I)V

    goto :goto_25
.end method
