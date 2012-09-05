.class Lcom/android/email/Email$5;
.super Ljava/lang/Object;
.source "Email.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Email;->unregisterListener(Lcom/android/email/Email$Z7ConnectionListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Email;

.field final synthetic val$listener:Lcom/android/email/Email$Z7ConnectionListener;


# direct methods
.method constructor <init>(Lcom/android/email/Email;Lcom/android/email/Email$Z7ConnectionListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 898
    iput-object p1, p0, Lcom/android/email/Email$5;->this$0:Lcom/android/email/Email;

    iput-object p2, p0, Lcom/android/email/Email$5;->val$listener:Lcom/android/email/Email$Z7ConnectionListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 901
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Email$5;->this$0:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 902
    iget-object v1, p0, Lcom/android/email/Email$5;->this$0:Lcom/android/email/Email;

    #getter for: Lcom/android/email/Email;->mService:Lcom/seven/Z7/common/IZ7Service;
    invoke-static {v1}, Lcom/android/email/Email;->access$000(Lcom/android/email/Email;)Lcom/seven/Z7/common/IZ7Service;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/Email$5;->val$listener:Lcom/android/email/Email$Z7ConnectionListener;

    invoke-interface {v1, v2}, Lcom/seven/Z7/common/IZ7Service;->unregisterCallback(Lcom/seven/Z7/common/IZ7ServiceCallback;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 907
    :cond_13
    :goto_13
    return-void

    .line 904
    :catch_14
    move-exception v0

    .line 905
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "Z7App"

    const-string v2, "failed to unregister listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method
