.class Lcom/google/android/apps/googlevoice/LoginActivity$13;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/LoginActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/LoginActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/LoginActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/LoginActivity$13;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 407
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 408
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/LoginActivity$13;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->captchaDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$900(Lcom/google/android/apps/googlevoice/LoginActivity;)Landroid/app/AlertDialog;

    move-result-object v3

    sget v4, Lcom/google/android/apps/googlevoice/R$id;->captcha:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 409
    .local v0, captchaText:Landroid/widget/EditText;
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/LoginActivity$13;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$1000(Lcom/google/android/apps/googlevoice/LoginActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getTaskRunner()Lcom/googlex/common/task/TaskRunner;

    move-result-object v2

    .line 410
    .local v2, taskRunner:Lcom/googlex/common/task/TaskRunner;
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/LoginActivity$13;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->loginService:Lcom/googlex/common/async/LoginService;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$1100(Lcom/google/android/apps/googlevoice/LoginActivity;)Lcom/googlex/common/async/LoginService;

    move-result-object v3

    if-nez v3, :cond_32

    .line 411
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/LoginActivity$13;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/LoginActivity$13;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v4}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$1000(Lcom/google/android/apps/googlevoice/LoginActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getLoginService()Lcom/googlex/common/async/LoginService;

    move-result-object v4

    #setter for: Lcom/google/android/apps/googlevoice/LoginActivity;->loginService:Lcom/googlex/common/async/LoginService;
    invoke-static {v3, v4}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$1102(Lcom/google/android/apps/googlevoice/LoginActivity;Lcom/googlex/common/async/LoginService;)Lcom/googlex/common/async/LoginService;

    .line 413
    :cond_32
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/LoginActivity$13;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->loginService:Lcom/googlex/common/async/LoginService;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$1100(Lcom/google/android/apps/googlevoice/LoginActivity;)Lcom/googlex/common/async/LoginService;

    move-result-object v3

    invoke-interface {v3}, Lcom/googlex/common/async/LoginService;->createLoginRequest()Lcom/googlex/common/async/LoginRequest;

    move-result-object v1

    .line 414
    .local v1, request:Lcom/googlex/common/async/LoginRequest;
    const-string v3, "grandcentral"

    invoke-interface {v1, v3}, Lcom/googlex/common/async/LoginRequest;->setService(Ljava/lang/String;)V

    .line 415
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/LoginActivity$13;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->account:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$700(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/googlex/common/async/LoginRequest;->setUserName(Ljava/lang/String;)V

    .line 416
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/LoginActivity$13;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->password:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$800(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/googlex/common/async/LoginRequest;->setPassword(Ljava/lang/String;)V

    .line 417
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/LoginActivity$13;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->captchaToken:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$1200(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/googlex/common/async/LoginRequest;->setCaptchaToken(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/googlex/common/async/LoginRequest;->setCaptchaResponse(Ljava/lang/String;)V

    .line 419
    new-instance v3, Lcom/google/android/apps/googlevoice/MessageTask;

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/LoginActivity$13;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;
    invoke-static {v4}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$100(Lcom/google/android/apps/googlevoice/LoginActivity;)Lcom/google/android/apps/googlevoice/activity/MessageSender;

    move-result-object v4

    const/16 v5, 0xc8

    invoke-interface {v4, v5, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/google/android/apps/googlevoice/MessageTask;-><init>(Lcom/googlex/common/task/TaskRunner;Landroid/os/Message;)V

    invoke-interface {v1, v3}, Lcom/googlex/common/async/LoginRequest;->submit(Lcom/googlex/common/task/AbstractTask;)V

    .line 421
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/LoginActivity$13;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #calls: Lcom/google/android/apps/googlevoice/LoginActivity;->showAuthenticatingDialog()V
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$1300(Lcom/google/android/apps/googlevoice/LoginActivity;)V

    .line 422
    return-void
.end method
