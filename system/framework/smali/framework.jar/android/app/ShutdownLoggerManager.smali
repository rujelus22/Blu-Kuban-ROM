.class public Landroid/app/ShutdownLoggerManager;
.super Ljava/lang/Object;
.source "ShutdownLoggerManager.java"


# instance fields
.field private final mService:Landroid/app/IShutdownLogger;


# direct methods
.method public constructor <init>(Landroid/app/IShutdownLogger;)V
    .registers 2
    .parameter "service"

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Landroid/app/ShutdownLoggerManager;->mService:Landroid/app/IShutdownLogger;

    .line 11
    return-void
.end method


# virtual methods
.method public appendLog(Ljava/lang/String;)V
    .registers 3
    .parameter "reason"

    .prologue
    .line 14
    iget-object v0, p0, Landroid/app/ShutdownLoggerManager;->mService:Landroid/app/IShutdownLogger;

    if-eqz v0, :cond_4

    .line 21
    :cond_4
    return-void
.end method

.method public recordShutdownTime()V
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Landroid/app/ShutdownLoggerManager;->mService:Landroid/app/IShutdownLogger;

    if-eqz v0, :cond_4

    .line 31
    :cond_4
    return-void
.end method
