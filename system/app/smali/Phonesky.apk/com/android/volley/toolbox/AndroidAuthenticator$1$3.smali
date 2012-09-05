.class Lcom/android/volley/toolbox/AndroidAuthenticator$1$3;
.super Ljava/lang/Object;
.source "AndroidAuthenticator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/AndroidAuthenticator$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/volley/toolbox/AndroidAuthenticator$1;

.field final synthetic val$se:Ljava/lang/SecurityException;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/AndroidAuthenticator$1;Ljava/lang/SecurityException;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/volley/toolbox/AndroidAuthenticator$1$3;->this$1:Lcom/android/volley/toolbox/AndroidAuthenticator$1;

    iput-object p2, p0, Lcom/android/volley/toolbox/AndroidAuthenticator$1$3;->val$se:Ljava/lang/SecurityException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/volley/toolbox/AndroidAuthenticator$1$3;->this$1:Lcom/android/volley/toolbox/AndroidAuthenticator$1;

    iget-object v0, v0, Lcom/android/volley/toolbox/AndroidAuthenticator$1;->val$listener:Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;

    new-instance v1, Lcom/android/volley/AuthFailureError;

    iget-object v2, p0, Lcom/android/volley/toolbox/AndroidAuthenticator$1$3;->val$se:Ljava/lang/SecurityException;

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/volley/AuthFailureError;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;->onErrorReceived(Lcom/android/volley/AuthFailureError;)V

    .line 193
    return-void
.end method
