.class public abstract Lcom/vlingo/client/core/settings/StringSetting;
.super Lcom/vlingo/client/core/settings/Setting;
.source "StringSetting.java"


# static fields
.field public static final VALUE_EMPTY:Ljava/lang/String; = "__EMPTY__"


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "key"
    .parameter "defaultValue"
    .parameter "description"

    .prologue
    .line 13
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/vlingo/client/core/settings/Setting;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/vlingo/client/core/settings/StringSetting;->value:Ljava/lang/Object;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/vlingo/client/core/settings/StringSetting;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_10

    .line 19
    :cond_e
    const/4 v0, 0x0

    .line 21
    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/vlingo/client/core/settings/StringSetting;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_f
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 25
    if-nez p1, :cond_4

    .line 26
    const-string p1, ""

    .line 27
    :cond_4
    invoke-virtual {p0, p1}, Lcom/vlingo/client/core/settings/StringSetting;->setValueInternal(Ljava/lang/Object;)V

    .line 28
    return-void
.end method
