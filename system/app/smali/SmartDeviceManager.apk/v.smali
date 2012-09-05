.class public final Lv;
.super Ljava/lang/Object;
.source "a"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SLOT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ldc;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handling control message code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ldc;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    .line 20
    invoke-interface {p1}, Ldc;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2c

    .line 76
    :cond_2b
    :goto_2b
    return-void

    .line 24
    :cond_2c
    invoke-static {p0, p1}, Lv;->b(Landroid/content/Context;Ldc;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 29
    invoke-interface {p1}, Ldc;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 30
    invoke-static {p0}, Lal;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-interface {p1}, Ldc;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/locationlabs/v3client/ClaimNumberService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    :goto_49
    move v0, v6

    .line 71
    :goto_4a
    if-eqz v0, :cond_157

    .line 72
    const-string v0, "SMS_HANDLER"

    invoke-virtual {p0, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "NEXT_SLOT"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "NEXT_SLOT"

    add-int/lit8 v3, v1, 0x1

    rem-int/lit8 v3, v3, 0xa

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {v1}, Lv;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ldc;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ldc;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2b

    .line 33
    :cond_89
    invoke-interface {p1}, Ldc;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 36
    invoke-interface {p1}, Ldc;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v5

    aget-object v0, v0, v6

    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v2

    invoke-interface {v2}, Lw;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b8

    invoke-interface {v2}, Lw;->h()Z

    move-result v4

    if-nez v4, :cond_cd

    :cond_b8
    invoke-interface {v2, v1}, Lw;->a(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/locationlabs/v3client/ClaimNumberService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_cd

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cd

    const/4 v0, 0x0

    invoke-static {p0, v0}, Laf;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/locationlabs/v3client/AccountService;->b(Landroid/content/Context;)V

    :cond_cd
    move v0, v6

    .line 37
    goto/16 :goto_4a

    .line 38
    :cond_d0
    invoke-interface {p1}, Ldc;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.v3client.action.SEND_DEBUG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_49

    .line 42
    :cond_e8
    invoke-interface {p1}, Ldc;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 44
    invoke-static {p0}, Lcom/locationlabs/v3client/LocationService;->a(Landroid/content/Context;)V

    goto/16 :goto_49

    .line 46
    :cond_f9
    invoke-interface {p1}, Ldc;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_121

    .line 48
    invoke-interface {p1}, Ldc;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11d

    invoke-interface {p1}, Ldc;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 49
    invoke-static {p0}, Lcom/locationlabs/v3client/LocationService;->b(Landroid/content/Context;)V

    :goto_11a
    move v0, v6

    .line 53
    goto/16 :goto_4a

    .line 51
    :cond_11d
    invoke-static {p0, v6}, Lcom/locationlabs/v3client/LocationService;->a(Landroid/content/Context;Z)V

    goto :goto_11a

    .line 54
    :cond_121
    invoke-interface {p1}, Ldc;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_179

    .line 56
    invoke-interface {p1}, Ldc;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_179

    .line 57
    invoke-interface {p1}, Ldc;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 58
    array-length v1, v0

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_147

    .line 62
    const-string v1, "invalid feature change payload"

    invoke-static {v1}, Li;->d(Ljava/lang/String;)V

    :cond_147
    move v1, v5

    .line 65
    :goto_148
    array-length v2, v0

    if-ge v1, v2, :cond_49

    .line 66
    aget-object v2, v0, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v3, v0, v3

    invoke-static {p0, v2, v3}, Lcom/locationlabs/v3client/FeatureService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    add-int/lit8 v1, v1, 0x2

    goto :goto_148

    .line 74
    :cond_157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown control code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ldc;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " will ignore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    goto/16 :goto_2b

    :cond_179
    move v0, v5

    goto/16 :goto_4a
.end method

.method private static b(Landroid/content/Context;Ldc;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 116
    const-string v0, "SMS_HANDLER"

    invoke-virtual {p0, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ldc;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ldc;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v2, v5

    .line 118
    :goto_21
    const/16 v3, 0xa

    if-ge v2, v3, :cond_39

    .line 119
    invoke-static {v2}, Lv;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 120
    const/4 v0, 0x1

    .line 123
    :goto_35
    return v0

    .line 118
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_39
    move v0, v5

    .line 123
    goto :goto_35
.end method
