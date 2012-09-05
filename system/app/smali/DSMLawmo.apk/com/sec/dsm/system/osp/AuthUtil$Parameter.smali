.class Lcom/sec/dsm/system/osp/AuthUtil$Parameter;
.super Ljava/lang/Object;
.source "AuthUtil.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/dsm/system/osp/AuthUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Parameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 335
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object p1, p0, Lcom/sec/dsm/system/osp/AuthUtil$Parameter;->key:Ljava/lang/String;

    .line 338
    iput-object p2, p0, Lcom/sec/dsm/system/osp/AuthUtil$Parameter;->value:Ljava/lang/String;

    .line 339
    return-void
.end method


# virtual methods
.method public bridge synthetic getKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/sec/dsm/system/osp/AuthUtil$Parameter;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/sec/dsm/system/osp/AuthUtil$Parameter;->key:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/sec/dsm/system/osp/AuthUtil$Parameter;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/sec/dsm/system/osp/AuthUtil$Parameter;->value:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 329
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/dsm/system/osp/AuthUtil$Parameter;->setValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/sec/dsm/system/osp/AuthUtil$Parameter;->value:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_5

    .line 356
    iput-object p1, p0, Lcom/sec/dsm/system/osp/AuthUtil$Parameter;->value:Ljava/lang/String;

    return-object v0

    :catchall_5
    move-exception v0

    iput-object p1, p0, Lcom/sec/dsm/system/osp/AuthUtil$Parameter;->value:Ljava/lang/String;

    throw v0
.end method
