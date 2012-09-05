.class public Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;
.super Ljava/lang/Object;
.source "VLServiceResponse.java"


# instance fields
.field protected actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

.field protected isError:Z

.field protected messages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/vlservice/response/ServerMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->isError:Z

    .line 18
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->messages:Ljava/util/Vector;

    return-void
.end method

.method public static createFromXml(Ljava/lang/String;)Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;
    .registers 3
    .parameter "xml"

    .prologue
    .line 95
    new-instance v1, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;

    invoke-direct {v1}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;-><init>()V

    .line 96
    .local v1, responseParser:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;
    invoke-virtual {v1, p0}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->parseResponseXml(Ljava/lang/String;)Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;

    move-result-object v0

    .line 97
    .local v0, res:Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;
    return-object v0
.end method


# virtual methods
.method public addAction(Lcom/vlingo/client/core/vlservice/response/Action;)V
    .registers 3
    .parameter "action"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

    if-nez v0, :cond_b

    .line 89
    new-instance v0, Lcom/vlingo/client/core/vlservice/response/ActionList;

    invoke-direct {v0}, Lcom/vlingo/client/core/vlservice/response/ActionList;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

    .line 91
    :cond_b
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

    invoke-virtual {v0, p1}, Lcom/vlingo/client/core/vlservice/response/ActionList;->addElement(Lcom/vlingo/client/core/vlservice/response/Action;)V

    .line 92
    return-void
.end method

.method public addMessage(Lcom/vlingo/client/core/vlservice/response/ServerMessage;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->messages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public getActionList()Lcom/vlingo/client/core/vlservice/response/ActionList;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

    return-object v0
.end method

.method public getFirstMessage()Lcom/vlingo/client/core/vlservice/response/ServerMessage;
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->messages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 74
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->messages:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/vlservice/response/ServerMessage;

    .line 76
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getMessages()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->messages:Ljava/util/Vector;

    return-object v0
.end method

.method public hasActions()Z
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

    invoke-virtual {v0}, Lcom/vlingo/client/core/vlservice/response/ActionList;->size()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hasErrorMessageActions()Z
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

    if-eqz v0, :cond_b

    .line 38
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

    invoke-virtual {v0}, Lcom/vlingo/client/core/vlservice/response/ActionList;->containsErrorMessage()Z

    move-result v0

    .line 40
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hasMessages()Z
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->messages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasNonMessageActions()Z
    .registers 4

    .prologue
    .line 44
    iget-object v1, p0, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

    if-eqz v1, :cond_42

    .line 45
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

    invoke-virtual {v1}, Lcom/vlingo/client/core/vlservice/response/ActionList;->size()I

    move-result v1

    if-ge v0, v1, :cond_42

    .line 46
    const-string v1, "ShowMessage"

    iget-object v2, p0, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

    invoke-virtual {v2, v0}, Lcom/vlingo/client/core/vlservice/response/ActionList;->elementAt(I)Lcom/vlingo/client/core/vlservice/response/Action;

    move-result-object v2

    iget-object v2, v2, Lcom/vlingo/client/core/vlservice/response/Action;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string v1, "FetchConfig"

    iget-object v2, p0, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

    invoke-virtual {v2, v0}, Lcom/vlingo/client/core/vlservice/response/ActionList;->elementAt(I)Lcom/vlingo/client/core/vlservice/response/Action;

    move-result-object v2

    iget-object v2, v2, Lcom/vlingo/client/core/vlservice/response/Action;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string v1, "SetConfig"

    iget-object v2, p0, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

    invoke-virtual {v2, v0}, Lcom/vlingo/client/core/vlservice/response/ActionList;->elementAt(I)Lcom/vlingo/client/core/vlservice/response/Action;

    move-result-object v2

    iget-object v2, v2, Lcom/vlingo/client/core/vlservice/response/Action;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 53
    const/4 v1, 0x1

    .line 57
    .end local v0           #i:I
    :goto_3e
    return v1

    .line 45
    .restart local v0       #i:I
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 57
    .end local v0           #i:I
    :cond_42
    const/4 v1, 0x0

    goto :goto_3e
.end method

.method public isError()Z
    .registers 5

    .prologue
    .line 21
    iget-object v2, p0, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->messages:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_25

    .line 22
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v2, p0, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->messages:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 23
    iget-object v2, p0, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->messages:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/vlservice/response/ServerMessage;

    .line 24
    .local v1, message:Lcom/vlingo/client/core/vlservice/response/ServerMessage;
    invoke-virtual {v1}, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_22

    .line 25
    const/4 v2, 0x1

    .line 29
    .end local v0           #i:I
    .end local v1           #message:Lcom/vlingo/client/core/vlservice/response/ServerMessage;
    :goto_21
    return v2

    .line 22
    .restart local v0       #i:I
    .restart local v1       #message:Lcom/vlingo/client/core/vlservice/response/ServerMessage;
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 29
    .end local v0           #i:I
    .end local v1           #message:Lcom/vlingo/client/core/vlservice/response/ServerMessage;
    :cond_25
    const/4 v2, 0x0

    goto :goto_21
.end method

.method public setActionList(Lcom/vlingo/client/core/vlservice/response/ActionList;)V
    .registers 2
    .parameter "actionList"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 102
    .local v0, buff:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->getFirstMessage()Lcom/vlingo/client/core/vlservice/response/ServerMessage;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 103
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    iget-object v3, p0, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->messages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_30

    .line 104
    iget-object v3, p0, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->messages:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/core/vlservice/response/ServerMessage;

    .line 105
    .local v2, msg:Lcom/vlingo/client/core/vlservice/response/ServerMessage;
    invoke-virtual {v2}, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 109
    .end local v1           #i:I
    .end local v2           #msg:Lcom/vlingo/client/core/vlservice/response/ServerMessage;
    :cond_2b
    const-string v3, "<no message>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    :cond_30
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    iget-object v3, p0, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

    if-eqz v3, :cond_47

    .line 113
    iget-object v3, p0, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    :goto_42
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 115
    :cond_47
    const-string v3, "<no actions>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_42
.end method
