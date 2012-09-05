.class Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper$1;
.super Ljava/lang/Object;
.source "DefaultPlusOneClient.java"

# interfaces
.implements Lcom/google/android/plus1/PlusOneController$ValueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->authorize(Landroid/app/Activity;Lcom/google/android/youtube/plus1/PlusOneClient$AuthorizeResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/plus1/PlusOneController$ValueListener",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;

.field final synthetic val$listener:Lcom/google/android/youtube/plus1/PlusOneClient$AuthorizeResultListener;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;Lcom/google/android/youtube/plus1/PlusOneClient$AuthorizeResultListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper$1;->this$0:Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;

    iput-object p2, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper$1;->val$listener:Lcom/google/android/youtube/plus1/PlusOneClient$AuthorizeResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 3
    .parameter "error"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper$1;->val$listener:Lcom/google/android/youtube/plus1/PlusOneClient$AuthorizeResultListener;

    if-eqz v0, :cond_12

    .line 206
    instance-of v0, p1, Landroid/accounts/OperationCanceledException;

    if-eqz v0, :cond_13

    .line 207
    const-string v0, "User has denied +1"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper$1;->val$listener:Lcom/google/android/youtube/plus1/PlusOneClient$AuthorizeResultListener;

    invoke-interface {v0}, Lcom/google/android/youtube/plus1/PlusOneClient$AuthorizeResultListener;->onDenied()V

    .line 214
    :cond_12
    :goto_12
    return-void

    .line 210
    :cond_13
    const-string v0, "AccountManager error when authorizing +1"

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    iget-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper$1;->val$listener:Lcom/google/android/youtube/plus1/PlusOneClient$AuthorizeResultListener;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/plus1/PlusOneClient$AuthorizeResultListener;->onAccountManagerError(Ljava/lang/Exception;)V

    goto :goto_12
.end method

.method public bridge synthetic onNewValue(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 195
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper$1;->onNewValue(Ljava/lang/Void;)V

    return-void
.end method

.method public onNewValue(Ljava/lang/Void;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 197
    const-string v0, "User has authorized +1. Asking to refresh +1 account status"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper$1;->this$0:Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->exception:Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;
    invoke-static {v0, v1}, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->access$102(Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;)Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    .line 199
    iget-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper$1;->this$0:Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;

    #getter for: Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->controller:Lcom/google/android/plus1/PlusOneController;
    invoke-static {v0}, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->access$000(Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;)Lcom/google/android/plus1/PlusOneController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/plus1/PlusOneController;->refreshAccountStatus()V

    .line 200
    iget-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper$1;->val$listener:Lcom/google/android/youtube/plus1/PlusOneClient$AuthorizeResultListener;

    if-eqz v0, :cond_1d

    .line 201
    iget-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper$1;->val$listener:Lcom/google/android/youtube/plus1/PlusOneClient$AuthorizeResultListener;

    invoke-interface {v0}, Lcom/google/android/youtube/plus1/PlusOneClient$AuthorizeResultListener;->onAllowed()V

    .line 203
    :cond_1d
    return-void
.end method
