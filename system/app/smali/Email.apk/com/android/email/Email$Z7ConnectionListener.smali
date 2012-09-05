.class public Lcom/android/email/Email$Z7ConnectionListener;
.super Lcom/seven/Z7/common/IZ7ServiceCallback$Stub;
.source "Email.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Email;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Z7ConnectionListener"
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 797
    invoke-direct {p0}, Lcom/seven/Z7/common/IZ7ServiceCallback$Stub;-><init>()V

    .line 798
    iput-object p1, p0, Lcom/android/email/Email$Z7ConnectionListener;->mHandler:Landroid/os/Handler;

    .line 799
    return-void
.end method


# virtual methods
.method public final callback(Landroid/os/Bundle;)V
    .registers 4
    .parameter "b"

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/email/Email$Z7ConnectionListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/Email$Z7ConnectionListener$1;

    invoke-direct {v1, p0, p1}, Lcom/android/email/Email$Z7ConnectionListener$1;-><init>(Lcom/android/email/Email$Z7ConnectionListener;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 816
    return-void
.end method

.method public final callback2(Lcom/seven/Z7/common/Z7ServiceCallback;)V
    .registers 4
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/email/Email$Z7ConnectionListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/Email$Z7ConnectionListener$2;

    invoke-direct {v1, p0, p1}, Lcom/android/email/Email$Z7ConnectionListener$2;-><init>(Lcom/android/email/Email$Z7ConnectionListener;Lcom/seven/Z7/common/Z7ServiceCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 825
    return-void
.end method

.method public onCallback(Landroid/os/Bundle;)V
    .registers 5
    .parameter "callback"

    .prologue
    .line 806
    const-string v0, "Z7App"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallback()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    return-void
.end method

.method public onCallback(Lcom/seven/Z7/common/Z7ServiceCallback;)V
    .registers 5
    .parameter "callback"

    .prologue
    .line 828
    const-string v0, "Z7App"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallback()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    return-void
.end method

.method public onCallbackRegistered()V
    .registers 4

    .prologue
    .line 802
    const-string v0, "Z7App"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallbackRegistered(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    return-void
.end method
