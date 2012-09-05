.class public Lcom/samsung/android/app/divx/DivxStatus;
.super Landroid/preference/PreferenceActivity;
.source "DivxStatus.java"


# instance fields
.field private deRegisterPreference:Landroid/preference/Preference;

.field private registerPreference:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const/high16 v4, 0x7f04

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/divx/DivxStatus;->addPreferencesFromResource(I)V

    .line 40
    const-string v4, "divxregister"

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/divx/DivxStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/divx/DivxStatus;->registerPreference:Landroid/preference/Preference;

    .line 41
    iget-object v4, p0, Lcom/samsung/android/app/divx/DivxStatus;->registerPreference:Landroid/preference/Preference;

    new-instance v5, Lcom/samsung/android/app/divx/DivxStatus$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/divx/DivxStatus$1;-><init>(Lcom/samsung/android/app/divx/DivxStatus;)V

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 48
    const-string v4, "divxderegister"

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/divx/DivxStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/divx/DivxStatus;->deRegisterPreference:Landroid/preference/Preference;

    .line 50
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-virtual {p0}, Lcom/samsung/android/app/divx/DivxStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 51
    .local v0, drmClient:Landroid/drm/DrmManagerClient;
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v4, 0x1e

    const-string v5, "video/mux/DivX"

    invoke-direct {v2, v4, v5}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 55
    .local v2, drmInfoRequest:Landroid/drm/DrmInfoRequest;
    invoke-virtual {v0, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v1

    .line 56
    .local v1, drmInfo:Landroid/drm/DrmInfo;
    if-eqz v1, :cond_76

    .line 58
    const-string v4, "Registration Status"

    invoke-virtual {v1, v4}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 59
    .local v3, reg_status:Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getDivxState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    const-string v4, "Drm Never Registered"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 62
    iget-object v4, p0, Lcom/samsung/android/app/divx/DivxStatus;->deRegisterPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 68
    :goto_69
    const-string v4, "Registered"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 69
    iget-object v4, p0, Lcom/samsung/android/app/divx/DivxStatus;->registerPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 78
    .end local v3           #reg_status:Ljava/lang/String;
    :cond_76
    :goto_76
    iget-object v4, p0, Lcom/samsung/android/app/divx/DivxStatus;->deRegisterPreference:Landroid/preference/Preference;

    new-instance v5, Lcom/samsung/android/app/divx/DivxStatus$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/divx/DivxStatus$2;-><init>(Lcom/samsung/android/app/divx/DivxStatus;)V

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 104
    return-void

    .line 65
    .restart local v3       #reg_status:Ljava/lang/String;
    :cond_81
    iget-object v4, p0, Lcom/samsung/android/app/divx/DivxStatus;->deRegisterPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_69

    .line 72
    :cond_87
    iget-object v4, p0, Lcom/samsung/android/app/divx/DivxStatus;->registerPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_76
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 108
    packed-switch p1, :pswitch_data_3e

    .line 126
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 110
    :pswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060020

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/divx/DivxStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06000b

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/divx/DivxStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/divx/DivxStatus$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/divx/DivxStatus$4;-><init>(Lcom/samsung/android/app/divx/DivxStatus;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060009

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/divx/DivxStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/divx/DivxStatus$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/divx/DivxStatus$3;-><init>(Lcom/samsung/android/app/divx/DivxStatus;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 108
    nop

    :pswitch_data_3e
    .packed-switch 0x64
        :pswitch_8
    .end packed-switch
.end method
