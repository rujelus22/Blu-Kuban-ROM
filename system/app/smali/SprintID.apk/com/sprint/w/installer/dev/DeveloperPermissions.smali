.class public Lcom/sprint/w/installer/dev/DeveloperPermissions;
.super Ljava/lang/Object;
.source "DeveloperPermissions.java"


# static fields
.field private static final JSON_FIELD_DEFAULT_URL:Ljava/lang/String; = "dUrl"

.field private static final JSON_FIELD_EDIT_URL:Ljava/lang/String; = "eUrl"

.field private static final JSON_FIELD_EXPIRES:Ljava/lang/String; = "tLive"

.field private static final JSON_FIELD_LOAD_CABLE:Ljava/lang/String; = "lc"

.field private static final JSON_FIELD_LOAD_SD:Ljava/lang/String; = "lSd"

.field private static final JSON_FIELD_LOAD_URL:Ljava/lang/String; = "lUrl"

.field private static final PREFS_FIELDS_PERMISSIONS:Ljava/lang/String; = "z2"

.field private static final PREFS_STORE_NAME:Ljava/lang/String; = "z1"

.field private static log:Lcom/sprint/id/logger/Logger;


# instance fields
.field private allowedEditURL:Z

.field private allowedLoadCable:Z

.field private allowedLoadSD:Z

.field private allowedLoadURL:Z

.field private defaultURL:Ljava/lang/String;

.field private expiresAt:J

.field permissionsLoaded:Z

.field protected preferences:Lcom/sprint/w/installer/dev/SecureSharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/sprint/w/installer/dev/DeveloperPermissions;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->log:Lcom/sprint/id/logger/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "appContext"

    .prologue
    const/4 v4, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v4, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->permissionsLoaded:Z

    .line 32
    iput-boolean v4, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->allowedEditURL:Z

    .line 33
    iput-boolean v4, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->allowedLoadSD:Z

    .line 34
    iput-boolean v4, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->allowedLoadURL:Z

    .line 35
    iput-boolean v4, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->allowedLoadCable:Z

    .line 36
    const-string v1, "http://"

    iput-object v1, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->defaultURL:Ljava/lang/String;

    .line 37
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->expiresAt:J

    .line 40
    new-instance v1, Lcom/sprint/w/installer/dev/SecureSharedPreferences;

    const-string v2, "z1"

    invoke-direct {v1, p1, v2}, Lcom/sprint/w/installer/dev/SecureSharedPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->preferences:Lcom/sprint/w/installer/dev/SecureSharedPreferences;

    .line 42
    iget-object v1, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->preferences:Lcom/sprint/w/installer/dev/SecureSharedPreferences;

    const-string v2, "z2"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sprint/w/installer/dev/SecureSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, permissionsJson:Ljava/lang/String;
    if-eqz v0, :cond_33

    .line 44
    invoke-virtual {p0, v0, v4}, Lcom/sprint/w/installer/dev/DeveloperPermissions;->loadFromJSON(Ljava/lang/String;Z)V

    .line 50
    :goto_2d
    const-string v1, "DeveloperPermissions.Construct"

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/dev/DeveloperPermissions;->toLog(Ljava/lang/String;)V

    .line 51
    return-void

    .line 47
    :cond_33
    iput-boolean v4, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->permissionsLoaded:Z

    .line 48
    sget-object v1, Lcom/sprint/w/installer/dev/DeveloperPermissions;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Permissions MUST HAVE BEEN NULL"

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->i(Ljava/lang/String;)V

    goto :goto_2d
.end method

.method private toJSON()Ljava/lang/String;
    .registers 6

    .prologue
    .line 128
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 130
    .local v1, json:Lorg/json/JSONObject;
    :try_start_5
    const-string v2, "dUrl"

    iget-object v3, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->defaultURL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string v2, "eUrl"

    iget-boolean v3, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->allowedEditURL:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string v2, "lSd"

    iget-boolean v3, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->allowedLoadSD:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v2, "lUrl"

    iget-boolean v3, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->allowedLoadURL:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v2, "lc"

    iget-boolean v3, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->allowedLoadCable:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string v2, "tLive"

    iget-wide v3, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->expiresAt:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_43
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_43} :catch_48

    .line 139
    :goto_43
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 136
    :catch_48
    move-exception v0

    .line 137
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_43
.end method


# virtual methods
.method public getDefaultURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->defaultURL:Ljava/lang/String;

    return-object v0
.end method

.method public isAllowedEditURL()Z
    .registers 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->allowedEditURL:Z

    return v0
.end method

.method public isAllowedLoadCable()Z
    .registers 2

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->allowedLoadCable:Z

    return v0
.end method

.method public isAllowedLoadSD()Z
    .registers 2

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->allowedLoadSD:Z

    return v0
.end method

.method public isAllowedLoadURL()Z
    .registers 2

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->allowedLoadURL:Z

    return v0
.end method

.method public isDeveloperModeEnabled()Z
    .registers 5

    .prologue
    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->expiresAt:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    .line 110
    const/4 v0, 0x1

    .line 118
    :goto_b
    return v0

    .line 115
    :cond_c
    iget-boolean v0, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->permissionsLoaded:Z

    if-eqz v0, :cond_17

    .line 116
    iget-object v0, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->preferences:Lcom/sprint/w/installer/dev/SecureSharedPreferences;

    const-string v1, "z2"

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/dev/SecureSharedPreferences;->remove(Ljava/lang/String;)V

    .line 118
    :cond_17
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public loadFromJSON(Ljava/lang/String;Z)V
    .registers 11
    .parameter "jsonString"
    .parameter "saveToStore"

    .prologue
    .line 144
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 145
    .local v2, json:Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v4

    .line 146
    .local v4, nameArray:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_a0

    .line 147
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, name:Ljava/lang/String;
    const-string v5, "lUrl"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 149
    const-string v5, "lUrl"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->allowedLoadURL:Z

    .line 146
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 150
    :cond_27
    const-string v5, "lSd"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 151
    const-string v5, "lSd"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->allowedLoadSD:Z
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_37} :catch_38

    goto :goto_24

    .line 168
    .end local v1           #i:I
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #nameArray:Lorg/json/JSONArray;
    :catch_38
    move-exception v0

    .line 169
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 171
    .end local v0           #e:Lorg/json/JSONException;
    :goto_3c
    return-void

    .line 152
    .restart local v1       #i:I
    .restart local v2       #json:Lorg/json/JSONObject;
    .restart local v3       #name:Ljava/lang/String;
    .restart local v4       #nameArray:Lorg/json/JSONArray;
    :cond_3d
    :try_start_3d
    const-string v5, "lc"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 153
    const-string v5, "lc"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->allowedLoadCable:Z

    goto :goto_24

    .line 154
    :cond_4e
    const-string v5, "eUrl"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 155
    const-string v5, "eUrl"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->allowedEditURL:Z

    goto :goto_24

    .line 156
    :cond_5f
    const-string v5, "dUrl"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 157
    const-string v5, "dUrl"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->defaultURL:Ljava/lang/String;

    goto :goto_24

    .line 158
    :cond_70
    const-string v5, "tLive"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 159
    const-string v5, "tLive"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->expiresAt:J

    goto :goto_24

    .line 161
    :cond_81
    sget-object v5, Lcom/sprint/w/installer/dev/DeveloperPermissions;->log:Lcom/sprint/id/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "****** UNKNOWN JSON NAME******* "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    goto :goto_24

    .line 164
    .end local v3           #name:Ljava/lang/String;
    :cond_a0
    if-eqz p2, :cond_ad

    .line 165
    iget-object v5, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->preferences:Lcom/sprint/w/installer/dev/SecureSharedPreferences;

    const-string v6, "z2"

    invoke-direct {p0}, Lcom/sprint/w/installer/dev/DeveloperPermissions;->toJSON()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sprint/w/installer/dev/SecureSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_ad
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->permissionsLoaded:Z
    :try_end_b0
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_b0} :catch_38

    goto :goto_3c
.end method

.method public toDebugString()Ljava/lang/String;
    .registers 9

    .prologue
    .line 184
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 185
    .local v6, sb:Ljava/lang/StringBuffer;
    const-string v0, "*Dev_Mode_Enabled="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sprint/w/installer/dev/DeveloperPermissions;->isDeveloperModeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    const-string v0, "*load from URL="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sprint/w/installer/dev/DeveloperPermissions;->isAllowedLoadURL()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    const-string v0, "*edit URL="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sprint/w/installer/dev/DeveloperPermissions;->isAllowedEditURL()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    const-string v0, "*load from SD="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sprint/w/installer/dev/DeveloperPermissions;->isAllowedLoadSD()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    const-string v0, "*load from cable="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sprint/w/installer/dev/DeveloperPermissions;->isAllowedLoadCable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    const-string v0, "*defult URL="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sprint/w/installer/dev/DeveloperPermissions;->getDefaultURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    const-string v0, "*Expires="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-wide v0, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->expiresAt:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toLog(Ljava/lang/String;)V
    .registers 5
    .parameter "logTitle"

    .prologue
    .line 174
    sget-object v0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->log:Lcom/sprint/id/logger/Logger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 175
    sget-object v0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->log:Lcom/sprint/id/logger/Logger;

    const-string v1, "*****************************************"

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 176
    sget-object v0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->log:Lcom/sprint/id/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*     "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 177
    sget-object v0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->log:Lcom/sprint/id/logger/Logger;

    const-string v1, "*****************************************"

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 178
    sget-object v0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->log:Lcom/sprint/id/logger/Logger;

    invoke-virtual {p0}, Lcom/sprint/w/installer/dev/DeveloperPermissions;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 179
    sget-object v0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->log:Lcom/sprint/id/logger/Logger;

    const-string v1, "*****************************************"

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 181
    :cond_3f
    return-void
.end method

.method public toUserFriendlyMsg()Ljava/lang/String;
    .registers 9

    .prologue
    .line 196
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 197
    .local v6, sb:Ljava/lang/StringBuffer;
    const-string v0, "*Expires "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-wide v0, p0, Lcom/sprint/w/installer/dev/DeveloperPermissions;->expiresAt:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    invoke-virtual {p0}, Lcom/sprint/w/installer/dev/DeveloperPermissions;->isAllowedLoadURL()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 199
    const-string v0, "*Loading via URL is ENABLED\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    invoke-virtual {p0}, Lcom/sprint/w/installer/dev/DeveloperPermissions;->isAllowedEditURL()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 201
    const-string v0, "*You may edit the URL value\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    :cond_36
    const-string v0, "*URL="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sprint/w/installer/dev/DeveloperPermissions;->getDefaultURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    :cond_49
    invoke-virtual {p0}, Lcom/sprint/w/installer/dev/DeveloperPermissions;->isAllowedLoadSD()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 206
    const-string v0, "*Loading from SD card is ENABLED\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    :cond_54
    invoke-virtual {p0}, Lcom/sprint/w/installer/dev/DeveloperPermissions;->isAllowedLoadCable()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 209
    const-string v0, "*Loading from cable is ENABLED\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    :cond_5f
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
