.class Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;
.super Ljava/lang/Object;
.source "ServiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;)V
    .registers 2
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    iget-object v0, v0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    #calls: Lcom/android/emailcommon/service/ServiceProxy;->runTask()V
    invoke-static {v0}, Lcom/android/emailcommon/service/ServiceProxy;->access$200(Lcom/android/emailcommon/service/ServiceProxy;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_f

    .line 82
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    iget-object v0, v0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    invoke-virtual {v0}, Lcom/android/emailcommon/service/ServiceProxy;->endTask()V

    .line 84
    return-void

    .line 82
    :catchall_f
    move-exception v0

    iget-object v1, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    iget-object v1, v1, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    invoke-virtual {v1}, Lcom/android/emailcommon/service/ServiceProxy;->endTask()V

    throw v0
.end method
