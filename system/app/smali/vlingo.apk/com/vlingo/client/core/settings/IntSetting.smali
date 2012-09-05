.class public abstract Lcom/vlingo/client/core/settings/IntSetting;
.super Lcom/vlingo/client/core/settings/Setting;
.source "IntSetting.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .parameter "key"
    .parameter "defaultValue"
    .parameter "description"

    .prologue
    .line 11
    const/4 v0, 0x2

    invoke-static {p2}, Lcom/vlingo/client/core/settings/IntSetting;->getStringValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/vlingo/client/core/settings/Setting;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method protected static getStringValue(I)Ljava/lang/String;
    .registers 2
    .parameter "i"

    .prologue
    .line 27
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getValue(Ljava/lang/String;)I
    .registers 2
    .parameter "v"

    .prologue
    .line 23
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/vlingo/client/core/settings/IntSetting;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/vlingo/client/core/settings/IntSetting;->getValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setValue(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 19
    invoke-static {p1}, Lcom/vlingo/client/core/settings/IntSetting;->getStringValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/settings/IntSetting;->setValueInternal(Ljava/lang/Object;)V

    .line 20
    return-void
.end method
