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
    .line 75
    iput-object p1, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    iget-object v0, v0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    #calls: Lcom/android/emailcommon/service/ServiceProxy;->runTask()V
    invoke-static {v0}, Lcom/android/emailcommon/service/ServiceProxy;->access$200(Lcom/android/emailcommon/service/ServiceProxy;)V

    .line 78
    return-void
.end method
