.class public Lcom/vlingo/client/settings/AndroidCoreSettingsProvider;
.super Lcom/vlingo/client/core/settings/CoreSettingsProvider;
.source "AndroidCoreSettingsProvider.java"


# static fields
.field private static s_DetailedTiming:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 12
    const-string v0, "timinglog_enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/vlingo/client/settings/AndroidCoreSettingsProvider;->s_DetailedTiming:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/vlingo/client/core/settings/CoreSettingsProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getBooleanSettingValue(Ljava/lang/String;)Z
    .registers 4
    .parameter "key"

    .prologue
    const/4 v1, 0x1

    .line 21
    const-string v0, "pref.internal.asr_keepalive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 22
    const/4 v0, 0x0

    .line 34
    :goto_a
    return v0

    .line 24
    :cond_b
    const-string v0, "pref.internal.detailed_timings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 25
    sget-boolean v0, Lcom/vlingo/client/settings/AndroidCoreSettingsProvider;->s_DetailedTiming:Z

    goto :goto_a

    .line 27
    :cond_16
    const-string v0, "pref.location.awareness"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 28
    const-string v0, "location_enabled"

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_a

    .line 30
    :cond_25
    const-string v0, "pref.autopunctuation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 31
    const-string v0, "auto_punctuation"

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_a

    .line 34
    :cond_34
    invoke-super {p0, p1}, Lcom/vlingo/client/core/settings/CoreSettingsProvider;->getBooleanSettingValue(Ljava/lang/String;)Z

    move-result v0

    goto :goto_a
.end method

.method public getEnumSettingValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "key"

    .prologue
    .line 40
    const-string v0, "network.connection_type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 41
    const-string v0, "network.connection_type.directtcp"

    .line 44
    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0, p1}, Lcom/vlingo/client/core/settings/CoreSettingsProvider;->getEnumSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getFloatSettingValue(Ljava/lang/String;F)F
    .registers 4
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/vlingo/client/core/settings/CoreSettingsProvider;->getFloatSettingValue(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method
