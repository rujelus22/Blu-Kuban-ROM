.class public Lcom/sec/dsm/system/osp/ErrorResultHandler;
.super Ljava/lang/Object;
.source "ErrorResultHandler.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/sec/dsm/system/osp/ErrorResultHandler;->context:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method public handleErrorResult(Ljava/io/InputStream;)V
    .registers 8
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/osp/ErrorResultException;
        }
    .end annotation

    .prologue
    .line 40
    :try_start_0
    new-instance v1, Lcom/sec/dsm/system/osp/ErrorResult;

    invoke-direct {v1}, Lcom/sec/dsm/system/osp/ErrorResult;-><init>()V

    .line 41
    .local v1, errorResult:Lcom/sec/dsm/system/osp/ErrorResult;
    invoke-virtual {v1, p1}, Lcom/sec/dsm/system/osp/ErrorResult;->fromXML(Ljava/io/InputStream;)V

    .line 43
    const-string v3, "SSO_8005"

    invoke-virtual {v1}, Lcom/sec/dsm/system/osp/ErrorResult;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1f

    .line 44
    new-instance v2, Lcom/sec/dsm/system/osp/ServerTimeManager;

    iget-object v3, p0, Lcom/sec/dsm/system/osp/ErrorResultHandler;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sec/dsm/system/osp/ServerTimeManager;-><init>(Landroid/content/Context;)V

    .line 45
    .local v2, serverTimeManager:Lcom/sec/dsm/system/osp/ServerTimeManager;
    invoke-virtual {v2}, Lcom/sec/dsm/system/osp/ServerTimeManager;->resetServerTime()V

    .line 47
    .end local v2           #serverTimeManager:Lcom/sec/dsm/system/osp/ServerTimeManager;
    :cond_1f
    new-instance v3, Lcom/sec/dsm/system/osp/ErrorResultException;

    invoke-virtual {v1}, Lcom/sec/dsm/system/osp/ErrorResult;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/dsm/system/osp/ErrorResult;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/sec/dsm/system/osp/ErrorResultException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
    :try_end_2d
    .catch Lcom/sec/dsm/system/osp/ErrorResultException; {:try_start_0 .. :try_end_2d} :catch_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2f

    .line 48
    .end local v1           #errorResult:Lcom/sec/dsm/system/osp/ErrorResult;
    :catch_2d
    move-exception v0

    .line 49
    .local v0, e:Lcom/sec/dsm/system/osp/ErrorResultException;
    throw v0

    .line 50
    .end local v0           #e:Lcom/sec/dsm/system/osp/ErrorResultException;
    :catch_2f
    move-exception v0

    .line 51
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Lcom/sec/dsm/system/osp/ErrorResultException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/sec/dsm/system/osp/ErrorResultException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
