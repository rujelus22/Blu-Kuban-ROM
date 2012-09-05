.class Lcom/android/emailcommon/service/ServiceProxy$ProxyRunnable;
.super Ljava/lang/Object;
.source "ServiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/service/ServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/ServiceProxy;


# direct methods
.method private constructor <init>(Lcom/android/emailcommon/service/ServiceProxy;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyRunnable;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/emailcommon/service/ServiceProxy;Lcom/android/emailcommon/service/ServiceProxy$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/emailcommon/service/ServiceProxy$ProxyRunnable;-><init>(Lcom/android/emailcommon/service/ServiceProxy;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyRunnable;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    #getter for: Lcom/android/emailcommon/service/ServiceProxy;->mTask:Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;
    invoke-static {v0}, Lcom/android/emailcommon/service/ServiceProxy;->access$300(Lcom/android/emailcommon/service/ServiceProxy;)Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;->run()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 100
    :goto_9
    return-void

    .line 98
    :catch_a
    move-exception v0

    goto :goto_9
.end method
