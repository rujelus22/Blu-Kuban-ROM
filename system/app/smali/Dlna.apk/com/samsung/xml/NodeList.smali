.class public Lcom/samsung/xml/NodeList;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "NodeList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList",
        "<",
        "Lcom/samsung/xml/Node;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public getEndsWith(Ljava/lang/String;)Lcom/samsung/xml/Node;
    .registers 8
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 64
    if-nez p1, :cond_5

    move-object v2, v4

    .line 76
    :goto_4
    return-object v2

    .line 67
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/xml/NodeList;->size()I

    move-result v1

    .line 68
    .local v1, nLists:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_a
    if-lt v0, v1, :cond_e

    move-object v2, v4

    .line 76
    goto :goto_4

    .line 69
    :cond_e
    invoke-virtual {p0, v0}, Lcom/samsung/xml/NodeList;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v2

    .line 70
    .local v2, node:Lcom/samsung/xml/Node;
    invoke-virtual {v2}, Lcom/samsung/xml/Node;->getName()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, nodeName:Ljava/lang/String;
    if-nez v3, :cond_1b

    .line 68
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 73
    :cond_1b
    invoke-virtual {v3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    goto :goto_4
.end method

.method public getNode(I)Lcom/samsung/xml/Node;
    .registers 4
    .parameter "n"

    .prologue
    .line 41
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/xml/NodeList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/xml/Node;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 43
    :goto_6
    return-object v1

    .line 42
    :catch_7
    move-exception v0

    .line 43
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/samsung/xml/Node;

    invoke-direct {v1}, Lcom/samsung/xml/Node;-><init>()V

    goto :goto_6
.end method

.method public getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;
    .registers 8
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 49
    if-nez p1, :cond_5

    move-object v2, v4

    .line 59
    :cond_4
    :goto_4
    return-object v2

    .line 52
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/xml/NodeList;->size()I

    move-result v1

    .line 53
    .local v1, nLists:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_a
    if-lt v0, v1, :cond_e

    move-object v2, v4

    .line 59
    goto :goto_4

    .line 54
    :cond_e
    invoke-virtual {p0, v0}, Lcom/samsung/xml/NodeList;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v2

    .line 55
    .local v2, node:Lcom/samsung/xml/Node;
    invoke-virtual {v2}, Lcom/samsung/xml/Node;->getName()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, nodeName:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_4

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method
