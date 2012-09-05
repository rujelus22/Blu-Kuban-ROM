.class public Lcom/sec/dsm/system/osp/ServerURIUtil;
.super Ljava/lang/Object;
.source "ServerURIUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServerURI(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    const/4 v2, 0x0

    .line 28
    .local v2, result:Ljava/lang/String;
    :try_start_1
    new-instance v1, Lcom/sec/dsm/system/osp/PropertyManager;

    invoke-direct {v1, p0}, Lcom/sec/dsm/system/osp/PropertyManager;-><init>(Landroid/content/Context;)V

    .line 30
    .local v1, propertyManager:Lcom/sec/dsm/system/osp/PropertyManager;
    const-string v5, "uri.hostname.sub"

    const-string v6, "www"

    invoke-virtual {v1, v5, v6}, Lcom/sec/dsm/system/osp/PropertyManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 31
    .local v4, uriSub:Ljava/lang/String;
    const-string v3, ".ospserver.net"

    .line 33
    .local v3, uriMain:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_22

    move-result-object v2

    .line 39
    return-object v2

    .line 34
    .end local v1           #propertyManager:Lcom/sec/dsm/system/osp/PropertyManager;
    .end local v3           #uriMain:Ljava/lang/String;
    .end local v4           #uriSub:Ljava/lang/String;
    :catch_22
    move-exception v0

    .line 35
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 36
    throw v0
.end method
