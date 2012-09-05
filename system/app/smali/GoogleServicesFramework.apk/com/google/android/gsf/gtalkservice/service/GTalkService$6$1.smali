.class Lcom/google/android/gsf/gtalkservice/service/GTalkService$6$1;
.super Ljava/lang/Object;
.source "GTalkService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->createGTalkConnection(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkConnectionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;

.field final synthetic val$listener:Lcom/google/android/gtalkservice/IGTalkConnectionListener;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkConnectionListener;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1877
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6$1;->this$1:Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;

    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6$1;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6$1;->val$listener:Lcom/google/android/gtalkservice/IGTalkConnectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1879
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6$1;->this$1:Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;

    iget-object v1, v1, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6$1;->val$username:Ljava/lang/String;

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->blockingCreateGTalkConnection(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3100(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    .line 1881
    .local v0, conn:Lcom/google/android/gtalkservice/IGTalkConnection;
    if-eqz v0, :cond_12

    .line 1882
    :try_start_c
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6$1;->val$listener:Lcom/google/android/gtalkservice/IGTalkConnectionListener;

    invoke-interface {v1, v0}, Lcom/google/android/gtalkservice/IGTalkConnectionListener;->onConnectionCreated(Lcom/google/android/gtalkservice/IGTalkConnection;)V

    .line 1888
    :goto_11
    return-void

    .line 1884
    :cond_12
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6$1;->val$listener:Lcom/google/android/gtalkservice/IGTalkConnectionListener;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6$1;->val$username:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/gtalkservice/IGTalkConnectionListener;->onConnectionCreationFailed(Ljava/lang/String;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_19} :catch_1a

    goto :goto_11

    .line 1886
    :catch_1a
    move-exception v1

    goto :goto_11
.end method
