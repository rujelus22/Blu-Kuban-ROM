.class Lcom/android/volley/toolbox/AndroidAuthenticator$1;
.super Ljava/lang/Thread;
.source "AndroidAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/AndroidAuthenticator;->getAuthTokenAsync(Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;Landroid/os/Handler;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/volley/toolbox/AndroidAuthenticator;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$forceReauth:Z

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/AndroidAuthenticator;Ljava/lang/String;ZLcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;Landroid/os/Handler;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/volley/toolbox/AndroidAuthenticator$1;->this$0:Lcom/android/volley/toolbox/AndroidAuthenticator;

    iput-object p2, p0, Lcom/android/volley/toolbox/AndroidAuthenticator$1;->val$authTokenType:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/volley/toolbox/AndroidAuthenticator$1;->val$forceReauth:Z

    iput-object p4, p0, Lcom/android/volley/toolbox/AndroidAuthenticator$1;->val$listener:Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;

    iput-object p5, p0, Lcom/android/volley/toolbox/AndroidAuthenticator$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 172
    :try_start_0
    iget-object v4, p0, Lcom/android/volley/toolbox/AndroidAuthenticator$1;->this$0:Lcom/android/volley/toolbox/AndroidAuthenticator;

    iget-object v5, p0, Lcom/android/volley/toolbox/AndroidAuthenticator$1;->val$authTokenType:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/volley/toolbox/AndroidAuthenticator$1;->val$forceReauth:Z

    invoke-virtual {v4, v5, v6}, Lcom/android/volley/toolbox/AndroidAuthenticator;->getAuthToken(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, authToken:Ljava/lang/String;
    new-instance v2, Lcom/android/volley/toolbox/AndroidAuthenticator$1$1;

    invoke-direct {v2, p0, v1}, Lcom/android/volley/toolbox/AndroidAuthenticator$1$1;-><init>(Lcom/android/volley/toolbox/AndroidAuthenticator$1;Ljava/lang/String;)V
    :try_end_f
    .catch Lcom/android/volley/AuthFailureError; {:try_start_0 .. :try_end_f} :catch_15
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_f} :catch_1c

    .line 197
    .end local v1           #authToken:Ljava/lang/String;
    .local v2, runnable:Ljava/lang/Runnable;
    :goto_f
    iget-object v4, p0, Lcom/android/volley/toolbox/AndroidAuthenticator$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    return-void

    .line 179
    .end local v2           #runnable:Ljava/lang/Runnable;
    :catch_15
    move-exception v0

    .line 180
    .local v0, afe:Lcom/android/volley/AuthFailureError;
    new-instance v2, Lcom/android/volley/toolbox/AndroidAuthenticator$1$2;

    invoke-direct {v2, p0, v0}, Lcom/android/volley/toolbox/AndroidAuthenticator$1$2;-><init>(Lcom/android/volley/toolbox/AndroidAuthenticator$1;Lcom/android/volley/AuthFailureError;)V

    .line 195
    .restart local v2       #runnable:Ljava/lang/Runnable;
    goto :goto_f

    .line 186
    .end local v0           #afe:Lcom/android/volley/AuthFailureError;
    .end local v2           #runnable:Ljava/lang/Runnable;
    :catch_1c
    move-exception v3

    .line 187
    .local v3, se:Ljava/lang/SecurityException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught SecurityException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    new-instance v2, Lcom/android/volley/toolbox/AndroidAuthenticator$1$3;

    invoke-direct {v2, p0, v3}, Lcom/android/volley/toolbox/AndroidAuthenticator$1$3;-><init>(Lcom/android/volley/toolbox/AndroidAuthenticator$1;Ljava/lang/SecurityException;)V

    .restart local v2       #runnable:Ljava/lang/Runnable;
    goto :goto_f
.end method
