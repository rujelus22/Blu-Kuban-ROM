.class final Landroid/app/ContextImpl$39;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 554
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 5
    .parameter "ctx"

    .prologue
    .line 556
    const-string/jumbo v2, "irda"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 557
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IIrdaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IIrdaService;

    move-result-object v1

    .line 558
    .local v1, service:Landroid/app/IIrdaService;
    new-instance v2, Landroid/app/IrdaManager;

    invoke-direct {v2, v1}, Landroid/app/IrdaManager;-><init>(Landroid/app/IIrdaService;)V

    return-object v2
.end method
