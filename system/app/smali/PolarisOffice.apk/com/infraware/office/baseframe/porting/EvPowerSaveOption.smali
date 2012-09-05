.class public Lcom/infraware/office/baseframe/porting/EvPowerSaveOption;
.super Ljava/lang/Object;
.source "EvPowerSaveOption.java"


# static fields
.field static final KEY_MAXIMUM_POWER_SAVING_MODE:Ljava/lang/String; = "maximum_power_saving"

.field static final TAG:Ljava/lang/String; = "EvPowerSaveOption"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public setPowerRestoreOnPause(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    .line 49
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v4, "4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 52
    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "maximum_power_saving"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_38

    move-result v2

    .line 54
    .local v2, power_mode:I
    if-nez v2, :cond_2e

    .line 56
    :try_start_17
    const-string v3, "PolarisOffice"

    const-string v4, "setPowerSaveFPS (false)"

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.intent.action.SURFSETPROP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "enable"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2e} :catch_2f

    .line 69
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #power_mode:I
    :cond_2e
    :goto_2e
    return-void

    .line 61
    .restart local v2       #power_mode:I
    :catch_2f
    move-exception v0

    .line 62
    .local v0, e:Ljava/lang/Exception;
    :try_start_30
    const-string v3, "PolarisOffice"

    const-string v4, "setPowerSaveFPS (false) exception"

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_37} :catch_38

    goto :goto_2e

    .line 65
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #power_mode:I
    :catch_38
    move-exception v0

    .line 66
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "EvPowerSaveOption"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e
.end method

.method public setPowerSaveOnResume(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    .line 21
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v4, "4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 24
    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "maximum_power_saving"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_55

    move-result v2

    .line 25
    .local v2, power_mode:I
    if-nez v2, :cond_2e

    .line 27
    :try_start_17
    const-string v3, "PolarisOffice"

    const-string v4, "setPowerSaveFPS (true)"

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.intent.action.SURFSETPROP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "enable"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 30
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2e} :catch_4c

    .line 37
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2e
    :goto_2e
    :try_start_2e
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "maximum_power_saving"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 38
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .end local v2           #power_mode:I
    :cond_4b
    :goto_4b
    return-void

    .line 32
    .restart local v2       #power_mode:I
    :catch_4c
    move-exception v0

    .line 33
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "PolarisOffice"

    const-string v4, "setPowerSaveFPS (true) exception"

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_54} :catch_55

    goto :goto_2e

    .line 39
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #power_mode:I
    :catch_55
    move-exception v0

    .line 40
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "EvPowerSaveOption"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b
.end method
