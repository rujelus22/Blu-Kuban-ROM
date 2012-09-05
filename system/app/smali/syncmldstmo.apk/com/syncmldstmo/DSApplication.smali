.class public Lcom/syncmldstmo/DSApplication;
.super Landroid/app/Application;
.source "DSApplication.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# static fields
.field private static bIsDSRunning:Z

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/syncmldstmo/DSApplication;->bIsDSRunning:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getIsDSServiceRunning()Z
    .registers 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/syncmldstmo/DSApplication;->bIsDSRunning:Z

    return v0
.end method

.method public static setIsDSServiceRunning(Z)V
    .registers 1
    .parameter "bRun"

    .prologue
    .line 33
    sput-boolean p0, Lcom/syncmldstmo/DSApplication;->bIsDSRunning:Z

    .line 34
    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 3

    .prologue
    .line 17
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 19
    sput-object p0, Lcom/syncmldstmo/DSApplication;->mContext:Landroid/content/Context;

    .line 20
    sget-object v0, Lcom/syncmldstmo/DSApplication;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/syncmldstmo/DSService;->wssSetReleaseVer(Landroid/content/Context;)V

    .line 21
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_17

    .line 22
    const/16 v0, 0x40

    const-string v1, "Start DS Service"

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 23
    :cond_17
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/syncmldstmo/DSService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/DSApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 24
    return-void
.end method
