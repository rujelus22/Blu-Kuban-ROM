.class Lcom/sprint/dsa/dss/DsaDeviceProgramming$2;
.super Ljava/lang/Object;
.source "DsaDeviceProgramming.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/dss/DsaDeviceProgramming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/dss/DsaDeviceProgramming;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/dss/DsaDeviceProgramming;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$2;->this$0:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 145
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$2;->this$0:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    invoke-virtual {v1}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->dismissProgressDialog()V

    .line 146
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$2;->this$0:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    #getter for: Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->access$3(Lcom/sprint/dsa/dss/DsaDeviceProgramming;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080035

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, error:Ljava/lang/String;
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$2;->this$0:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    #getter for: Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mDbAdapter:Lcom/sprint/dsa/data/DbAdapter;
    invoke-static {v1}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->access$6(Lcom/sprint/dsa/dss/DsaDeviceProgramming;)Lcom/sprint/dsa/data/DbAdapter;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sprint/dsa/Reporting;->reportDeviceActivation(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$2;->this$0:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->resetActivityState(Z)V

    .line 151
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$2;->this$0:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    invoke-virtual {v1}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->showRunAgainDialog()V

    .line 153
    return-void
.end method
