.class public abstract Lcom/vlingo/client/core/settings/LongSetting;
.super Lcom/vlingo/client/core/settings/Setting;
.source "LongSetting.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .registers 7
    .parameter "key"
    .parameter "defaultValue"
    .parameter "description"

    .prologue
    .line 11
    const/4 v0, 0x4

    invoke-static {p2, p3}, Lcom/vlingo/client/core/settings/LongSetting;->getStringValue(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p4}, Lcom/vlingo/client/core/settings/Setting;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method protected static getStringValue(J)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 27
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getValue(Ljava/lang/String;)J
    .registers 3
    .parameter "v"

    .prologue
    .line 23
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getValue()J
    .registers 3

    .prologue
    .line 15
    iget-object v0, p0, Lcom/vlingo/client/core/settings/LongSetting;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/vlingo/client/core/settings/LongSetting;->getValue(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setValue(J)V
    .registers 4
    .parameter "value"

    .prologue
    .line 19
    invoke-static {p1, p2}, Lcom/vlingo/client/core/settings/LongSetting;->getStringValue(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/settings/LongSetting;->setValueInternal(Ljava/lang/Object;)V

    .line 20
    return-void
.end method
