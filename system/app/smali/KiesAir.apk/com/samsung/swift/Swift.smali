.class public Lcom/samsung/swift/Swift;
.super Ljava/lang/Object;
.source "Swift.java"


# static fields
.field private static applicationContext:Landroid/content/Context;

.field private static final isEmulator:Z

.field private static isHoloLightThemeNeeded:Ljava/lang/Boolean;

.field private static isJDK6Compat:Ljava/lang/Boolean;

.field private static isMessagingSupported:Ljava/lang/Boolean;

.field private static isTelephonySupported:Ljava/lang/Boolean;

.field private static simState:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 106
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/swift/Swift;->isEmulator:Z

    .line 107
    sput-object v2, Lcom/samsung/swift/Swift;->isTelephonySupported:Ljava/lang/Boolean;

    .line 108
    sput-object v2, Lcom/samsung/swift/Swift;->isMessagingSupported:Ljava/lang/Boolean;

    .line 109
    sput-object v2, Lcom/samsung/swift/Swift;->isHoloLightThemeNeeded:Ljava/lang/Boolean;

    .line 110
    const/4 v0, -0x1

    sput v0, Lcom/samsung/swift/Swift;->simState:I

    .line 111
    sput-object v2, Lcom/samsung/swift/Swift;->isJDK6Compat:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getApplicationContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 257
    const-class v0, Lcom/samsung/swift/Swift;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/swift/Swift;->applicationContext:Landroid/content/Context;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getApplicationName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 115
    const-class v2, Lcom/samsung/swift/Swift;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 116
    .local v0, info:Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v2

    return-object v1

    .line 115
    :catchall_f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getSaleCode()Ljava/lang/String;
    .registers 8

    .prologue
    .line 237
    const/4 v2, 0x0

    .line 240
    .local v2, csc_value:Ljava/lang/String;
    :try_start_1
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 241
    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "get"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 242
    .local v3, get:Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ro.csc.sales_code"

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_26

    .line 248
    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #get:Ljava/lang/reflect/Method;
    :goto_25
    return-object v2

    .line 244
    :catch_26
    move-exception v4

    goto :goto_25
.end method

.method public static getSharedPrefs()Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 337
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 339
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SharedPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 343
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static declared-synchronized getSimState()I
    .registers 3

    .prologue
    .line 164
    const-class v1, Lcom/samsung/swift/Swift;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_10

    .line 166
    const/4 v0, 0x0

    sput v0, Lcom/samsung/swift/Swift;->simState:I

    .line 167
    sget v0, Lcom/samsung/swift/Swift;->simState:I
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_2a

    .line 173
    :goto_e
    monitor-exit v1

    return v0

    .line 170
    :cond_10
    :try_start_10
    sget v0, Lcom/samsung/swift/Swift;->simState:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_27

    .line 171
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    sput v0, Lcom/samsung/swift/Swift;->simState:I

    .line 173
    :cond_27
    sget v0, Lcom/samsung/swift/Swift;->simState:I
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_2a

    goto :goto_e

    .line 164
    :catchall_2a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getString(I)Ljava/lang/CharSequence;
    .registers 2
    .parameter "id"

    .prologue
    .line 325
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 327
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 331
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 357
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_8

    .line 365
    :cond_7
    :goto_7
    return-object v2

    .line 362
    :cond_8
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 363
    .local v1, resources:Landroid/content/res/Resources;
    const-string v3, "string"

    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 364
    .local v0, resid:I
    if-eqz v0, :cond_7

    .line 365
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7
.end method

.method public static isEmulator()Z
    .registers 1

    .prologue
    .line 262
    sget-boolean v0, Lcom/samsung/swift/Swift;->isEmulator:Z

    return v0
.end method

.method public static isHoloLightThemeNeeded()Z
    .registers 12

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 267
    sget-object v8, Lcom/samsung/swift/Swift;->isHoloLightThemeNeeded:Ljava/lang/Boolean;

    if-eqz v8, :cond_d

    .line 268
    sget-object v6, Lcom/samsung/swift/Swift;->isHoloLightThemeNeeded:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 320
    .local v1, id:I
    .local v5, useDeveloperMode:Z
    :goto_c
    return v6

    .line 270
    .end local v1           #id:I
    .end local v5           #useDeveloperMode:Z
    :cond_d
    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, v7}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v8, Lcom/samsung/swift/Swift;->isHoloLightThemeNeeded:Ljava/lang/Boolean;

    .line 272
    const/4 v5, 0x1

    .line 273
    .restart local v5       #useDeveloperMode:Z
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "use_developer_mode"

    const-string v10, "bool"

    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 275
    .restart local v1       #id:I
    if-eqz v1, :cond_3b

    .line 276
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 278
    :cond_3b
    if-eqz v5, :cond_45

    .line 280
    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, v6}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v7, Lcom/samsung/swift/Swift;->isHoloLightThemeNeeded:Ljava/lang/Boolean;

    goto :goto_c

    .line 284
    :cond_45
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xe

    if-ge v8, v9, :cond_5a

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xa

    if-le v8, v9, :cond_5a

    .line 287
    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, v7}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v6, Lcom/samsung/swift/Swift;->isHoloLightThemeNeeded:Ljava/lang/Boolean;

    move v6, v7

    .line 288
    goto :goto_c

    .line 290
    :cond_5a
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-ge v7, v8, :cond_68

    .line 292
    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, v6}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v7, Lcom/samsung/swift/Swift;->isHoloLightThemeNeeded:Ljava/lang/Boolean;

    goto :goto_c

    .line 295
    :cond_68
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0xf

    const/4 v8, 0x4

    if-eq v7, v8, :cond_83

    .line 297
    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, v6}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v7, Lcom/samsung/swift/Swift;->isHoloLightThemeNeeded:Ljava/lang/Boolean;

    goto :goto_c

    .line 302
    :cond_83
    const-string v7, "galaxy_tab_model_p8_ics"

    invoke-static {v7}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 303
    .local v4, s:Ljava/lang/String;
    if-nez v4, :cond_94

    .line 305
    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, v6}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v7, Lcom/samsung/swift/Swift;->isHoloLightThemeNeeded:Ljava/lang/Boolean;

    goto/16 :goto_c

    .line 309
    :cond_94
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 310
    .local v3, model:Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, lm:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9d
    array-length v7, v2

    if-ge v0, v7, :cond_b3

    .line 313
    aget-object v7, v2, v0

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bb

    .line 315
    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, v6}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v7, Lcom/samsung/swift/Swift;->isHoloLightThemeNeeded:Ljava/lang/Boolean;

    .line 320
    :cond_b3
    sget-object v6, Lcom/samsung/swift/Swift;->isHoloLightThemeNeeded:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto/16 :goto_c

    .line 311
    :cond_bb
    add-int/lit8 v0, v0, 0x1

    goto :goto_9d
.end method

.method public static isJDK6Compat()Z
    .registers 8

    .prologue
    const/4 v7, 0x1

    .line 370
    sget-object v5, Lcom/samsung/swift/Swift;->isJDK6Compat:Ljava/lang/Boolean;

    if-nez v5, :cond_33

    .line 372
    const/4 v0, 0x1

    .line 373
    .local v0, jdk6Compat:Z
    const-string v5, "java.vm.version"

    const-string v6, "1.6.0"

    invoke-static {v5, v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 374
    .local v4, ss:Ljava/lang/String;
    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 375
    .local v3, s:[Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x2

    if-le v5, v6, :cond_2c

    .line 379
    const/4 v5, 0x0

    :try_start_19
    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 380
    .local v1, major:I
    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_25} :catch_3a

    move-result v2

    .line 381
    .local v2, minor:I
    if-ne v1, v7, :cond_2c

    const/4 v5, 0x3

    if-gt v2, v5, :cond_2c

    .line 382
    const/4 v0, 0x0

    .line 389
    .end local v1           #major:I
    .end local v2           #minor:I
    :cond_2c
    :goto_2c
    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v0}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v5, Lcom/samsung/swift/Swift;->isJDK6Compat:Ljava/lang/Boolean;

    .line 392
    :cond_33
    sget-object v5, Lcom/samsung/swift/Swift;->isJDK6Compat:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    return v5

    .line 384
    :catch_3a
    move-exception v5

    goto :goto_2c
.end method

.method public static declared-synchronized isMessagingSupported()Z
    .registers 4

    .prologue
    .line 148
    const-class v3, Lcom/samsung/swift/Swift;

    monitor-enter v3

    :try_start_3
    sget-object v2, Lcom/samsung/swift/Swift;->isMessagingSupported:Ljava/lang/Boolean;

    if-nez v2, :cond_1e

    .line 150
    const/4 v0, 0x1

    .line 151
    .local v0, messagingSupported:Z
    invoke-static {}, Lcom/samsung/swift/Swift;->getSaleCode()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, saleCode:Ljava/lang/String;
    if-eqz v1, :cond_17

    .line 154
    const-string v2, "KDI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 155
    const/4 v0, 0x0

    .line 157
    :cond_17
    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v2, Lcom/samsung/swift/Swift;->isMessagingSupported:Ljava/lang/Boolean;

    .line 159
    :cond_1e
    sget-object v2, Lcom/samsung/swift/Swift;->isMessagingSupported:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_26

    move-result v2

    monitor-exit v3

    return v2

    .line 148
    :catchall_26
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static isMountPath(Ljava/lang/String;)Z
    .registers 14
    .parameter "strSDPath"

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 182
    .local v0, blnReturn:Z
    :try_start_1
    new-instance v3, Ljava/io/File;

    const-string v11, "/proc/mounts"

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v3, file:Ljava/io/File;
    const/4 v5, 0x0

    .line 185
    .local v5, reader:Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_14

    .line 186
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #reader:Ljava/io/FileInputStream;
    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 190
    .restart local v5       #reader:Ljava/io/FileInputStream;
    :cond_14
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 192
    .local v1, buffer:Ljava/lang/StringBuffer;
    :goto_19
    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v2

    .line 193
    .local v2, charCount:I
    const/4 v11, -0x1

    if-ne v2, v11, :cond_5c

    .line 199
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, outputText:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 203
    new-instance v9, Ljava/util/StringTokenizer;

    const-string v11, "\n"

    invoke-direct {v9, v4, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .local v9, tokenizer:Ljava/util/StringTokenizer;
    :cond_2e
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_5b

    .line 207
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 208
    .local v7, strLine:Ljava/lang/String;
    new-instance v10, Ljava/util/StringTokenizer;

    const-string v11, " "

    invoke-direct {v10, v7, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .local v10, tokenizerSecond:Ljava/util/StringTokenizer;
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v11

    const/4 v12, 0x4

    if-lt v11, v12, :cond_2e

    .line 212
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 213
    .local v6, strDevice:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 215
    .local v8, strMountPath:Ljava/lang/String;
    invoke-virtual {p0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_5a

    invoke-virtual {p0, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_2e

    .line 217
    :cond_5a
    const/4 v0, 0x1

    .line 230
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .end local v2           #charCount:I
    .end local v3           #file:Ljava/io/File;
    .end local v4           #outputText:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/FileInputStream;
    .end local v6           #strDevice:Ljava/lang/String;
    .end local v7           #strLine:Ljava/lang/String;
    .end local v8           #strMountPath:Ljava/lang/String;
    .end local v9           #tokenizer:Ljava/util/StringTokenizer;
    .end local v10           #tokenizerSecond:Ljava/util/StringTokenizer;
    :cond_5b
    :goto_5b
    return v0

    .line 196
    .restart local v1       #buffer:Ljava/lang/StringBuffer;
    .restart local v2       #charCount:I
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #reader:Ljava/io/FileInputStream;
    :cond_5c
    int-to-char v11, v2

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_60} :catch_61

    goto :goto_19

    .line 223
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .end local v2           #charCount:I
    .end local v3           #file:Ljava/io/File;
    .end local v5           #reader:Ljava/io/FileInputStream;
    :catch_61
    move-exception v11

    goto :goto_5b
.end method

.method public static declared-synchronized isTelephonySupported()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 134
    const-class v2, Lcom/samsung/swift/Swift;

    monitor-enter v2

    :try_start_4
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_32

    move-result-object v0

    if-nez v0, :cond_d

    move v0, v1

    .line 143
    :goto_b
    monitor-exit v2

    return v0

    .line 139
    :cond_d
    :try_start_d
    sget-object v0, Lcom/samsung/swift/Swift;->isTelephonySupported:Ljava/lang/Boolean;

    if-nez v0, :cond_2b

    .line 141
    new-instance v3, Ljava/lang/Boolean;

    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_26

    const/4 v1, 0x1

    :cond_26
    invoke-direct {v3, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v3, Lcom/samsung/swift/Swift;->isTelephonySupported:Ljava/lang/Boolean;

    .line 143
    :cond_2b
    sget-object v0, Lcom/samsung/swift/Swift;->isTelephonySupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_32

    move-result v0

    goto :goto_b

    .line 134
    :catchall_32
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized setApplicationContext(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 125
    const-class v1, Lcom/samsung/swift/Swift;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/samsung/swift/Swift;->applicationContext:Landroid/content/Context;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_c

    if-eqz v0, :cond_9

    .line 130
    :goto_7
    monitor-exit v1

    return-void

    .line 129
    :cond_9
    :try_start_9
    sput-object p0, Lcom/samsung/swift/Swift;->applicationContext:Landroid/content/Context;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_c

    goto :goto_7

    .line 125
    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method
