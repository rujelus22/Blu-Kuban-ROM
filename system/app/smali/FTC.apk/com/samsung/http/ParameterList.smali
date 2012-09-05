.class public Lcom/samsung/http/ParameterList;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "ParameterList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList",
        "<",
        "Lcom/samsung/http/Parameter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public at(I)Lcom/samsung/http/Parameter;
    .registers 3
    .parameter "n"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/samsung/http/ParameterList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/http/Parameter;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Lcom/samsung/http/Parameter;
    .registers 7
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 48
    if-nez p1, :cond_5

    move-object v2, v3

    .line 57
    :cond_4
    :goto_4
    return-object v2

    .line 51
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/http/ParameterList;->size()I

    move-result v1

    .line 52
    .local v1, nLists:I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_a
    if-lt v0, v1, :cond_e

    move-object v2, v3

    .line 57
    goto :goto_4

    .line 53
    :cond_e
    invoke-virtual {p0, v0}, Lcom/samsung/http/ParameterList;->at(I)Lcom/samsung/http/Parameter;

    move-result-object v2

    .line 54
    .local v2, param:Lcom/samsung/http/Parameter;
    invoke-virtual {v2}, Lcom/samsung/http/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "name"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/samsung/http/ParameterList;->getParameter(Ljava/lang/String;)Lcom/samsung/http/Parameter;

    move-result-object v0

    .line 63
    .local v0, param:Lcom/samsung/http/Parameter;
    if-nez v0, :cond_9

    .line 64
    const-string v1, ""

    .line 65
    :goto_8
    return-object v1

    :cond_9
    invoke-virtual {v0}, Lcom/samsung/http/Parameter;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method
