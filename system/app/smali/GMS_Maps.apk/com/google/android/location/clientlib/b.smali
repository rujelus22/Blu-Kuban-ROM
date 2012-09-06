.class public Lcom/google/android/location/clientlib/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Intent;)Lcom/google/android/location/clientlib/c;
    .registers 12
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 151
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .line 153
    if-nez v1, :cond_e

    .line 206
    :goto_d
    return-object v3

    .line 157
    :cond_e
    const-string v0, "com.google.android.location.internal.EXTRA_RELEASE_VERSION"

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 165
    invoke-virtual {v1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 167
    if-eqz v7, :cond_ac

    .line 168
    const-string v0, "levelId"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 169
    const-string v0, "levelId"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_29
    const-string v4, "levelNumberE3"

    invoke-virtual {v7, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a7

    .line 173
    const-string v4, "levelNumberE3"

    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 177
    :goto_3b
    const-string v5, "travelState"

    invoke-virtual {v7, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a5

    .line 178
    const-string v5, "travelState"

    invoke-virtual {v7, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 182
    const-string v6, "stationary"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_86

    .line 183
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 190
    :goto_55
    const-string v6, "networkLocationType"

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a3

    .line 191
    const-string v6, "networkLocationType"

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 193
    const-string v8, "cell"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_93

    .line 194
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 201
    :goto_6f
    const-string v8, "dbgProtoBuf"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a0

    .line 202
    const-string v3, "dbgProtoBuf"

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    move-object v7, v3

    move-object v3, v0

    .line 206
    :goto_7f
    new-instance v0, Lcom/google/android/location/clientlib/c;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/location/clientlib/c;-><init>(Landroid/location/Location;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;[B)V

    move-object v3, v0

    goto :goto_d

    .line 184
    :cond_86
    const-string v6, "moving"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a5

    .line 185
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_55

    .line 195
    :cond_93
    const-string v8, "wifi"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a3

    .line 196
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_6f

    :cond_a0
    move-object v7, v3

    move-object v3, v0

    goto :goto_7f

    :cond_a3
    move-object v6, v3

    goto :goto_6f

    :cond_a5
    move-object v5, v3

    goto :goto_55

    :cond_a7
    move-object v4, v3

    goto :goto_3b

    :cond_a9
    move-object v0, v3

    goto/16 :goto_29

    :cond_ac
    move-object v7, v3

    move-object v6, v3

    move-object v5, v3

    move-object v4, v3

    goto :goto_7f
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 4
    .parameter

    .prologue
    .line 109
    invoke-static {p0}, Lcom/google/android/location/clientlib/b;->c(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1c

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network_location_opt_in"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "network_location_opt_in"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_f

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static c(Landroid/content/Context;)I
    .registers 2
    .parameter

    .prologue
    .line 140
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 142
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    shr-int/lit8 v0, v0, 0x4

    return v0
.end method
