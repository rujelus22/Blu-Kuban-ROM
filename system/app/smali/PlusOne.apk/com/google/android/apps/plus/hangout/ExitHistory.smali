.class public Lcom/google/android/apps/plus/hangout/ExitHistory;
.super Ljava/lang/Object;
.source "ExitHistory.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/google/android/apps/plus/hangout/ExitHistory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/hangout/ExitHistory;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exitReported(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;)Z
    .registers 5
    .parameter "context"
    .parameter "hangoutInfo"

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/hangout/ExitHistory;->findPrefs(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 49
    .local v0, prefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_d

    .line 50
    const-string v2, "EXIT_REPORTED"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 52
    :cond_d
    return v1
.end method

.method public static exitedNormally(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;)Z
    .registers 7
    .parameter "context"
    .parameter "hangoutInfo"

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 61
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/hangout/ExitHistory;->findPrefs(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 62
    .local v1, prefs:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_11

    .line 63
    const-string v3, "LAST_ERROR"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 64
    .local v0, lastError:I
    if-ne v0, v4, :cond_11

    const/4 v2, 0x1

    .line 66
    .end local v0           #lastError:I
    :cond_11
    return v2
.end method

.method private static findPrefs(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;)Landroid/content/SharedPreferences;
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 131
    const-class v1, Lcom/google/android/apps/plus/hangout/ExitHistory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 133
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/ExitHistory;->readInfo(Landroid/content/SharedPreferences;)Lcom/google/android/apps/plus/service/Hangout$Info;

    move-result-object v2

    .line 134
    if-nez v2, :cond_13

    .line 140
    :cond_12
    :goto_12
    return-object v0

    .line 137
    :cond_13
    invoke-virtual {v2, p1}, Lcom/google/android/apps/plus/service/Hangout$Info;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object v0, v1

    .line 138
    goto :goto_12
.end method

.method public static getError(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;)Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;
    .registers 7
    .parameter "context"
    .parameter "hangoutInfo"

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 75
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/hangout/ExitHistory;->findPrefs(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 76
    .local v1, prefs:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_10

    .line 77
    const-string v3, "LAST_ERROR"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 78
    .local v0, lastError:I
    if-ne v0, v4, :cond_11

    .line 84
    .end local v0           #lastError:I
    :cond_10
    :goto_10
    return-object v2

    .line 81
    .restart local v0       #lastError:I
    :cond_11
    invoke-static {}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->values()[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    move-result-object v2

    aget-object v2, v2, v0

    goto :goto_10
.end method

.method private static readInfo(Landroid/content/SharedPreferences;)Lcom/google/android/apps/plus/service/Hangout$Info;
    .registers 9
    .parameter "prefs"

    .prologue
    const/4 v7, 0x0

    .line 113
    const-string v5, "INFO_HAS_INFO"

    invoke-interface {p0, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 114
    .local v1, hasInfo:Z
    if-nez v1, :cond_b

    .line 115
    const/4 v5, 0x0

    .line 125
    :goto_a
    return-object v5

    .line 117
    :cond_b
    const-string v5, "INFO_HAS_ID"

    const/4 v6, 0x1

    invoke-interface {p0, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 118
    invoke-static {}, Lcom/google/android/apps/plus/service/Hangout$RoomType;->values()[Lcom/google/android/apps/plus/service/Hangout$RoomType;

    move-result-object v5

    const-string v6, "INFO_ROOM_TYPE"

    invoke-interface {p0, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    aget-object v4, v5, v6

    .line 120
    .local v4, roomType:Lcom/google/android/apps/plus/service/Hangout$RoomType;
    const-string v5, "INFO_DOMAIN"

    const-string v6, ""

    invoke-interface {p0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, domain:Ljava/lang/String;
    const-string v5, "INFO_ID"

    const-string v6, ""

    invoke-interface {p0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, id:Ljava/lang/String;
    new-instance v5, Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-direct {v5, v4, v0, v2}, Lcom/google/android/apps/plus/service/Hangout$Info;-><init>(Lcom/google/android/apps/plus/service/Hangout$RoomType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 124
    .end local v0           #domain:Ljava/lang/String;
    .end local v2           #id:Ljava/lang/String;
    .end local v4           #roomType:Lcom/google/android/apps/plus/service/Hangout$RoomType;
    :cond_36
    const-string v5, "INFO_MUC_JID"

    const-string v6, ""

    invoke-interface {p0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, mucJid:Ljava/lang/String;
    new-instance v5, Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-direct {v5, v3}, Lcom/google/android/apps/plus/service/Hangout$Info;-><init>(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public static recordErrorExit(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;Z)V
    .registers 6
    .parameter "context"
    .parameter "hangoutInfo"
    .parameter "error"
    .parameter "exitReported"

    .prologue
    .line 34
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/ExitHistory;->$assertionsDisabled:Z

    if-nez v0, :cond_11

    invoke-virtual {p2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->ordinal()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 35
    :cond_11
    invoke-virtual {p2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->ordinal()I

    move-result v0

    invoke-static {p0, p1, v0, p3}, Lcom/google/android/apps/plus/hangout/ExitHistory;->recordExit(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;IZ)V

    .line 36
    return-void
.end method

.method private static recordExit(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;IZ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    const-class v0, Lcom/google/android/apps/plus/hangout/ExitHistory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 92
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/hangout/ExitHistory;->recordInfo(Landroid/content/SharedPreferences$Editor;Lcom/google/android/apps/plus/service/Hangout$Info;)V

    .line 93
    const-string v1, "LAST_ERROR"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 94
    const-string v1, "EXIT_REPORTED"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    return-void
.end method

.method public static recordExitReported(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;)V
    .registers 3
    .parameter "context"
    .parameter "hangoutInfo"

    .prologue
    .line 40
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/plus/hangout/ExitHistory;->recordNormalExit(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;Z)V

    .line 41
    return-void
.end method

.method private static recordInfo(Landroid/content/SharedPreferences$Editor;Lcom/google/android/apps/plus/service/Hangout$Info;)V
    .registers 4
    .parameter "editor"
    .parameter "hangoutInfo"

    .prologue
    .line 100
    const-string v0, "INFO_HAS_INFO"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 101
    const-string v0, "INFO_HAS_ID"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/Hangout$Info;->hasId()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/Hangout$Info;->hasId()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 103
    const-string v0, "INFO_ROOM_TYPE"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/Hangout$Info;->getRoomType()Lcom/google/android/apps/plus/service/Hangout$RoomType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/Hangout$RoomType;->ordinal()I

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 104
    const-string v0, "INFO_DOMAIN"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/Hangout$Info;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 105
    const-string v0, "INFO_ID"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/Hangout$Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 109
    :goto_34
    return-void

    .line 107
    :cond_35
    const-string v0, "INFO_MUC_JID"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/Hangout$Info;->getMucJid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_34
.end method

.method public static recordNormalExit(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;Z)V
    .registers 4
    .parameter "context"
    .parameter "hangoutInfo"
    .parameter "exitReported"

    .prologue
    .line 29
    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2}, Lcom/google/android/apps/plus/hangout/ExitHistory;->recordExit(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;IZ)V

    .line 30
    return-void
.end method
