.class Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper$1;
.super Ljava/lang/Object;
.source "GoogleLoginServiceBlockingHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;


# direct methods
.method constructor <init>(Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper$1;->this$0:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper$1;->this$0:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;

    #getter for: Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->access$000(Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 171
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper$1;->this$0:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;

    iget-object v1, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper$1;->this$0:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;

    #getter for: Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->access$200(Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/googlelogindist/GoogleAppsVerifier;->isGoogleAppsVerified(Landroid/content/Context;)Z

    move-result v1

    #setter for: Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mGlsVerified:Z
    invoke-static {v0, v1}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->access$102(Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;Z)Z

    .line 173
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper$1;->this$0:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    #setter for: Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mServiceThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->access$302(Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 174
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper$1;->this$0:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;

    invoke-static {p2}, Lcom/google/android/googleapps/IGoogleLoginService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/googleapps/IGoogleLoginService;

    move-result-object v1

    #setter for: Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mGoogleLoginService:Lcom/google/android/googleapps/IGoogleLoginService;
    invoke-static {v0, v1}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->access$402(Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;Lcom/google/android/googleapps/IGoogleLoginService;)Lcom/google/android/googleapps/IGoogleLoginService;

    .line 176
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper$1;->this$0:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;

    #getter for: Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mBindWaitCondition:Ljava/util/concurrent/locks/Condition;
    invoke-static {v0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->access$500(Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_3d

    .line 178
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper$1;->this$0:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;

    #getter for: Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->access$000(Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 180
    return-void

    .line 178
    :catchall_3d
    move-exception v0

    iget-object v1, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper$1;->this$0:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;

    #getter for: Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v1}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->access$000(Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper$1;->this$0:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;

    #getter for: Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->access$000(Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 184
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper$1;->this$0:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mGoogleLoginService:Lcom/google/android/googleapps/IGoogleLoginService;
    invoke-static {v0, v1}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->access$402(Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;Lcom/google/android/googleapps/IGoogleLoginService;)Lcom/google/android/googleapps/IGoogleLoginService;

    .line 185
    iget-object v0, p0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper$1;->this$0:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;

    #getter for: Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->access$000(Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 186
    return-void
.end method
