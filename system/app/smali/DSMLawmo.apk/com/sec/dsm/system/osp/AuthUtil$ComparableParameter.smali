.class Lcom/sec/dsm/system/osp/AuthUtil$ComparableParameter;
.super Ljava/lang/Object;
.source "AuthUtil.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/dsm/system/osp/AuthUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComparableParameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sec/dsm/system/osp/AuthUtil$ComparableParameter;",
        ">;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field final value:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;)V
    .registers 6
    .parameter "value"

    .prologue
    .line 413
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 414
    iput-object p1, p0, Lcom/sec/dsm/system/osp/AuthUtil$ComparableParameter;->value:Ljava/util/Map$Entry;

    .line 415
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/dsm/system/osp/AuthUtil$ComparableParameter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, n:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/dsm/system/osp/AuthUtil$ComparableParameter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, v:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/dsm/system/osp/AuthUtil$ComparableParameter;->key:Ljava/lang/String;

    .line 421
    return-void
.end method

.method private static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .parameter "from"

    .prologue
    .line 429
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method public compareTo(Lcom/sec/dsm/system/osp/AuthUtil$ComparableParameter;)I
    .registers 4
    .parameter "that"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/sec/dsm/system/osp/AuthUtil$ComparableParameter;->key:Ljava/lang/String;

    iget-object v1, p1, Lcom/sec/dsm/system/osp/AuthUtil$ComparableParameter;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 410
    check-cast p1, Lcom/sec/dsm/system/osp/AuthUtil$ComparableParameter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/dsm/system/osp/AuthUtil$ComparableParameter;->compareTo(Lcom/sec/dsm/system/osp/AuthUtil$ComparableParameter;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/sec/dsm/system/osp/AuthUtil$ComparableParameter;->key:Ljava/lang/String;

    return-object v0
.end method
