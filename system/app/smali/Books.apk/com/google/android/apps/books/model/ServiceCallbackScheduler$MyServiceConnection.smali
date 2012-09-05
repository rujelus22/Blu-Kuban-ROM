.class Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;
.super Ljava/lang/Object;
.source "ServiceCallbackScheduler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/model/ServiceCallbackScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/model/ServiceCallbackScheduler;


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter "className"
    .parameter "binder"

    .prologue
    .line 48
    .local p0, this:Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;,"Lcom/google/android/apps/books/model/ServiceCallbackScheduler<TT;>.MyServiceConnection;"
    check-cast p2, Lcom/google/android/apps/books/service/ContentFetchService$MyBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/google/android/apps/books/service/ContentFetchService$MyBinder;->getService()Lcom/google/android/apps/books/service/ContentFetchService;

    move-result-object v2

    .line 49
    .local v2, service:Lcom/google/android/apps/books/service/ContentFetchService;
    iget-object v3, p0, Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;->this$0:Lcom/google/android/apps/books/model/ServiceCallbackScheduler;

    #getter for: Lcom/google/android/apps/books/model/ServiceCallbackScheduler;->mCallable:Lcom/google/android/apps/books/model/ServiceCallable;
    invoke-static {v3}, Lcom/google/android/apps/books/model/ServiceCallbackScheduler;->access$100(Lcom/google/android/apps/books/model/ServiceCallbackScheduler;)Lcom/google/android/apps/books/model/ServiceCallable;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/google/android/apps/books/model/ServiceCallable;->setService(Lcom/google/android/apps/books/service/FetchService;)V

    .line 50
    move-object v0, p0

    .line 52
    .local v0, connection:Landroid/content/ServiceConnection;
    new-instance v1, Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection$1;-><init>(Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;Landroid/content/ServiceConnection;)V

    .line 69
    .local v1, runnable:Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;->this$0:Lcom/google/android/apps/books/model/ServiceCallbackScheduler;

    #getter for: Lcom/google/android/apps/books/model/ServiceCallbackScheduler;->mExcecutor:Ljava/util/concurrent/Executor;
    invoke-static {v3}, Lcom/google/android/apps/books/model/ServiceCallbackScheduler;->access$400(Lcom/google/android/apps/books/model/ServiceCallbackScheduler;)Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "className"

    .prologue
    .line 73
    .local p0, this:Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;,"Lcom/google/android/apps/books/model/ServiceCallbackScheduler<TT;>.MyServiceConnection;"
    return-void
.end method
