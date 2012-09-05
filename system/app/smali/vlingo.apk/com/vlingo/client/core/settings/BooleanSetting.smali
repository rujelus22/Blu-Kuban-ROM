.class public abstract Lcom/vlingo/client/core/settings/BooleanSetting;
.super Lcom/vlingo/client/core/settings/Setting;
.source "BooleanSetting.java"


# static fields
.field public static LABELS_DISABLED_ENABLED:[Ljava/lang/String;

.field public static LABELS_OFF_ON:[Ljava/lang/String;


# instance fields
.field protected final labels:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Off"

    aput-object v1, v0, v2

    const-string v1, "On"

    aput-object v1, v0, v3

    sput-object v0, Lcom/vlingo/client/core/settings/BooleanSetting;->LABELS_OFF_ON:[Ljava/lang/String;

    .line 11
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Disabled"

    aput-object v1, v0, v2

    const-string v1, "Enabled"

    aput-object v1, v0, v3

    sput-object v0, Lcom/vlingo/client/core/settings/BooleanSetting;->LABELS_DISABLED_ENABLED:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5
    .parameter "key"
    .parameter "defaultValue"
    .parameter "description"

    .prologue
    .line 16
    sget-object v0, Lcom/vlingo/client/core/settings/BooleanSetting;->LABELS_OFF_ON:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vlingo/client/core/settings/BooleanSetting;-><init>(Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/String;)V
    .registers 7
    .parameter "key"
    .parameter "defaultValue"
    .parameter "description"
    .parameter "labels"

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-static {p2}, Lcom/vlingo/client/core/settings/BooleanSetting;->getStringValue(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/vlingo/client/core/settings/Setting;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p4, p0, Lcom/vlingo/client/core/settings/BooleanSetting;->labels:[Ljava/lang/String;

    .line 22
    return-void
.end method

.method protected static getStringValue(Z)Ljava/lang/String;
    .registers 2
    .parameter "b"

    .prologue
    .line 40
    if-eqz p0, :cond_5

    const-string v0, "true"

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "false"

    goto :goto_4
.end method

.method public static getValueFromString(Ljava/lang/String;)Z
    .registers 2
    .parameter "v"

    .prologue
    .line 33
    if-eqz p0, :cond_a

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 36
    :cond_a
    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getValue()Z
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vlingo/client/core/settings/BooleanSetting;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/vlingo/client/core/settings/BooleanSetting;->getValueFromString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setValue(Z)V
    .registers 3
    .parameter "value"

    .prologue
    .line 29
    invoke-static {p1}, Lcom/vlingo/client/core/settings/BooleanSetting;->getStringValue(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/settings/BooleanSetting;->setValueInternal(Ljava/lang/Object;)V

    .line 30
    return-void
.end method
