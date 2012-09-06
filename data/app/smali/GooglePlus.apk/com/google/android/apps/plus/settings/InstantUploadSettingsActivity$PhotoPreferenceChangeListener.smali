.class Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener;
.super Ljava/lang/Object;
.source "InstantUploadSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotoPreferenceChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 13
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 349
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, key:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$500()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 352
    iget-object v6, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "account"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    move-object v1, p2

    .line 353
    check-cast v1, Ljava/lang/Boolean;

    .line 355
    .local v1, boolValue:Ljava/lang/Boolean;
    iget-object v6, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    #calls: Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->updateEnabledStates(Z)V
    invoke-static {v6, v7}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$600(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;Z)V

    .line 357
    iget-object v7, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_43

    sget-object v6, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CS_SETTINGS_OPTED_IN:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    :goto_35
    #calls: Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    invoke-static {v7, v6}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$700(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 360
    new-instance v6, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener$1;

    invoke-direct {v6, p0, v0, v1}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener$1;-><init>(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Boolean;)V

    check-cast v5, [Ljava/lang/Void;

    invoke-virtual {v6, v5}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 448
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v1           #boolValue:Ljava/lang/Boolean;
    :cond_42
    :goto_42
    return v8

    .line 357
    .restart local v0       #account:Lcom/google/android/apps/plus/content/EsAccount;
    .restart local v1       #boolValue:Ljava/lang/Boolean;
    :cond_43
    sget-object v6, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CS_SETTINGS_OPTED_OUT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    goto :goto_35

    .line 368
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v1           #boolValue:Ljava/lang/Boolean;
    :cond_46
    invoke-static {}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$800()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6e

    move-object v1, p2

    .line 369
    check-cast v1, Ljava/lang/Boolean;

    .line 371
    .restart local v1       #boolValue:Ljava/lang/Boolean;
    iget-object v7, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6b

    sget-object v6, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CS_SETTINGS_ROAMING_ENABLED:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    :goto_5d
    #calls: Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    invoke-static {v7, v6}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$700(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 374
    new-instance v6, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener$2;

    invoke-direct {v6, p0, v1}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener$2;-><init>(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener;Ljava/lang/Boolean;)V

    check-cast v5, [Ljava/lang/Void;

    invoke-virtual {v6, v5}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_42

    .line 371
    :cond_6b
    sget-object v6, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CS_SETTINGS_ROAMING_DISABLED:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    goto :goto_5d

    .line 382
    .end local v1           #boolValue:Ljava/lang/Boolean;
    :cond_6e
    invoke-static {}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$900()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_86

    move-object v1, p2

    .line 383
    check-cast v1, Ljava/lang/Boolean;

    .line 385
    .restart local v1       #boolValue:Ljava/lang/Boolean;
    new-instance v6, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener$3;

    invoke-direct {v6, p0, v1}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener$3;-><init>(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener;Ljava/lang/Boolean;)V

    check-cast v5, [Ljava/lang/Void;

    invoke-virtual {v6, v5}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_42

    .line 395
    .end local v1           #boolValue:Ljava/lang/Boolean;
    :cond_86
    invoke-static {}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$1000()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d5

    move-object v3, p2

    .line 396
    check-cast v3, Ljava/lang/String;

    .line 399
    .local v3, stringValue:Ljava/lang/String;
    const-string v6, "WIFI_ONLY"

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b9

    .line 400
    iget-object v6, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    sget-object v7, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CS_SETTINGS_UPLOAD_VIA_PHOTOS_AND_VIDEOS_VIA_WIFI_ONLY:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    #calls: Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    invoke-static {v6, v7}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$700(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 401
    const v6, 0x7f0800e8

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 402
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 411
    .local v4, wifiOnly:Ljava/lang/Boolean;
    :goto_ac
    if-eqz v4, :cond_42

    .line 412
    new-instance v6, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener$4;

    invoke-direct {v6, p0, v4}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener$4;-><init>(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener;Ljava/lang/Boolean;)V

    check-cast v5, [Ljava/lang/Void;

    invoke-virtual {v6, v5}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_42

    .line 403
    .end local v4           #wifiOnly:Ljava/lang/Boolean;
    :cond_b9
    const-string v6, "WIFI_OR_MOBILE"

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d3

    .line 404
    iget-object v6, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    sget-object v7, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CS_SETTINGS_UPLOAD_VIA_PHOTOS_AND_VIDEOS_VIA_MOBILE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    #calls: Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    invoke-static {v6, v7}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$700(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 405
    const v6, 0x7f0800e9

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 406
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .restart local v4       #wifiOnly:Ljava/lang/Boolean;
    goto :goto_ac

    .line 408
    .end local v4           #wifiOnly:Ljava/lang/Boolean;
    :cond_d3
    const/4 v4, 0x0

    .restart local v4       #wifiOnly:Ljava/lang/Boolean;
    goto :goto_ac

    .line 421
    .end local v3           #stringValue:Ljava/lang/String;
    .end local v4           #wifiOnly:Ljava/lang/Boolean;
    :cond_d5
    invoke-static {}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$1100()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_42

    move-object v3, p2

    .line 422
    check-cast v3, Ljava/lang/String;

    .line 425
    .restart local v3       #stringValue:Ljava/lang/String;
    const-string v6, "WIFI_ONLY"

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_109

    .line 426
    iget-object v6, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    sget-object v7, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CS_SETTINGS_UPLOAD_VIA_VIDEOS_VIA_WIFI_ONLY:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    #calls: Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    invoke-static {v6, v7}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$700(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 427
    const v6, 0x7f0800ed

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 428
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 437
    .restart local v4       #wifiOnly:Ljava/lang/Boolean;
    :goto_fb
    if-eqz v4, :cond_42

    .line 438
    new-instance v6, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener$5;

    invoke-direct {v6, p0, v4}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener$5;-><init>(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener;Ljava/lang/Boolean;)V

    check-cast v5, [Ljava/lang/Void;

    invoke-virtual {v6, v5}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_42

    .line 429
    .end local v4           #wifiOnly:Ljava/lang/Boolean;
    :cond_109
    const-string v6, "WIFI_OR_MOBILE"

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_123

    .line 430
    iget-object v6, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    sget-object v7, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CS_SETTINGS_UPLOAD_VIA_VIDEOS_VIA_MOBILE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    #calls: Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    invoke-static {v6, v7}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$700(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 431
    const v6, 0x7f0800ee

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 432
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .restart local v4       #wifiOnly:Ljava/lang/Boolean;
    goto :goto_fb

    .line 434
    .end local v4           #wifiOnly:Ljava/lang/Boolean;
    :cond_123
    const/4 v4, 0x0

    .restart local v4       #wifiOnly:Ljava/lang/Boolean;
    goto :goto_fb
.end method
