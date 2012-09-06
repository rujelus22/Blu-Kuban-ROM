.class Lcom/google/android/apps/reader/accounts/AccountHelper$AddAccountCallback;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Lcom/google/android/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/accounts/AccountHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddAccountCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;

.field private final mCallbackToken:I

.field private final mRequestCode:I

.field final synthetic this$0:Lcom/google/android/apps/reader/accounts/AccountHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/reader/accounts/AccountHelper;ILcom/google/android/apps/reader/accounts/AccountHelper$Callback;I)V
    .registers 5
    .parameter
    .parameter "requestCode"
    .parameter "callback"
    .parameter "callbackToken"

    .prologue
    .line 492
    iput-object p1, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$AddAccountCallback;->this$0:Lcom/google/android/apps/reader/accounts/AccountHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    iput p2, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$AddAccountCallback;->mRequestCode:I

    .line 494
    iput-object p3, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$AddAccountCallback;->mCallback:Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;

    .line 495
    iput p4, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$AddAccountCallback;->mCallbackToken:I

    .line 496
    return-void
.end method


# virtual methods
.method public run(Lcom/google/android/accounts/AccountManagerFuture;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 500
    .local p1, future:Lcom/google/android/accounts/AccountManagerFuture;,"Lcom/google/android/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    iget-object v2, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$AddAccountCallback;->this$0:Lcom/google/android/apps/reader/accounts/AccountHelper;

    iget-object v3, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$AddAccountCallback;->mCallback:Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;

    iget v4, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$AddAccountCallback;->mCallbackToken:I

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/apps/reader/accounts/AccountHelper;->getResult(Lcom/google/android/accounts/AccountManagerFuture;Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 501
    .local v1, result:Landroid/os/Bundle;
    if-eqz v1, :cond_26

    .line 502
    const-string v2, "intent"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 503
    .local v0, intent:Landroid/content/Intent;
    #calls: Lcom/google/android/apps/reader/accounts/AccountHelper;->clearNewTaskFlag(Landroid/content/Intent;)V
    invoke-static {v0}, Lcom/google/android/apps/reader/accounts/AccountHelper;->access$200(Landroid/content/Intent;)V

    .line 504
    if-eqz v0, :cond_27

    .line 505
    iget-object v2, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$AddAccountCallback;->this$0:Lcom/google/android/apps/reader/accounts/AccountHelper;

    #getter for: Lcom/google/android/apps/reader/accounts/AccountHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/google/android/apps/reader/accounts/AccountHelper;->access$300(Lcom/google/android/apps/reader/accounts/AccountHelper;)Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$AddAccountCallback;->mRequestCode:I

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 512
    .end local v0           #intent:Landroid/content/Intent;
    :cond_26
    :goto_26
    return-void

    .line 507
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_27
    iget-object v2, p0, Lcom/google/android/apps/reader/accounts/AccountHelper$AddAccountCallback;->mCallback:Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Intent is missing"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;->onAccountError(Ljava/lang/Exception;)V

    goto :goto_26
.end method
