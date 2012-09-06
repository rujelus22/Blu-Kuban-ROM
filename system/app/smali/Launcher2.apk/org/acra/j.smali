.class final Lorg/acra/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 38
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "system_app_anr"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "system_app_wtf"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "system_app_crash"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "system_server_anr"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "system_server_wtf"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "system_server_crash"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BATTERY_DISCHARGE_INFO"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SYSTEM_RECOVERY_LOG"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SYSTEM_BOOT"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SYSTEM_LAST_KMSG"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "APANIC_CONSOLE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "APANIC_THREADS"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SYSTEM_RESTART"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "SYSTEM_TOMBSTONE"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "data_app_strictmode"

    aput-object v2, v0, v1

    sput-object v0, Lorg/acra/j;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .registers 20
    .parameter
    .parameter

    .prologue
    .line 56
    :try_start_0
    const-class v1, Landroid/content/Context;

    const-string v2, "DROPBOX_SERVICE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_143

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 57
    :goto_11
    if-eqz v1, :cond_155

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 60
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getNextEntry"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v3, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 61
    if-eqz v6, :cond_17c

    .line 62
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 63
    invoke-virtual {v7}, Landroid/text/format/Time;->setToNow()V

    .line 64
    iget v1, v7, Landroid/text/format/Time;->minute:I

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/a/a;

    move-result-object v2

    invoke-interface {v2}, Lorg/acra/a/a;->s()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v7, Landroid/text/format/Time;->minute:I

    .line 65
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 66
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 68
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/a/a;

    move-result-object v1

    invoke-interface {v1}, Lorg/acra/a/a;->q()Z

    move-result v1

    if-eqz v1, :cond_146

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lorg/acra/j;->a:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 73
    :goto_6a
    if-eqz p1, :cond_78

    move-object/from16 v0, p1

    array-length v2, v0

    if-lez v2, :cond_78

    .line 74
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 78
    :cond_78
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_177

    .line 79
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_82
    :goto_82
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 81
    const-string v1, "Tag: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v3, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v1, v3

    invoke-virtual {v6, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_167

    .line 84
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v11, "getText"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    invoke-virtual {v3, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 85
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v12, "getTimeMillis"

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 86
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v13, "close"

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    move-object v3, v1

    .line 87
    :goto_db
    if-eqz v3, :cond_82

    .line 88
    const/4 v1, 0x0

    invoke-virtual {v12, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 89
    invoke-virtual {v7, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 90
    const-string v1, "@"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1f4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v1, v16

    invoke-virtual {v11, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    if-eqz v1, :cond_158

    .line 93
    const-string v16, "Text: "

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    :goto_12c
    const/4 v1, 0x0

    invoke-virtual {v13, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v3, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v1, v3

    invoke-virtual {v6, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    goto :goto_db

    .line 56
    :cond_143
    const/4 v1, 0x0

    goto/16 :goto_11

    .line 71
    :cond_146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_14b
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_14b} :catch_14d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_14b} :catch_15e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_14b} :catch_16e
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_14b} :catch_181
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_14b} :catch_18a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_14b} :catch_193

    goto/16 :goto_6a

    .line 111
    :catch_14d
    move-exception v1

    .line 112
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "DropBoxManager not available."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_155
    :goto_155
    const-string v1, "N/A"

    :goto_157
    return-object v1

    .line 95
    :cond_158
    :try_start_158
    const-string v1, "Not Text!\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_15d
    .catch Ljava/lang/SecurityException; {:try_start_158 .. :try_end_15d} :catch_14d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_158 .. :try_end_15d} :catch_15e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_158 .. :try_end_15d} :catch_16e
    .catch Ljava/lang/IllegalAccessException; {:try_start_158 .. :try_end_15d} :catch_181
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_158 .. :try_end_15d} :catch_18a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_158 .. :try_end_15d} :catch_193

    goto :goto_12c

    .line 113
    :catch_15e
    move-exception v1

    .line 114
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "DropBoxManager not available."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_155

    .line 101
    :cond_167
    :try_start_167
    const-string v1, "Nothing.\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_16c
    .catch Ljava/lang/SecurityException; {:try_start_167 .. :try_end_16c} :catch_14d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_167 .. :try_end_16c} :catch_15e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_167 .. :try_end_16c} :catch_16e
    .catch Ljava/lang/IllegalAccessException; {:try_start_167 .. :try_end_16c} :catch_181
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_167 .. :try_end_16c} :catch_18a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_167 .. :try_end_16c} :catch_193

    goto/16 :goto_82

    .line 115
    :catch_16e
    move-exception v1

    .line 116
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "DropBoxManager not available."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_155

    .line 106
    :cond_177
    :try_start_177
    const-string v1, "No tag configured for collection."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_17c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_17f
    .catch Ljava/lang/SecurityException; {:try_start_177 .. :try_end_17f} :catch_14d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_177 .. :try_end_17f} :catch_15e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_177 .. :try_end_17f} :catch_16e
    .catch Ljava/lang/IllegalAccessException; {:try_start_177 .. :try_end_17f} :catch_181
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_177 .. :try_end_17f} :catch_18a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_177 .. :try_end_17f} :catch_193

    move-result-object v1

    goto :goto_157

    .line 117
    :catch_181
    move-exception v1

    .line 118
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "DropBoxManager not available."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_155

    .line 119
    :catch_18a
    move-exception v1

    .line 120
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "DropBoxManager not available."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_155

    .line 121
    :catch_193
    move-exception v1

    .line 122
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "DropBoxManager not available."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_155
.end method
