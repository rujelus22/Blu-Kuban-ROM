.class Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException$1;
.super Ljava/lang/Object;
.source "ApiaryPlusOneApi.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;->resolve(Landroid/app/Activity;Lcom/google/android/plus1/PlusOneController$ValueListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

.field final synthetic val$callback:Lcom/google/android/plus1/PlusOneController$ValueListener;


# direct methods
.method constructor <init>(Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;Lcom/google/android/plus1/PlusOneController$ValueListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException$1;->this$1:Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    iput-object p2, p0, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException$1;->val$callback:Lcom/google/android/plus1/PlusOneController$ValueListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_e

    .line 422
    iget-object v1, p0, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException$1;->val$callback:Lcom/google/android/plus1/PlusOneController$ValueListener;

    if-eqz v1, :cond_d

    .line 423
    iget-object v1, p0, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException$1;->val$callback:Lcom/google/android/plus1/PlusOneController$ValueListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/plus1/PlusOneController$ValueListener;->onNewValue(Ljava/lang/Object;)V

    .line 425
    :cond_d
    :goto_d
    return-void

    .line 416
    :catch_e
    move-exception v0

    .line 417
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException$1;->val$callback:Lcom/google/android/plus1/PlusOneController$ValueListener;

    if-eqz v1, :cond_d

    .line 418
    iget-object v1, p0, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException$1;->val$callback:Lcom/google/android/plus1/PlusOneController$ValueListener;

    invoke-interface {v1, v0}, Lcom/google/android/plus1/PlusOneController$ValueListener;->onError(Ljava/lang/Exception;)V

    goto :goto_d
.end method
