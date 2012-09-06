.class public Lcom/intangibleobject/securesettings/library/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/intangibleobject/securesettings/library/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/intangibleobject/securesettings/library/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(IZ)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_e

    move v0, v1

    :cond_6
    :goto_6
    :pswitch_6
    return v0

    :pswitch_7
    move v0, v1

    goto :goto_6

    :pswitch_9
    if-eqz p1, :cond_6

    move v0, v1

    goto :goto_6

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method protected static a(Landroid/content/Context;)Z
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_b
    sget-object v1, Lcom/intangibleobject/securesettings/library/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "System App: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/intangibleobject/securesettings/library/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static a(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 6

    const/4 v2, 0x1

    invoke-static {p0, p2}, Lcom/intangibleobject/securesettings/library/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/intangibleobject/securesettings/library/c;->a(IZ)Z

    move-result v1

    if-eq v0, v1, :cond_13

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    :goto_12
    return v2

    :cond_13
    sget-object v0, Lcom/intangibleobject/securesettings/library/c;->a:Ljava/lang/String;

    const-string v1, "Setting hasn\'t changed"

    invoke-static {v0, v1}, Lcom/intangibleobject/securesettings/library/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)Z
    .registers 12

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "com.intangibleobject.securesettings.plugin.extra.SETTING"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/intangibleobject/securesettings/library/c;->a:Ljava/lang/String;

    const-string v5, "Received - Setting name: %s"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/intangibleobject/securesettings/library/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/intangibleobject/securesettings/library/f;->valueOf(Ljava/lang/String;)Lcom/intangibleobject/securesettings/library/f;

    move-result-object v6

    const-string v0, "com.intangibleobject.securesettings.plugin.extra.TOGGLE"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8a

    move v0, v1

    :goto_25
    const-string v5, "com.intangibleobject.securesettings.plugin.extra.BLURB"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4c

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_96

    :goto_35
    const-string v5, "%s:\n\n%s"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/intangibleobject/securesettings/library/b;->a()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    aput-object v4, v7, v3

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_4c
    invoke-static {}, Lcom/intangibleobject/securesettings/library/c;->a()[I

    move-result-object v4

    invoke-virtual {v6}, Lcom/intangibleobject/securesettings/library/f;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_21a

    :pswitch_59
    sget-object v0, Lcom/intangibleobject/securesettings/library/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unknown Option: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/intangibleobject/securesettings/library/f;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intangibleobject/securesettings/library/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_71
    sget-object v1, Lcom/intangibleobject/securesettings/library/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "Action "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_213

    const-string v0, "Success"

    :goto_7e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/intangibleobject/securesettings/library/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_8a
    const-string v0, "com.intangibleobject.securesettings.plugin.extra.ENABLED"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_94

    move v0, v2

    goto :goto_25

    :cond_94
    move v0, v3

    goto :goto_25

    :cond_96
    move-object v4, v5

    goto :goto_35

    :pswitch_98
    const-string v1, "adb_enabled"

    invoke-static {p0, v1, v0}, Lcom/intangibleobject/securesettings/library/c;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    goto :goto_71

    :pswitch_9f
    invoke-static {p0}, Lcom/intangibleobject/securesettings/library/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_ad

    sget-object v0, Lcom/intangibleobject/securesettings/library/c;->a:Ljava/lang/String;

    const-string v1, "Kill App Option Unavailable!"

    invoke-static {v0, v1}, Lcom/intangibleobject/securesettings/library/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_71

    :cond_ad
    invoke-static {p0, v1, v0}, Lcom/intangibleobject/securesettings/library/c;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    goto :goto_71

    :pswitch_b2
    const-string v1, "com.intangibleobject.securesettings.plugin.extra.OWNER_INFO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "lock_screen_owner_info_enabled"

    invoke-static {p0, v4}, Lcom/intangibleobject/securesettings/library/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-static {v0, v5}, Lcom/intangibleobject/securesettings/library/c;->a(IZ)Z

    move-result v6

    if-eqz v6, :cond_217

    if-eqz v1, :cond_217

    sget-object v0, Lcom/intangibleobject/securesettings/library/f;->i:Lcom/intangibleobject/securesettings/library/f;

    invoke-virtual {v0}, Lcom/intangibleobject/securesettings/library/f;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/intangibleobject/securesettings/library/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_d0
    if-eq v5, v6, :cond_de

    if-eqz v0, :cond_dc

    invoke-static {p0, v4, v6}, Lcom/intangibleobject/securesettings/library/a/b;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_dc

    :goto_da
    move v2, v3

    goto :goto_71

    :cond_dc
    move v3, v2

    goto :goto_da

    :cond_de
    sget-object v0, Lcom/intangibleobject/securesettings/library/c;->a:Ljava/lang/String;

    const-string v1, "Setting hasn\'t changed"

    invoke-static {v0, v1}, Lcom/intangibleobject/securesettings/library/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_da

    :pswitch_e6
    const-string v1, "com.intangibleobject.securesettings.plugin.extra.WAIT_UNLOCK"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "lock_pattern_autolock"

    invoke-static {p0, v2}, Lcom/intangibleobject/securesettings/library/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    invoke-static {v0, v4}, Lcom/intangibleobject/securesettings/library/c;->a(IZ)Z

    move-result v0

    if-eq v4, v0, :cond_116

    if-eqz v1, :cond_107

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/intangibleobject/securesettings/library/UnlockPatternService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_104
    move v2, v3

    goto/16 :goto_71

    :cond_107
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/intangibleobject/securesettings/library/UnlockPatternService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    invoke-static {p0, v2, v0}, Lcom/intangibleobject/securesettings/library/a/b;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_104

    :cond_116
    sget-object v0, Lcom/intangibleobject/securesettings/library/c;->a:Ljava/lang/String;

    const-string v1, "Setting hasn\'t changed"

    invoke-static {v0, v1}, Lcom/intangibleobject/securesettings/library/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_104

    :pswitch_11e
    const-string v0, "com.intangibleobject.securesettings.plugin.extra.INPUT_METHOD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "default_input_method"

    sget-object v5, Lcom/intangibleobject/securesettings/library/c;->a:Ljava/lang/String;

    const-string v6, "Request to change Keyboard to: %s"

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v0, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/intangibleobject/securesettings/library/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "enabled_input_methods"

    invoke-static {p0, v5}, Lcom/intangibleobject/securesettings/library/a/b;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/intangibleobject/securesettings/library/c;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Enabled input methods: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/intangibleobject/securesettings/library/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v4}, Lcom/intangibleobject/securesettings/library/a/b;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/intangibleobject/securesettings/library/c;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Current input method: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/intangibleobject/securesettings/library/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1ab

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_180

    :cond_17d
    :goto_17d
    move v2, v3

    goto/16 :goto_71

    :cond_180
    sget-object v5, Lcom/intangibleobject/securesettings/library/c;->a:Ljava/lang/String;

    const-string v6, "Setting input method to %s - Success: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {p0, v4, v0}, Lcom/intangibleobject/securesettings/library/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/intangibleobject/securesettings/library/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v4}, Lcom/intangibleobject/securesettings/library/a/b;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17d

    sget-object v0, Lcom/intangibleobject/securesettings/library/c;->a:Ljava/lang/String;

    const-string v1, "Unable to set input method!"

    invoke-static {v0, v1}, Lcom/intangibleobject/securesettings/library/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17d

    :cond_1ab
    const-string v0, "Input Method selected is no longer available!"

    invoke-static {p0, v0}, Lcom/intangibleobject/securesettings/library/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/intangibleobject/securesettings/library/c;->a:Ljava/lang/String;

    const-string v1, "INPUT METHOD SELECTED IS NOT AVAILABLE!"

    invoke-static {v0, v1}, Lcom/intangibleobject/securesettings/library/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    goto :goto_17d

    :pswitch_1b9
    const-string v1, "gps"

    invoke-static {p0, v0, v1}, Lcom/intangibleobject/securesettings/library/c;->a(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2

    goto/16 :goto_71

    :pswitch_1c1
    const-string v1, "network"

    invoke-static {p0, v0, v1}, Lcom/intangibleobject/securesettings/library/c;->a(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2

    goto/16 :goto_71

    :pswitch_1c9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "android.hardware.nfc"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1e6

    sget-object v0, Lcom/intangibleobject/securesettings/library/c;->a:Ljava/lang/String;

    const-string v1, "Device doesn\'t have an NFC Adapter!"

    invoke-static {v0, v1}, Lcom/intangibleobject/securesettings/library/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_71

    :cond_1e6
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-nez v1, :cond_1f5

    sget-object v0, Lcom/intangibleobject/securesettings/library/c;->a:Ljava/lang/String;

    const-string v1, "Unable to access NFC Adapter!"

    invoke-static {v0, v1}, Lcom/intangibleobject/securesettings/library/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_71

    :cond_1f5
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/intangibleobject/securesettings/library/c;->a(IZ)Z

    move-result v0

    if-eq v1, v0, :cond_209

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intangibleobject/securesettings/library/a/b;->a(Landroid/content/Context;Ljava/lang/Boolean;)Z

    move-result v2

    goto/16 :goto_71

    :cond_209
    sget-object v0, Lcom/intangibleobject/securesettings/library/c;->a:Ljava/lang/String;

    const-string v1, "Setting hasn\'t changed"

    invoke-static {v0, v1}, Lcom/intangibleobject/securesettings/library/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    goto/16 :goto_71

    :cond_213
    const-string v0, "Failed"

    goto/16 :goto_7e

    :cond_217
    move v0, v3

    goto/16 :goto_d0

    :pswitch_data_21a
    .packed-switch 0x1
        :pswitch_98
        :pswitch_59
        :pswitch_11e
        :pswitch_59
        :pswitch_1b9
        :pswitch_59
        :pswitch_9f
        :pswitch_e6
        :pswitch_b2
        :pswitch_59
        :pswitch_1c9
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_1c1
    .end packed-switch
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 5

    invoke-static {p0, p1}, Lcom/intangibleobject/securesettings/library/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {p2, v0}, Lcom/intangibleobject/securesettings/library/c;->a(IZ)Z

    move-result v1

    if-eq v0, v1, :cond_f

    invoke-static {p0, p1, v1}, Lcom/intangibleobject/securesettings/library/a/b;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    sget-object v0, Lcom/intangibleobject/securesettings/library/c;->a:Ljava/lang/String;

    const-string v1, "Setting hasn\'t changed"

    invoke-static {v0, v1}, Lcom/intangibleobject/securesettings/library/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_e
.end method

.method private static synthetic a()[I
    .registers 3

    sget-object v0, Lcom/intangibleobject/securesettings/library/c;->b:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/intangibleobject/securesettings/library/f;->values()[Lcom/intangibleobject/securesettings/library/f;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/intangibleobject/securesettings/library/f;->a:Lcom/intangibleobject/securesettings/library/f;

    invoke-virtual {v1}, Lcom/intangibleobject/securesettings/library/f;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_f2

    :goto_15
    :try_start_15
    sget-object v1, Lcom/intangibleobject/securesettings/library/f;->b:Lcom/intangibleobject/securesettings/library/f;

    invoke-virtual {v1}, Lcom/intangibleobject/securesettings/library/f;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_ef

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/intangibleobject/securesettings/library/f;->c:Lcom/intangibleobject/securesettings/library/f;

    invoke-virtual {v1}, Lcom/intangibleobject/securesettings/library/f;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_ec

    :goto_27
    :try_start_27
    sget-object v1, Lcom/intangibleobject/securesettings/library/f;->d:Lcom/intangibleobject/securesettings/library/f;

    invoke-virtual {v1}, Lcom/intangibleobject/securesettings/library/f;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_e9

    :goto_30
    :try_start_30
    sget-object v1, Lcom/intangibleobject/securesettings/library/f;->e:Lcom/intangibleobject/securesettings/library/f;

    invoke-virtual {v1}, Lcom/intangibleobject/securesettings/library/f;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_e6

    :goto_39
    :try_start_39
    sget-object v1, Lcom/intangibleobject/securesettings/library/f;->f:Lcom/intangibleobject/securesettings/library/f;

    invoke-virtual {v1}, Lcom/intangibleobject/securesettings/library/f;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_42} :catch_e3

    :goto_42
    :try_start_42
    sget-object v1, Lcom/intangibleobject/securesettings/library/f;->g:Lcom/intangibleobject/securesettings/library/f;

    invoke-virtual {v1}, Lcom/intangibleobject/securesettings/library/f;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_4b} :catch_e0

    :goto_4b
    :try_start_4b
    sget-object v1, Lcom/intangibleobject/securesettings/library/f;->h:Lcom/intangibleobject/securesettings/library/f;

    invoke-virtual {v1}, Lcom/intangibleobject/securesettings/library/f;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_55} :catch_dd

    :goto_55
    :try_start_55
    sget-object v1, Lcom/intangibleobject/securesettings/library/f;->i:Lcom/intangibleobject/securesettings/library/f;

    invoke-virtual {v1}, Lcom/intangibleobject/securesettings/library/f;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_5f} :catch_db

    :goto_5f
    :try_start_5f
    sget-object v1, Lcom/intangibleobject/securesettings/library/f;->j:Lcom/intangibleobject/securesettings/library/f;

    invoke-virtual {v1}, Lcom/intangibleobject/securesettings/library/f;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_69} :catch_d9

    :goto_69
    :try_start_69
    sget-object v1, Lcom/intangibleobject/securesettings/library/f;->k:Lcom/intangibleobject/securesettings/library/f;

    invoke-virtual {v1}, Lcom/intangibleobject/securesettings/library/f;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_73} :catch_d7

    :goto_73
    :try_start_73
    sget-object v1, Lcom/intangibleobject/securesettings/library/f;->l:Lcom/intangibleobject/securesettings/library/f;

    invoke-virtual {v1}, Lcom/intangibleobject/securesettings/library/f;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_7d} :catch_d5

    :goto_7d
    :try_start_7d
    sget-object v1, Lcom/intangibleobject/securesettings/library/f;->m:Lcom/intangibleobject/securesettings/library/f;

    invoke-virtual {v1}, Lcom/intangibleobject/securesettings/library/f;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d .. :try_end_87} :catch_d3

    :goto_87
    :try_start_87
    sget-object v1, Lcom/intangibleobject/securesettings/library/f;->n:Lcom/intangibleobject/securesettings/library/f;

    invoke-virtual {v1}, Lcom/intangibleobject/securesettings/library/f;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_91
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_91} :catch_d1

    :goto_91
    :try_start_91
    sget-object v1, Lcom/intangibleobject/securesettings/library/f;->o:Lcom/intangibleobject/securesettings/library/f;

    invoke-virtual {v1}, Lcom/intangibleobject/securesettings/library/f;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_9b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_91 .. :try_end_9b} :catch_cf

    :goto_9b
    :try_start_9b
    sget-object v1, Lcom/intangibleobject/securesettings/library/f;->p:Lcom/intangibleobject/securesettings/library/f;

    invoke-virtual {v1}, Lcom/intangibleobject/securesettings/library/f;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9b .. :try_end_a5} :catch_cd

    :goto_a5
    :try_start_a5
    sget-object v1, Lcom/intangibleobject/securesettings/library/f;->q:Lcom/intangibleobject/securesettings/library/f;

    invoke-virtual {v1}, Lcom/intangibleobject/securesettings/library/f;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a5 .. :try_end_af} :catch_cb

    :goto_af
    :try_start_af
    sget-object v1, Lcom/intangibleobject/securesettings/library/f;->r:Lcom/intangibleobject/securesettings/library/f;

    invoke-virtual {v1}, Lcom/intangibleobject/securesettings/library/f;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_af .. :try_end_b9} :catch_c9

    :goto_b9
    :try_start_b9
    sget-object v1, Lcom/intangibleobject/securesettings/library/f;->s:Lcom/intangibleobject/securesettings/library/f;

    invoke-virtual {v1}, Lcom/intangibleobject/securesettings/library/f;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_c3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b9 .. :try_end_c3} :catch_c7

    :goto_c3
    sput-object v0, Lcom/intangibleobject/securesettings/library/c;->b:[I

    goto/16 :goto_4

    :catch_c7
    move-exception v1

    goto :goto_c3

    :catch_c9
    move-exception v1

    goto :goto_b9

    :catch_cb
    move-exception v1

    goto :goto_af

    :catch_cd
    move-exception v1

    goto :goto_a5

    :catch_cf
    move-exception v1

    goto :goto_9b

    :catch_d1
    move-exception v1

    goto :goto_91

    :catch_d3
    move-exception v1

    goto :goto_87

    :catch_d5
    move-exception v1

    goto :goto_7d

    :catch_d7
    move-exception v1

    goto :goto_73

    :catch_d9
    move-exception v1

    goto :goto_69

    :catch_db
    move-exception v1

    goto :goto_5f

    :catch_dd
    move-exception v1

    goto/16 :goto_55

    :catch_e0
    move-exception v1

    goto/16 :goto_4b

    :catch_e3
    move-exception v1

    goto/16 :goto_42

    :catch_e6
    move-exception v1

    goto/16 :goto_39

    :catch_e9
    move-exception v1

    goto/16 :goto_30

    :catch_ec
    move-exception v1

    goto/16 :goto_27

    :catch_ef
    move-exception v1

    goto/16 :goto_1e

    :catch_f2
    move-exception v1

    goto/16 :goto_15
.end method
