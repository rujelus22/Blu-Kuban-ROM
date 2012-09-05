.class Lcom/android/email/Email$4;
.super Ljava/lang/Object;
.source "Email.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Email;->registerListener(Lcom/android/email/Email$Z7ConnectionListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Email;

.field final synthetic val$mListener:Lcom/android/email/Email$Z7ConnectionListener;


# direct methods
.method constructor <init>(Lcom/android/email/Email;Lcom/android/email/Email$Z7ConnectionListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 876
    iput-object p1, p0, Lcom/android/email/Email$4;->this$0:Lcom/android/email/Email;

    iput-object p2, p0, Lcom/android/email/Email$4;->val$mListener:Lcom/android/email/Email$Z7ConnectionListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 879
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Email$4;->this$0:Lcom/android/email/Email;

    #getter for: Lcom/android/email/Email;->mService:Lcom/seven/Z7/common/IZ7Service;
    invoke-static {v1}, Lcom/android/email/Email;->access$000(Lcom/android/email/Email;)Lcom/seven/Z7/common/IZ7Service;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 880
    iget-object v1, p0, Lcom/android/email/Email$4;->this$0:Lcom/android/email/Email;

    #getter for: Lcom/android/email/Email;->mService:Lcom/seven/Z7/common/IZ7Service;
    invoke-static {v1}, Lcom/android/email/Email;->access$000(Lcom/android/email/Email;)Lcom/seven/Z7/common/IZ7Service;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/Email$4;->val$mListener:Lcom/android/email/Email$Z7ConnectionListener;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/seven/Z7/common/IZ7Service;->registerCallback(Lcom/seven/Z7/common/IZ7ServiceCallback;Lcom/seven/Z7/common/Z7CallbackFilter;)V

    .line 881
    iget-object v1, p0, Lcom/android/email/Email$4;->val$mListener:Lcom/android/email/Email$Z7ConnectionListener;

    invoke-virtual {v1}, Lcom/android/email/Email$Z7ConnectionListener;->onCallbackRegistered()V

    .line 883
    :cond_19
    const-string v1, "Z7App"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/Email$4;->val$mListener:Lcom/android/email/Email$Z7ConnectionListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_33} :catch_34

    .line 887
    :goto_33
    return-void

    .line 884
    :catch_34
    move-exception v0

    .line 885
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Z7App"

    const-string v2, "failed to register listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33
.end method
