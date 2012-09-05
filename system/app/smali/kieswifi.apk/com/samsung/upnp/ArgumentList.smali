.class public Lcom/samsung/upnp/ArgumentList;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "ArgumentList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList",
        "<",
        "Lcom/samsung/upnp/Argument;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public getArgument(I)Lcom/samsung/upnp/Argument;
    .registers 3
    .parameter "n"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/ArgumentList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/Argument;

    return-object v0
.end method

.method public getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;
    .registers 7
    .parameter "name"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/samsung/upnp/ArgumentList;->size()I

    move-result v3

    .line 55
    .local v3, nArgs:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_5
    if-lt v2, v3, :cond_9

    .line 63
    const/4 v0, 0x0

    :goto_8
    return-object v0

    .line 56
    :cond_9
    invoke-virtual {p0, v2}, Lcom/samsung/upnp/ArgumentList;->getArgument(I)Lcom/samsung/upnp/Argument;

    move-result-object v0

    .line 57
    .local v0, arg:Lcom/samsung/upnp/Argument;
    invoke-virtual {v0}, Lcom/samsung/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, argName:Ljava/lang/String;
    if-nez v1, :cond_16

    .line 55
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 60
    :cond_16
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_8
.end method

.method public set(Lcom/samsung/upnp/ArgumentList;)V
    .registers 8
    .parameter "inArgList"

    .prologue
    .line 72
    invoke-virtual {p1}, Lcom/samsung/upnp/ArgumentList;->size()I

    move-result v4

    .line 73
    .local v4, nInArgs:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_5
    if-lt v3, v4, :cond_8

    .line 81
    return-void

    .line 74
    :cond_8
    invoke-virtual {p1, v3}, Lcom/samsung/upnp/ArgumentList;->getArgument(I)Lcom/samsung/upnp/Argument;

    move-result-object v1

    .line 75
    .local v1, inArg:Lcom/samsung/upnp/Argument;
    invoke-virtual {v1}, Lcom/samsung/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, inArgName:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/samsung/upnp/ArgumentList;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v0

    .line 77
    .local v0, arg:Lcom/samsung/upnp/Argument;
    if-nez v0, :cond_19

    .line 73
    :goto_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 79
    :cond_19
    invoke-virtual {v1}, Lcom/samsung/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/samsung/upnp/Argument;->setValue(Ljava/lang/String;)V

    goto :goto_16
.end method
