.class public Lcom/intangibleobject/securesettings/library/a/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/intangibleobject/securesettings/library/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/intangibleobject/securesettings/library/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/intangibleobject/securesettings/library/f;->g:Lcom/intangibleobject/securesettings/library/f;

    invoke-virtual {v0}, Lcom/intangibleobject/securesettings/library/f;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intangibleobject/securesettings/library/a/b;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    sget-object v1, Lcom/intangibleobject/securesettings/library/a/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Kill App Option found:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/intangibleobject/securesettings/library/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_20
    return-object v0

    :cond_21
    const-string v0, "kill_app_on_longpress_back"

    invoke-static {p0, v0}, Lcom/intangibleobject/securesettings/library/a/b;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    sget-object v1, Lcom/intangibleobject/securesettings/library/a/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Kill App Option found:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/intangibleobject/securesettings/library/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    :cond_3e
    sget-object v0, Lcom/intangibleobject/securesettings/library/a/b;->a:Ljava/lang/String;

    const-string v1, "Kill App Option not found"

    invoke-static {v0, v1}, Lcom/intangibleobject/securesettings/library/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_20
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Boolean;)Z
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/intangibleobject/securesettings/library/b;->d()Z

    move-result v1

    if-nez v1, :cond_f

    sget-object v1, Lcom/intangibleobject/securesettings/library/a/b;->a:Ljava/lang/String;

    const-string v2, "Not performing action since app is not a System App!"

    invoke-static {v1, v2}, Lcom/intangibleobject/securesettings/library/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_e
    return v0

    :cond_f
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    if-eqz v2, :cond_ae

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5b

    const-string v1, "enable"

    :goto_21
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_2e} :catch_7c
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_2e} :catch_a2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_2e} :catch_b7
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_2e} :catch_bd
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_2e} :catch_c3

    const-wide/16 v3, 0x7d0

    :try_start_30
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_84
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_33} :catch_5e

    :try_start_33
    sget-object v3, Lcom/intangibleobject/securesettings/library/a/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "NFC Toggled - New State: "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_ab

    const-string v1, "Enabled"

    :goto_44
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/intangibleobject/securesettings/library/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4f
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v2

    if-ne v1, v2, :cond_e

    const/4 v0, 0x1

    goto :goto_e

    :cond_5b
    const-string v1, "disable"

    goto :goto_21

    :catch_5e
    move-exception v1

    sget-object v3, Lcom/intangibleobject/securesettings/library/a/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "NFC Toggled - New State: "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_81

    const-string v1, "Enabled"

    :goto_70
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/intangibleobject/securesettings/library/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_33 .. :try_end_7b} :catch_7c
    .catch Ljava/lang/SecurityException; {:try_start_33 .. :try_end_7b} :catch_a2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_33 .. :try_end_7b} :catch_b7
    .catch Ljava/lang/IllegalAccessException; {:try_start_33 .. :try_end_7b} :catch_bd
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_33 .. :try_end_7b} :catch_c3

    goto :goto_4f

    :catch_7c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_e

    :cond_81
    :try_start_81
    const-string v1, "Disabled"

    goto :goto_70

    :catchall_84
    move-exception v3

    sget-object v4, Lcom/intangibleobject/securesettings/library/a/b;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v1, "NFC Toggled - New State: "

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_a8

    const-string v1, "Enabled"

    :goto_96
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/intangibleobject/securesettings/library/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
    :try_end_a2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_81 .. :try_end_a2} :catch_7c
    .catch Ljava/lang/SecurityException; {:try_start_81 .. :try_end_a2} :catch_a2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_81 .. :try_end_a2} :catch_b7
    .catch Ljava/lang/IllegalAccessException; {:try_start_81 .. :try_end_a2} :catch_bd
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_81 .. :try_end_a2} :catch_c3

    :catch_a2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto/16 :goto_e

    :cond_a8
    :try_start_a8
    const-string v1, "Disabled"

    goto :goto_96

    :cond_ab
    const-string v1, "Disabled"

    goto :goto_44

    :cond_ae
    sget-object v1, Lcom/intangibleobject/securesettings/library/a/b;->a:Ljava/lang/String;

    const-string v2, "Device does not have an NFC Adapter"

    invoke-static {v1, v2}, Lcom/intangibleobject/securesettings/library/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a8 .. :try_end_b5} :catch_7c
    .catch Ljava/lang/SecurityException; {:try_start_a8 .. :try_end_b5} :catch_a2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a8 .. :try_end_b5} :catch_b7
    .catch Ljava/lang/IllegalAccessException; {:try_start_a8 .. :try_end_b5} :catch_bd
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a8 .. :try_end_b5} :catch_c3

    goto/16 :goto_e

    :catch_b7
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_e

    :catch_bd
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_e

    :catch_c3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_e
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_24

    move v0, v1

    :goto_d
    sget-object v3, Lcom/intangibleobject/securesettings/library/a/b;->a:Ljava/lang/String;

    const-string v4, "Got boolean Setting %s: %s "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/intangibleobject/securesettings/library/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_24
    move v0, v2

    goto :goto_d
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/intangibleobject/securesettings/library/b;->d()Z

    move-result v1

    if-nez v1, :cond_f

    sget-object v1, Lcom/intangibleobject/securesettings/library/a/b;->a:Ljava/lang/String;

    const-string v2, "Not performing action since app is not a System App!"

    invoke-static {v1, v2}, Lcom/intangibleobject/securesettings/library/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sget-object v2, Lcom/intangibleobject/securesettings/library/a/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " Set to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0, p1}, Lcom/intangibleobject/securesettings/library/a/b;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/intangibleobject/securesettings/library/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_37} :catch_39

    move v0, v1

    goto :goto_e

    :catch_39
    move-exception v1

    sget-object v2, Lcom/intangibleobject/securesettings/library/a/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " setting was unsuccessful. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/intangibleobject/securesettings/library/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 8

    const/4 v0, 0x0

    invoke-static {}, Lcom/intangibleobject/securesettings/library/b;->d()Z

    move-result v1

    if-nez v1, :cond_f

    sget-object v1, Lcom/intangibleobject/securesettings/library/a/b;->a:Ljava/lang/String;

    const-string v2, "Not performing action since app is not a System App!"

    invoke-static {v1, v2}, Lcom/intangibleobject/securesettings/library/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    return v0

    :cond_f
    :try_start_f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz p2, :cond_3b

    const/4 v1, 0x1

    :goto_16
    invoke-static {v2, p1, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_7f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_19} :catch_3d

    move-result v0

    sget-object v1, Lcom/intangibleobject/securesettings/library/a/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " Enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, p1}, Lcom/intangibleobject/securesettings/library/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/intangibleobject/securesettings/library/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_3b
    move v1, v0

    goto :goto_16

    :catch_3d
    move-exception v1

    :try_start_3e
    sget-object v2, Lcom/intangibleobject/securesettings/library/a/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " setting was unsuccessful. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/intangibleobject/securesettings/library/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_3e .. :try_end_5e} :catchall_7f

    sget-object v1, Lcom/intangibleobject/securesettings/library/a/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " Enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, p1}, Lcom/intangibleobject/securesettings/library/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/intangibleobject/securesettings/library/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :catchall_7f
    move-exception v0

    sget-object v1, Lcom/intangibleobject/securesettings/library/a/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " Enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, p1}, Lcom/intangibleobject/securesettings/library/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/intangibleobject/securesettings/library/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    sget-object v0, Lcom/intangibleobject/securesettings/library/a/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown Provider: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intangibleobject/securesettings/library/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_25
    return v0

    :cond_26
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    sget-object v2, Lcom/intangibleobject/securesettings/library/a/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " State: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_50

    const-string v0, "Enabled"

    :goto_43
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/intangibleobject/securesettings/library/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_25

    :cond_50
    const-string v0, "Disabled"

    goto :goto_43
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/intangibleobject/securesettings/library/a/b;->a:Ljava/lang/String;

    const-string v2, "Got String Setting %s: %s "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/intangibleobject/securesettings/library/d;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    :goto_1c
    return-object v0

    :catch_1d
    move-exception v0

    sget-object v0, Lcom/intangibleobject/securesettings/library/a/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fetching "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was unsuccessful"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intangibleobject/securesettings/library/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_25

    move v0, v1

    :goto_e
    sget-object v3, Lcom/intangibleobject/securesettings/library/a/b;->a:Ljava/lang/String;

    const-string v4, "System Setting %s Exists: %s "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/intangibleobject/securesettings/library/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_25
    move v0, v2

    goto :goto_e
.end method
