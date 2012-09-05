.class Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1$1;
.super Ljava/lang/Object;
.source "ServiceConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1;->ServiceShutdownCB(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1;

.field final synthetic val$shutdownMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1$1;->val$shutdownMsg:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$1$1;->val$shutdownMsg:Ljava/lang/String;

    #calls: Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->deactivate(ZLjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->access$000(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;ZLjava/lang/String;)V

    .line 58
    return-void
.end method
