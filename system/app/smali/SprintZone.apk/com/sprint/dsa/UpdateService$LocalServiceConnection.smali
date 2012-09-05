.class public Lcom/sprint/dsa/UpdateService$LocalServiceConnection;
.super Ljava/lang/Object;
.source "UpdateService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/UpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalServiceConnection"
.end annotation


# instance fields
.field private mBinder:Lcom/sprint/dsa/UpdateService$LocalBinder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/dsa/UpdateService$LocalServiceConnection;->mBinder:Lcom/sprint/dsa/UpdateService$LocalBinder;

    .line 62
    return-void
.end method


# virtual methods
.method public getService()Lcom/sprint/dsa/UpdateService;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sprint/dsa/UpdateService$LocalServiceConnection;->mBinder:Lcom/sprint/dsa/UpdateService$LocalBinder;

    if-eqz v0, :cond_b

    .line 75
    iget-object v0, p0, Lcom/sprint/dsa/UpdateService$LocalServiceConnection;->mBinder:Lcom/sprint/dsa/UpdateService$LocalBinder;

    invoke-virtual {v0}, Lcom/sprint/dsa/UpdateService$LocalBinder;->getService()Lcom/sprint/dsa/UpdateService;

    move-result-object v0

    .line 77
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 65
    check-cast p2, Lcom/sprint/dsa/UpdateService$LocalBinder;

    .end local p2
    iput-object p2, p0, Lcom/sprint/dsa/UpdateService$LocalServiceConnection;->mBinder:Lcom/sprint/dsa/UpdateService$LocalBinder;

    .line 66
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 70
    return-void
.end method
