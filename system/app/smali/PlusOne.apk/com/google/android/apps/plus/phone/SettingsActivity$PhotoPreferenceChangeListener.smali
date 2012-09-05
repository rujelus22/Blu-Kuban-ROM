.class Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotoPreferenceChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/SettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 610
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

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

    .line 613
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 615
    .local v2, key:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$1000()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 616
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "account"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    move-object v1, p2

    .line 617
    check-cast v1, Ljava/lang/Boolean;

    .line 619
    .local v1, boolValue:Ljava/lang/Boolean;
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3a

    sget-object v6, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CS_SETTINGS_OPTED_IN:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    :goto_2c
    #calls: Lcom/google/android/apps/plus/phone/SettingsActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    invoke-static {v7, v6}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$1100(Lcom/google/android/apps/plus/phone/SettingsActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 622
    new-instance v6, Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener$1;

    invoke-direct {v6, p0, v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener$1;-><init>(Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Boolean;)V

    check-cast v5, [Ljava/lang/Void;

    invoke-virtual {v6, v5}, Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 705
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v1           #boolValue:Ljava/lang/Boolean;
    :cond_39
    :goto_39
    return v8

    .line 619
    .restart local v0       #account:Lcom/google/android/apps/plus/content/EsAccount;
    .restart local v1       #boolValue:Ljava/lang/Boolean;
    :cond_3a
    sget-object v6, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CS_SETTINGS_OPTED_OUT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    goto :goto_2c

    .line 629
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v1           #boolValue:Ljava/lang/Boolean;
    :cond_3d
    invoke-static {}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$1200()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_65

    move-object v1, p2

    .line 630
    check-cast v1, Ljava/lang/Boolean;

    .line 632
    .restart local v1       #boolValue:Ljava/lang/Boolean;
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_62

    sget-object v6, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CS_SETTINGS_ROAMING_ENABLED:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    :goto_54
    #calls: Lcom/google/android/apps/plus/phone/SettingsActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    invoke-static {v7, v6}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$1100(Lcom/google/android/apps/plus/phone/SettingsActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 635
    new-instance v6, Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener$2;

    invoke-direct {v6, p0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener$2;-><init>(Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener;Ljava/lang/Boolean;)V

    check-cast v5, [Ljava/lang/Void;

    invoke-virtual {v6, v5}, Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_39

    .line 632
    :cond_62
    sget-object v6, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CS_SETTINGS_ROAMING_DISABLED:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    goto :goto_54

    .line 642
    .end local v1           #boolValue:Ljava/lang/Boolean;
    :cond_65
    invoke-static {}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$1300()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7d

    move-object v1, p2

    .line 643
    check-cast v1, Ljava/lang/Boolean;

    .line 645
    .restart local v1       #boolValue:Ljava/lang/Boolean;
    new-instance v6, Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener$3;

    invoke-direct {v6, p0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener$3;-><init>(Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener;Ljava/lang/Boolean;)V

    check-cast v5, [Ljava/lang/Void;

    invoke-virtual {v6, v5}, Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_39

    .line 654
    .end local v1           #boolValue:Ljava/lang/Boolean;
    :cond_7d
    invoke-static {}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$1400()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_cc

    move-object v3, p2

    .line 655
    check-cast v3, Ljava/lang/String;

    .line 658
    .local v3, stringValue:Ljava/lang/String;
    const-string v6, "WIFI_ONLY"

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b0

    .line 659
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    sget-object v7, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CS_SETTINGS_UPLOAD_VIA_PHOTOS_AND_VIDEOS_VIA_WIFI_ONLY:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    #calls: Lcom/google/android/apps/plus/phone/SettingsActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    invoke-static {v6, v7}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$1100(Lcom/google/android/apps/plus/phone/SettingsActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 660
    const v6, 0x7f0700ac

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 661
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 670
    .local v4, wifiOnly:Ljava/lang/Boolean;
    :goto_a3
    if-eqz v4, :cond_39

    .line 671
    new-instance v6, Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener$4;

    invoke-direct {v6, p0, v4}, Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener$4;-><init>(Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener;Ljava/lang/Boolean;)V

    check-cast v5, [Ljava/lang/Void;

    invoke-virtual {v6, v5}, Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_39

    .line 662
    .end local v4           #wifiOnly:Ljava/lang/Boolean;
    :cond_b0
    const-string v6, "WIFI_OR_MOBILE"

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_ca

    .line 663
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    sget-object v7, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CS_SETTINGS_UPLOAD_VIA_PHOTOS_AND_VIDEOS_VIA_MOBILE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    #calls: Lcom/google/android/apps/plus/phone/SettingsActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    invoke-static {v6, v7}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$1100(Lcom/google/android/apps/plus/phone/SettingsActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 664
    const v6, 0x7f0700ad

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 665
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .restart local v4       #wifiOnly:Ljava/lang/Boolean;
    goto :goto_a3

    .line 667
    .end local v4           #wifiOnly:Ljava/lang/Boolean;
    :cond_ca
    const/4 v4, 0x0

    .restart local v4       #wifiOnly:Ljava/lang/Boolean;
    goto :goto_a3

    .line 679
    .end local v3           #stringValue:Ljava/lang/String;
    .end local v4           #wifiOnly:Ljava/lang/Boolean;
    :cond_cc
    invoke-static {}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$1500()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_39

    move-object v3, p2

    .line 680
    check-cast v3, Ljava/lang/String;

    .line 683
    .restart local v3       #stringValue:Ljava/lang/String;
    const-string v6, "WIFI_ONLY"

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_100

    .line 684
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    sget-object v7, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CS_SETTINGS_UPLOAD_VIA_VIDEOS_VIA_WIFI_ONLY:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    #calls: Lcom/google/android/apps/plus/phone/SettingsActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    invoke-static {v6, v7}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$1100(Lcom/google/android/apps/plus/phone/SettingsActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 685
    const v6, 0x7f0700b1

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 686
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 695
    .restart local v4       #wifiOnly:Ljava/lang/Boolean;
    :goto_f2
    if-eqz v4, :cond_39

    .line 696
    new-instance v6, Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener$5;

    invoke-direct {v6, p0, v4}, Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener$5;-><init>(Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener;Ljava/lang/Boolean;)V

    check-cast v5, [Ljava/lang/Void;

    invoke-virtual {v6, v5}, Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_39

    .line 687
    .end local v4           #wifiOnly:Ljava/lang/Boolean;
    :cond_100
    const-string v6, "WIFI_OR_MOBILE"

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11a

    .line 688
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    sget-object v7, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CS_SETTINGS_UPLOAD_VIA_VIDEOS_VIA_MOBILE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    #calls: Lcom/google/android/apps/plus/phone/SettingsActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    invoke-static {v6, v7}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$1100(Lcom/google/android/apps/plus/phone/SettingsActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 689
    const v6, 0x7f0700b2

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 690
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .restart local v4       #wifiOnly:Ljava/lang/Boolean;
    goto :goto_f2

    .line 692
    .end local v4           #wifiOnly:Ljava/lang/Boolean;
    :cond_11a
    const/4 v4, 0x0

    .restart local v4       #wifiOnly:Ljava/lang/Boolean;
    goto :goto_f2
.end method
