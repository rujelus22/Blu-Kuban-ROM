.class final Lcom/coremobility/app/vnotes/cm;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/cf;


# direct methods
.method synthetic constructor <init>(Lcom/coremobility/app/vnotes/cf;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coremobility/app/vnotes/cm;-><init>(Lcom/coremobility/app/vnotes/cf;B)V

    return-void
.end method

.method private constructor <init>(Lcom/coremobility/app/vnotes/cf;B)V
    .registers 3

    iput-object p1, p0, Lcom/coremobility/app/vnotes/cm;->a:Lcom/coremobility/app/vnotes/cf;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->o()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cm;->a:Lcom/coremobility/app/vnotes/cf;

    new-instance v3, Ljava/util/Timer;

    const-string v4, "NotificationTimerTask"

    invoke-direct {v3, v4, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0, v3}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/app/vnotes/cf;Ljava/util/Timer;)Ljava/util/Timer;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cm;->a:Lcom/coremobility/app/vnotes/cf;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v3}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/app/vnotes/cf;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cm;->a:Lcom/coremobility/app/vnotes/cf;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-static {v0, v3}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/app/vnotes/cf;Ljava/util/Vector;)Ljava/util/Vector;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cm;->a:Lcom/coremobility/app/vnotes/cf;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-static {v0, v3}, Lcom/coremobility/app/vnotes/cf;->b(Lcom/coremobility/app/vnotes/cf;Ljava/util/Vector;)Ljava/util/Vector;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cm;->a:Lcom/coremobility/app/vnotes/cf;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-static {v0, v3}, Lcom/coremobility/app/vnotes/cf;->c(Lcom/coremobility/app/vnotes/cf;Ljava/util/Vector;)Ljava/util/Vector;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cm;->a:Lcom/coremobility/app/vnotes/cf;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-static {v0, v3}, Lcom/coremobility/app/vnotes/cf;->d(Lcom/coremobility/app/vnotes/cf;Ljava/util/Vector;)Ljava/util/Vector;

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/coremobility/app/vnotes/cm;->a:Lcom/coremobility/app/vnotes/cf;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-static {v3, v0}, Lcom/coremobility/app/vnotes/cf;->b(Lcom/coremobility/app/vnotes/cf;I)I

    const-string v0, "voicemail-feedback@smithmicro.com"

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cf;->d(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->ae()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->ae()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    const/high16 v4, 0x7f05

    invoke-static {v0, v4, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    sget-boolean v0, Lcom/coremobility/a/b;->b:Z

    if-nez v0, :cond_7e

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-eqz v0, :cond_d3

    :cond_7e
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->ae()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    const v4, 0x7f050003

    invoke-static {v0, v4, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    :cond_88
    :goto_88
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "preference_vnotes_mwi"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cm;->a:Lcom/coremobility/app/vnotes/cf;

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->ae()Lcom/coremobility/integration/app/CM_App;

    move-result-object v3

    invoke-static {v3}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/app/vnotes/cf;Z)Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cm;->a:Lcom/coremobility/app/vnotes/cf;

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->ae()Lcom/coremobility/integration/app/CM_App;

    move-result-object v3

    invoke-static {v3}, Lcom/coremobility/app/vnotes/cf;->b(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/coremobility/app/vnotes/cf;->b(Lcom/coremobility/app/vnotes/cf;Z)Z

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/bw;->b()V

    :try_start_b5
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->ae()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "time_12_24"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/coremobility/app/vnotes/cm;->a:Lcom/coremobility/app/vnotes/cf;

    const/16 v4, 0xc

    if-ne v0, v4, :cond_100

    :goto_c9
    invoke-static {v3, v2}, Lcom/coremobility/app/vnotes/cf;->c(Lcom/coremobility/app/vnotes/cf;I)I
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_cc} :catch_102

    :goto_cc
    iget-object v0, p0, Lcom/coremobility/app/vnotes/cm;->a:Lcom/coremobility/app/vnotes/cf;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cf;->b(Lcom/coremobility/app/vnotes/cf;)V

    const/4 v0, 0x0

    return-object v0

    :cond_d3
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->ae()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    const v4, 0x7f050004

    invoke-static {v0, v4, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->ae()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cf;->g(Landroid/content/Context;)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_fc

    move v0, v2

    :goto_e9
    if-nez v0, :cond_88

    const-string v0, "preference_voicemail_notify"

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->ae()Lcom/coremobility/integration/app/CM_App;

    move-result-object v4

    if-eqz v0, :cond_fe

    move v0, v1

    :goto_f8
    invoke-static {v4, v0}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;I)V

    goto :goto_88

    :cond_fc
    move v0, v1

    goto :goto_e9

    :cond_fe
    move v0, v2

    goto :goto_f8

    :cond_100
    move v2, v1

    goto :goto_c9

    :catch_102
    move-exception v0

    goto :goto_cc
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/cm;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
