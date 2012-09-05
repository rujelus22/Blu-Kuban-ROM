.class Lcom/android/volley/toolbox/AndroidAuthenticator$1$2;
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

.field final synthetic val$afe:Lcom/android/volley/AuthFailureError;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/AndroidAuthenticator$1;Lcom/android/volley/AuthFailureError;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/volley/toolbox/AndroidAuthenticator$1$2;->this$1:Lcom/android/volley/toolbox/AndroidAuthenticator$1;

    iput-object p2, p0, Lcom/android/volley/toolbox/AndroidAuthenticator$1$2;->val$afe:Lcom/android/volley/AuthFailureError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/volley/toolbox/AndroidAuthenticator$1$2;->this$1:Lcom/android/volley/toolbox/AndroidAuthenticator$1;

    iget-object v0, v0, Lcom/android/volley/toolbox/AndroidAuthenticator$1;->val$listener:Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;

    iget-object v1, p0, Lcom/android/volley/toolbox/AndroidAuthenticator$1$2;->val$afe:Lcom/android/volley/AuthFailureError;

    invoke-interface {v0, v1}, Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;->onErrorReceived(Lcom/android/volley/AuthFailureError;)V

    .line 184
    return-void
.end method
