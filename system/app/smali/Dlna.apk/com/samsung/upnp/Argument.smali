.class public Lcom/samsung/upnp/Argument;
.super Ljava/lang/Object;
.source "Argument.java"


# instance fields
.field private argumentNode:Lcom/samsung/xml/Node;

.field private serviceNode:Lcom/samsung/xml/Node;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 107
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lcom/samsung/xml/Node;

    invoke-direct {v0}, Lcom/samsung/xml/Node;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/Argument;->argumentNode:Lcom/samsung/xml/Node;

    .line 110
    iget-object v0, p0, Lcom/samsung/upnp/Argument;->argumentNode:Lcom/samsung/xml/Node;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->setName(Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/upnp/Argument;->serviceNode:Lcom/samsung/xml/Node;

    .line 112
    return-void
.end method

.method public constructor <init>(Lcom/samsung/xml/Node;Lcom/samsung/xml/Node;)V
    .registers 10
    .parameter "argNode"
    .parameter "servNode"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/samsung/upnp/Argument;-><init>()V

    .line 124
    iput-object p2, p0, Lcom/samsung/upnp/Argument;->serviceNode:Lcom/samsung/xml/Node;

    .line 125
    const-string v6, "name"

    invoke-virtual {p1, v6}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, name:Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/upnp/Argument;->getArgumentNode()Lcom/samsung/xml/Node;

    move-result-object v2

    .line 128
    .local v2, node:Lcom/samsung/xml/Node;
    invoke-virtual {v2}, Lcom/samsung/xml/Node;->getUserData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/upnp/xml/ArgumentData;

    .line 130
    .local v4, userData:Lcom/samsung/upnp/xml/ArgumentData;
    if-nez v4, :cond_22

    .line 131
    new-instance v4, Lcom/samsung/upnp/xml/ArgumentData;

    .end local v4           #userData:Lcom/samsung/upnp/xml/ArgumentData;
    invoke-direct {v4}, Lcom/samsung/upnp/xml/ArgumentData;-><init>()V

    .line 132
    .restart local v4       #userData:Lcom/samsung/upnp/xml/ArgumentData;
    invoke-virtual {v2, v4}, Lcom/samsung/xml/Node;->setUserData(Ljava/lang/Object;)V

    .line 133
    invoke-virtual {v4, v2}, Lcom/samsung/upnp/xml/ArgumentData;->setNode(Lcom/samsung/xml/Node;)V

    .line 135
    :cond_22
    invoke-virtual {v4}, Lcom/samsung/upnp/xml/ArgumentData;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, value:Ljava/lang/String;
    const-string v6, "direction"

    invoke-virtual {p1, v6}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, direction:Ljava/lang/String;
    const-string v6, "relatedStateVariable"

    invoke-virtual {p1, v6}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, related:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/samsung/upnp/Argument;->setName(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0, v5}, Lcom/samsung/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/Argument;->setDirection(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, v3}, Lcom/samsung/upnp/Argument;->setRelatedStateVariableName(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/samsung/upnp/Argument;-><init>()V

    .line 117
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/Argument;->setName(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, p2}, Lcom/samsung/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method private getArgumentData()Lcom/samsung/upnp/xml/ArgumentData;
    .registers 3

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/samsung/upnp/Argument;->getArgumentNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 232
    .local v0, node:Lcom/samsung/xml/Node;
    invoke-virtual {v0}, Lcom/samsung/xml/Node;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/upnp/xml/ArgumentData;

    .line 233
    .local v1, userData:Lcom/samsung/upnp/xml/ArgumentData;
    if-nez v1, :cond_17

    .line 234
    new-instance v1, Lcom/samsung/upnp/xml/ArgumentData;

    .end local v1           #userData:Lcom/samsung/upnp/xml/ArgumentData;
    invoke-direct {v1}, Lcom/samsung/upnp/xml/ArgumentData;-><init>()V

    .line 235
    .restart local v1       #userData:Lcom/samsung/upnp/xml/ArgumentData;
    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->setUserData(Ljava/lang/Object;)V

    .line 236
    invoke-virtual {v1, v0}, Lcom/samsung/upnp/xml/ArgumentData;->setNode(Lcom/samsung/xml/Node;)V

    .line 238
    :cond_17
    return-object v1
.end method

.method private getArgumentNode()Lcom/samsung/xml/Node;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/upnp/Argument;->argumentNode:Lcom/samsung/xml/Node;

    return-object v0
.end method

.method private getService()Lcom/samsung/upnp/Service;
    .registers 3

    .prologue
    .line 82
    new-instance v0, Lcom/samsung/upnp/Service;

    invoke-direct {p0}, Lcom/samsung/upnp/Argument;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/upnp/Service;-><init>(Lcom/samsung/xml/Node;)V

    return-object v0
.end method

.method private getServiceNode()Lcom/samsung/xml/Node;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/upnp/Argument;->serviceNode:Lcom/samsung/xml/Node;

    return-object v0
.end method

.method private isAllowedValue(Lcom/samsung/upnp/AllowedValueRange;Ljava/lang/String;)Z
    .registers 15
    .parameter "range"
    .parameter "value"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 322
    if-nez p1, :cond_5

    .line 339
    :cond_4
    :goto_4
    return v9

    .line 325
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/upnp/AllowedValueRange;->getMaximum()Ljava/lang/String;

    move-result-object v5

    .line 326
    .local v5, str1:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/upnp/AllowedValueRange;->getMinimum()Ljava/lang/String;

    move-result-object v6

    .line 329
    .local v6, str2:Ljava/lang/String;
    :try_start_d
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 330
    .local v7, val:D
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 331
    .local v3, min:D
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_18} :catch_23

    move-result-wide v1

    .line 333
    .local v1, max:D
    cmpl-double v11, v7, v3

    if-ltz v11, :cond_21

    cmpg-double v11, v7, v1

    if-lez v11, :cond_4

    :cond_21
    move v9, v10

    .line 336
    goto :goto_4

    .line 338
    .end local v1           #max:D
    .end local v3           #min:D
    .end local v7           #val:D
    :catch_23
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move v9, v10

    .line 339
    goto :goto_4
.end method

.method private isAllowsedValue(Lcom/samsung/upnp/AllowedValueList;Ljava/lang/String;)Z
    .registers 6
    .parameter "list"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 310
    if-nez p1, :cond_4

    .line 318
    :cond_3
    :goto_3
    return v1

    .line 313
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    invoke-virtual {p1}, Lcom/samsung/upnp/AllowedValueList;->size()I

    move-result v2

    if-lt v0, v2, :cond_d

    .line 318
    const/4 v1, 0x0

    goto :goto_3

    .line 314
    :cond_d
    invoke-virtual {p1, v0}, Lcom/samsung/upnp/AllowedValueList;->getAllowedValue(I)Lcom/samsung/upnp/AllowedValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/upnp/AllowedValue;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public static isArgumentNode(Lcom/samsung/xml/Node;)Z
    .registers 3
    .parameter "node"

    .prologue
    .line 152
    const-string v0, "argument"

    invoke-virtual {p0}, Lcom/samsung/xml/Node;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getDirection()Ljava/lang/String;
    .registers 3

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/samsung/upnp/Argument;->getArgumentNode()Lcom/samsung/xml/Node;

    move-result-object v0

    const-string v1, "direction"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntegerValue()I
    .registers 3

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/samsung/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, value:Ljava/lang/String;
    :try_start_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_9

    move-result v1

    .line 268
    :goto_8
    return v1

    .line 266
    :catch_9
    move-exception v1

    .line 268
    const/4 v1, -0x1

    goto :goto_8
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/samsung/upnp/Argument;->getArgumentNode()Lcom/samsung/xml/Node;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRelatedStateVariable()Lcom/samsung/upnp/StateVariable;
    .registers 4

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/samsung/upnp/Argument;->getService()Lcom/samsung/upnp/Service;

    move-result-object v1

    .line 219
    .local v1, service:Lcom/samsung/upnp/Service;
    if-nez v1, :cond_8

    .line 220
    const/4 v2, 0x0

    .line 222
    :goto_7
    return-object v2

    .line 221
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/upnp/Argument;->getRelatedStateVariableName()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, relatedStatVarName:Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/samsung/upnp/Service;->getStateVariable(Ljava/lang/String;)Lcom/samsung/upnp/StateVariable;

    move-result-object v2

    goto :goto_7
.end method

.method public getRelatedStateVariableName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/samsung/upnp/Argument;->getArgumentNode()Lcom/samsung/xml/Node;

    move-result-object v0

    const-string v1, "relatedStateVariable"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/samsung/upnp/Argument;->getArgumentData()Lcom/samsung/upnp/xml/ArgumentData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/xml/ArgumentData;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAllowedValue(I)Z
    .registers 7
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    .line 295
    invoke-virtual {p0}, Lcom/samsung/upnp/Argument;->getRelatedStateVariable()Lcom/samsung/upnp/StateVariable;

    move-result-object v2

    .line 296
    .local v2, sv:Lcom/samsung/upnp/StateVariable;
    if-eqz v2, :cond_19

    .line 297
    invoke-virtual {v2}, Lcom/samsung/upnp/StateVariable;->hasAllowedValueList()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 298
    invoke-virtual {v2}, Lcom/samsung/upnp/StateVariable;->getAllowedValueList()Lcom/samsung/upnp/AllowedValueList;

    move-result-object v0

    .line 299
    .local v0, list:Lcom/samsung/upnp/AllowedValueList;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/samsung/upnp/Argument;->isAllowsedValue(Lcom/samsung/upnp/AllowedValueList;Ljava/lang/String;)Z

    move-result v3

    .line 306
    .end local v0           #list:Lcom/samsung/upnp/AllowedValueList;
    :cond_19
    :goto_19
    return v3

    .line 300
    :cond_1a
    invoke-virtual {v2}, Lcom/samsung/upnp/StateVariable;->hasAllowedValueRange()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 301
    invoke-virtual {v2}, Lcom/samsung/upnp/StateVariable;->getAllowedValueRange()Lcom/samsung/upnp/AllowedValueRange;

    move-result-object v1

    .line 302
    .local v1, range:Lcom/samsung/upnp/AllowedValueRange;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/samsung/upnp/Argument;->isAllowedValue(Lcom/samsung/upnp/AllowedValueRange;Ljava/lang/String;)Z

    move-result v3

    goto :goto_19
.end method

.method public isAllowedValue(Ljava/lang/String;)Z
    .registers 7
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    .line 280
    invoke-virtual {p0}, Lcom/samsung/upnp/Argument;->getRelatedStateVariable()Lcom/samsung/upnp/StateVariable;

    move-result-object v2

    .line 281
    .local v2, sv:Lcom/samsung/upnp/StateVariable;
    if-eqz v2, :cond_15

    .line 282
    invoke-virtual {v2}, Lcom/samsung/upnp/StateVariable;->hasAllowedValueList()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 283
    invoke-virtual {v2}, Lcom/samsung/upnp/StateVariable;->getAllowedValueList()Lcom/samsung/upnp/AllowedValueList;

    move-result-object v0

    .line 284
    .local v0, list:Lcom/samsung/upnp/AllowedValueList;
    invoke-direct {p0, v0, p1}, Lcom/samsung/upnp/Argument;->isAllowsedValue(Lcom/samsung/upnp/AllowedValueList;Ljava/lang/String;)Z

    move-result v3

    .line 291
    .end local v0           #list:Lcom/samsung/upnp/AllowedValueList;
    :cond_15
    :goto_15
    return v3

    .line 285
    :cond_16
    invoke-virtual {v2}, Lcom/samsung/upnp/StateVariable;->hasAllowedValueRange()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 286
    invoke-virtual {v2}, Lcom/samsung/upnp/StateVariable;->getAllowedValueRange()Lcom/samsung/upnp/AllowedValueRange;

    move-result-object v1

    .line 287
    .local v1, range:Lcom/samsung/upnp/AllowedValueRange;
    invoke-direct {p0, v1, p1}, Lcom/samsung/upnp/Argument;->isAllowedValue(Lcom/samsung/upnp/AllowedValueRange;Ljava/lang/String;)Z

    move-result v3

    goto :goto_15
.end method

.method public isInDirection()Z
    .registers 3

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/samsung/upnp/Argument;->getDirection()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, dir:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 191
    const/4 v1, 0x0

    .line 192
    :goto_7
    return v1

    :cond_8
    const-string v1, "in"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_7
.end method

.method public isOutDirection()Z
    .registers 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/samsung/upnp/Argument;->isInDirection()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public setDirection(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/samsung/upnp/Argument;->getArgumentNode()Lcom/samsung/xml/Node;

    move-result-object v0

    const-string v1, "direction"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/samsung/upnp/Argument;->getArgumentNode()Lcom/samsung/xml/Node;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public setRelatedStateVariableName(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/samsung/upnp/Argument;->getArgumentNode()Lcom/samsung/xml/Node;

    move-result-object v0

    const-string v1, "relatedStateVariable"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public setValue(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 252
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/samsung/upnp/Argument;->getArgumentData()Lcom/samsung/upnp/xml/ArgumentData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/xml/ArgumentData;->setValue(Ljava/lang/String;)V

    .line 248
    return-void
.end method
