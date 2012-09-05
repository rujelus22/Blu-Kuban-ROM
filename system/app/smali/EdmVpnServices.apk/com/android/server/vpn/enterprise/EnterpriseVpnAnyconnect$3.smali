.class Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$3;
.super Ljava/lang/Object;
.source "EnterpriseVpnAnyconnect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;


# direct methods
.method constructor <init>(Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;)V
    .registers 2
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$3;->this$0:Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$3;->this$0:Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;

    const/4 v1, 0x0

    #calls: Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->loadService(Z)V
    invoke-static {v0, v1}, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->access$600(Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;Z)V

    .line 121
    return-void
.end method
