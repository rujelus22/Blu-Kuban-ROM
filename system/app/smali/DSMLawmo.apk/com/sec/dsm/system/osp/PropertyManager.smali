.class public Lcom/sec/dsm/system/osp/PropertyManager;
.super Ljava/lang/Object;
.source "PropertyManager.java"


# instance fields
.field private context:Landroid/content/Context;

.field private propertyRepository:Lcom/sec/dsm/system/osp/PropertyRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/osp/PropertyException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    :try_start_3
    iput-object p1, p0, Lcom/sec/dsm/system/osp/PropertyManager;->context:Landroid/content/Context;

    .line 31
    new-instance v1, Lcom/sec/dsm/system/osp/PropertyRepository;

    iget-object v2, p0, Lcom/sec/dsm/system/osp/PropertyManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/dsm/system/osp/PropertyRepository;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/dsm/system/osp/PropertyManager;->propertyRepository:Lcom/sec/dsm/system/osp/PropertyRepository;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_f

    .line 41
    return-void

    .line 37
    :catch_f
    move-exception v0

    .line 38
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    new-instance v1, Lcom/sec/dsm/system/osp/PropertyException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sec/dsm/system/osp/PropertyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/osp/PropertyException;
        }
    .end annotation

    .prologue
    .line 63
    if-nez p1, :cond_8

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 66
    :cond_8
    iget-object v0, p0, Lcom/sec/dsm/system/osp/PropertyManager;->propertyRepository:Lcom/sec/dsm/system/osp/PropertyRepository;

    invoke-virtual {v0, p1}, Lcom/sec/dsm/system/osp/PropertyRepository;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 79
    .local v1, value:Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sec/dsm/system/osp/PropertyManager;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lcom/sec/dsm/system/osp/PropertyException; {:try_start_1 .. :try_end_4} :catch_9

    move-result-object v1

    .line 83
    :goto_5
    if-nez v1, :cond_8

    .line 84
    move-object v1, p2

    .line 86
    :cond_8
    return-object v1

    .line 80
    :catch_9
    move-exception v0

    .line 81
    .local v0, e:Lcom/sec/dsm/system/osp/PropertyException;
    invoke-virtual {v0}, Lcom/sec/dsm/system/osp/PropertyException;->printStackTrace()V

    goto :goto_5
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/osp/PropertyException;
        }
    .end annotation

    .prologue
    .line 97
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 98
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 100
    :cond_a
    iget-object v0, p0, Lcom/sec/dsm/system/osp/PropertyManager;->propertyRepository:Lcom/sec/dsm/system/osp/PropertyRepository;

    invoke-virtual {v0, p1, p2}, Lcom/sec/dsm/system/osp/PropertyRepository;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method
