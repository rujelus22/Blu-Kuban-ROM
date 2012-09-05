.class Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService$1;
.super Ljava/lang/Object;
.source "SnsAccountTwSyncAdapterMessageService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;)V
    .registers 2
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService$1;->this$0:Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter "name"
    .parameter "service"

    .prologue
    .line 113
    iget-object v1, p0, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService$1;->this$0:Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;

    invoke-static {p2}, Lcom/sec/android/app/sns/ISnsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/sns/ISnsService;

    move-result-object v2

    #setter for: Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;->mService:Lcom/sec/android/app/sns/ISnsService;
    invoke-static {v1, v2}, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;->access$502(Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;Lcom/sec/android/app/sns/ISnsService;)Lcom/sec/android/app/sns/ISnsService;

    .line 115
    :try_start_9
    iget-object v1, p0, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService$1;->this$0:Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;

    iget-object v2, p0, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService$1;->this$0:Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;

    #getter for: Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;->mService:Lcom/sec/android/app/sns/ISnsService;
    invoke-static {v2}, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;->access$500(Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;)Lcom/sec/android/app/sns/ISnsService;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService$1;->this$0:Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;

    #getter for: Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;->mSyncCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;
    invoke-static {v3}, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;->access$700(Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;)Lcom/sec/android/app/sns/ISnsRequesterCallback;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/sns/ISnsService;->registerCallback(Lcom/sec/android/app/sns/ISnsRequesterCallback;)I

    move-result v2

    #setter for: Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;->mSyncAppID:I
    invoke-static {v1, v2}, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;->access$602(Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;I)I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1e} :catch_1f

    .line 122
    :goto_1e
    return-void

    .line 116
    :catch_1f
    move-exception v0

    .line 117
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 118
    const-string v1, "SnsAccountTw"

    const-string v2, "###################### registerCallback FAILED !!!!! #####################"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService$1;->this$0:Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;->mService:Lcom/sec/android/app/sns/ISnsService;
    invoke-static {v0, v1}, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;->access$502(Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;Lcom/sec/android/app/sns/ISnsService;)Lcom/sec/android/app/sns/ISnsService;

    .line 126
    return-void
.end method
