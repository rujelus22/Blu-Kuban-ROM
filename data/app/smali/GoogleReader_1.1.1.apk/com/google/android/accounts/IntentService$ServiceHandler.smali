.class final Lcom/google/android/accounts/IntentService$ServiceHandler;
.super Landroid/os/Handler;
.source "AbstractSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/accounts/IntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/accounts/IntentService;


# direct methods
.method public constructor <init>(Lcom/google/android/accounts/IntentService;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 294
    iput-object p1, p0, Lcom/google/android/accounts/IntentService$ServiceHandler;->this$0:Lcom/google/android/accounts/IntentService;

    .line 295
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 296
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 300
    iget-object v1, p0, Lcom/google/android/accounts/IntentService$ServiceHandler;->this$0:Lcom/google/android/accounts/IntentService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/google/android/accounts/IntentService;->onHandleIntent(Landroid/content/Intent;)V

    .line 301
    iget-object v0, p0, Lcom/google/android/accounts/IntentService$ServiceHandler;->this$0:Lcom/google/android/accounts/IntentService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/google/android/accounts/IntentService;->stopSelf(I)V

    .line 302
    return-void
.end method
