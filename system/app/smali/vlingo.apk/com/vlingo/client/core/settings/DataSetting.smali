.class public abstract Lcom/vlingo/client/core/settings/DataSetting;
.super Lcom/vlingo/client/core/settings/Setting;
.source "DataSetting.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;[BLjava/lang/String;)V
    .registers 5
    .parameter "key"
    .parameter "data"
    .parameter "description"

    .prologue
    .line 20
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/vlingo/client/core/settings/Setting;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getValue()[B
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vlingo/client/core/settings/DataSetting;->value:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public setValue([B)V
    .registers 2
    .parameter "value"

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/vlingo/client/core/settings/DataSetting;->setValueInternal(Ljava/lang/Object;)V

    .line 25
    return-void
.end method
