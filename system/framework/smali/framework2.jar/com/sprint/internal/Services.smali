.class public Lcom/sprint/internal/Services;
.super Ljava/lang/Object;
.source "Services.java"


# static fields
.field private static LOG:Ljava/lang/String;

.field static mServices:Lcom/samsungframeworks/internal/ISprintExtension;


# instance fields
.field private myctx:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/internal/Services;->mServices:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 37
    const-string v0, "SprintServices"

    sput-object v0, Lcom/sprint/internal/Services;->LOG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "ctx"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/sprint/internal/Services;->LOG:Ljava/lang/String;

    const-string v1, "Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iput-object p1, p0, Lcom/sprint/internal/Services;->myctx:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method public getVoiceMailCount()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    sget-object v2, Lcom/sprint/internal/Services;->LOG:Ljava/lang/String;

    const-string v3, "getVoiceMailCount()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v1, 0x0

    .line 51
    .local v1, ret:I
    const-string v2, "isprintextension"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v2

    sput-object v2, Lcom/sprint/internal/Services;->mServices:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 54
    :try_start_14
    sget-object v2, Lcom/sprint/internal/Services;->mServices:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v2, :cond_1f

    .line 55
    sget-object v2, Lcom/sprint/internal/Services;->mServices:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v2}, Lcom/samsungframeworks/internal/ISprintExtension;->getVoiceMailCount()I

    move-result v1

    .line 65
    return v1

    .line 57
    :cond_1f
    sget-object v2, Lcom/sprint/internal/Services;->LOG:Ljava/lang/String;

    const-string v3, "You cannot get the Service for Services"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "You cannot get the Service for Services"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_2e} :catch_2e

    .line 60
    :catch_2e
    move-exception v0

    .line 61
    .local v0, ex:Landroid/os/RemoteException;
    sget-object v2, Lcom/sprint/internal/Services;->LOG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "You cannot get the Service for Services"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "You cannot get the Service for Services"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public resetVoiceMailCount()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    sget-object v1, Lcom/sprint/internal/Services;->LOG:Ljava/lang/String;

    const-string v2, "resetVoiceMailCount()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v1, "isprintextension"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    sput-object v1, Lcom/sprint/internal/Services;->mServices:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 76
    :try_start_13
    sget-object v1, Lcom/sprint/internal/Services;->mServices:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_1d

    .line 77
    sget-object v1, Lcom/sprint/internal/Services;->mServices:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/ISprintExtension;->resetVoiceMailCount()V

    .line 86
    return-void

    .line 79
    :cond_1d
    sget-object v1, Lcom/sprint/internal/Services;->LOG:Ljava/lang/String;

    const-string v2, "You cannot get the Service for Services"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "You cannot get the Service for Services"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2c} :catch_2c

    .line 82
    :catch_2c
    move-exception v0

    .line 83
    .local v0, ex:Landroid/os/RemoteException;
    sget-object v1, Lcom/sprint/internal/Services;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for Services"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "You cannot get the Service for Services"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method
