.class Lcom/sprint/dsa/dss/DsaDeviceProgramming$4;
.super Ljava/lang/Object;
.source "DsaDeviceProgramming.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/dss/DsaDeviceProgramming;->initProgramming()V
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
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$4;->this$0:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$4;->this$0:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    sget-object v1, Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;->URL_REQUESTED:Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;

    #setter for: Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mState:Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;
    invoke-static {v0, v1}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->access$0(Lcom/sprint/dsa/dss/DsaDeviceProgramming;Lcom/sprint/dsa/dss/DsaDeviceProgramming$activityState;)V

    .line 65
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$4;->this$0:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$4;->this$0:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    #getter for: Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mDsaSystem:Lcom/sprint/dsa/dss/DsaSystem;
    invoke-static {v1}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->access$7(Lcom/sprint/dsa/dss/DsaDeviceProgramming;)Lcom/sprint/dsa/dss/DsaSystem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sprint/dsa/dss/DsaSystem;->warmInit()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->access$8(Lcom/sprint/dsa/dss/DsaDeviceProgramming;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaDeviceProgramming$4;->this$0:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    #getter for: Lcom/sprint/dsa/dss/DsaDeviceProgramming;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->access$9(Lcom/sprint/dsa/dss/DsaDeviceProgramming;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 67
    const-string v0, "SprintZone_DSA"

    const-string v1, "initProgramming() - Done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method
