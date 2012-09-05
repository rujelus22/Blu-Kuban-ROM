.class Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;
.super Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SystemSettingLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private mObserverRegistered:Z

.field private final mSettingsUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/phone/SettingsActivity;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 744
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    .line 745
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 740
    new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 742
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaFacade;->getSettingsUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->mSettingsUri:Landroid/net/Uri;

    .line 746
    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 736
    check-cast p1, Ljava/util/Map;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->deliverResult(Ljava/util/Map;)V

    return-void
.end method

.method public deliverResult(Ljava/util/Map;)V
    .registers 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 841
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 843
    if-eqz p1, :cond_f

    iget-object v8, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    #getter for: Lcom/google/android/apps/plus/phone/SettingsActivity;->mPhotoSyncEnabled:Z
    invoke-static {v8}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$1700(Lcom/google/android/apps/plus/phone/SettingsActivity;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 899
    :cond_f
    :goto_f
    return-void

    .line 848
    :cond_10
    iget-object v8, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    invoke-static {}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$1000()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/google/android/apps/plus/phone/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 852
    .local v2, instantUpload:Landroid/preference/CheckBoxPreference;
    const-string v8, "auto_upload_enabled"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 853
    .local v7, value:Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v9, :cond_b6

    move v8, v9

    :goto_2b
    invoke-virtual {v2, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 856
    iget-object v8, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    invoke-static {}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$1200()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/google/android/apps/plus/phone/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 858
    .local v5, roamingUpload:Landroid/preference/CheckBoxPreference;
    const-string v8, "sync_on_roaming"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/Integer;
    check-cast v7, Ljava/lang/Integer;

    .line 859
    .restart local v7       #value:Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v9, :cond_b9

    move v8, v9

    :goto_49
    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 864
    iget-object v8, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    invoke-static {}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$1300()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/google/android/apps/plus/phone/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    .line 866
    .local v4, onBatteryUpload:Landroid/preference/CheckBoxPreference;
    const-string v8, "sync_on_battery"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/Integer;
    check-cast v7, Ljava/lang/Integer;

    .line 867
    .restart local v7       #value:Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, v9, :cond_67

    move v10, v9

    :cond_67
    invoke-virtual {v4, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 870
    iget-object v8, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    invoke-static {}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$1400()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/android/apps/plus/phone/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 875
    .local v0, connectionPreferencePhoto:Landroid/preference/ListPreference;
    const-string v8, "sync_on_wifi_only"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/Integer;
    check-cast v7, Ljava/lang/Integer;

    .line 876
    .restart local v7       #value:Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v9, :cond_bb

    .line 877
    const-string v3, "WIFI_ONLY"

    .line 878
    .local v3, listValue:Ljava/lang/String;
    const v6, 0x7f0700ac

    .line 883
    .local v6, summaryId:I
    :goto_89
    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 884
    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 887
    iget-object v8, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    invoke-static {}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$1500()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/android/apps/plus/phone/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 889
    .local v1, connectionPreferenceVideo:Landroid/preference/ListPreference;
    const-string v8, "video_upload_wifi_only"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/Integer;
    check-cast v7, Ljava/lang/Integer;

    .line 890
    .restart local v7       #value:Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v9, :cond_c1

    .line 891
    const-string v3, "WIFI_ONLY"

    .line 892
    const v6, 0x7f0700b1

    .line 897
    :goto_ae
    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 898
    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_f

    .end local v0           #connectionPreferencePhoto:Landroid/preference/ListPreference;
    .end local v1           #connectionPreferenceVideo:Landroid/preference/ListPreference;
    .end local v3           #listValue:Ljava/lang/String;
    .end local v4           #onBatteryUpload:Landroid/preference/CheckBoxPreference;
    .end local v5           #roamingUpload:Landroid/preference/CheckBoxPreference;
    .end local v6           #summaryId:I
    :cond_b6
    move v8, v10

    .line 853
    goto/16 :goto_2b

    .restart local v5       #roamingUpload:Landroid/preference/CheckBoxPreference;
    :cond_b9
    move v8, v10

    .line 859
    goto :goto_49

    .line 880
    .restart local v0       #connectionPreferencePhoto:Landroid/preference/ListPreference;
    .restart local v4       #onBatteryUpload:Landroid/preference/CheckBoxPreference;
    :cond_bb
    const-string v3, "WIFI_OR_MOBILE"

    .line 881
    .restart local v3       #listValue:Ljava/lang/String;
    const v6, 0x7f0700ad

    .restart local v6       #summaryId:I
    goto :goto_89

    .line 894
    .restart local v1       #connectionPreferenceVideo:Landroid/preference/ListPreference;
    :cond_c1
    const-string v3, "WIFI_OR_MOBILE"

    .line 895
    const v6, 0x7f0700b2

    goto :goto_ae
.end method

.method public bridge synthetic esLoadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->esLoadInBackground()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public esLoadInBackground()Ljava/util/Map;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 766
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 767
    .local v10, settings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 769
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 770
    .local v6, autoUploadEnabled:I
    const/4 v12, 0x1

    .line 771
    .local v12, wifiOnlyPhoto:I
    const/4 v13, 0x1

    .line 772
    .local v13, wifiOnlyVideo:I
    const/4 v9, 0x0

    .line 773
    .local v9, roamingUpload:I
    const/4 v8, 0x1

    .line 774
    .local v8, onBatteryUpload:I
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->mSettingsUri:Landroid/net/Uri;

    invoke-static {}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$1600()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 776
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_43

    .line 778
    :try_start_21
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 779
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 780
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 781
    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 782
    const/4 v2, 0x3

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 783
    const/4 v2, 0x4

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3f
    .catchall {:try_start_21 .. :try_end_3f} :catchall_ae

    move-result v13

    .line 786
    :cond_40
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 789
    :cond_43
    const-string v2, "auto_upload_enabled"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    const-string v2, "sync_on_wifi_only"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    const-string v2, "sync_on_roaming"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    const-string v2, "sync_on_battery"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    const-string v2, "video_upload_wifi_only"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    #calls: Lcom/google/android/apps/plus/phone/SettingsActivity;->getUploadUriWithAccount()Landroid/net/Uri;
    invoke-static {v2}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$600(Lcom/google/android/apps/plus/phone/SettingsActivity;)Landroid/net/Uri;

    move-result-object v1

    .line 797
    .local v1, uploadAll:Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 799
    .local v11, uploadStatus:Landroid/database/Cursor;
    :try_start_7e
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_b3

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b3

    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v4, 0x2

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eq v2, v4, :cond_b3

    const/4 v2, 0x1

    :goto_99
    #setter for: Lcom/google/android/apps/plus/phone/SettingsActivity;->mIsUploading:Z
    invoke-static {v3, v2}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$002(Lcom/google/android/apps/plus/phone/SettingsActivity;Z)Z
    :try_end_9c
    .catchall {:try_start_7e .. :try_end_9c} :catchall_b5

    .line 802
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 805
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    #getter for: Lcom/google/android/apps/plus/phone/SettingsActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$900(Lcom/google/android/apps/plus/phone/SettingsActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader$1;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader$1;-><init>(Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 833
    return-object v10

    .line 786
    .end local v1           #uploadAll:Landroid/net/Uri;
    .end local v11           #uploadStatus:Landroid/database/Cursor;
    :catchall_ae
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    .line 799
    .restart local v1       #uploadAll:Landroid/net/Uri;
    .restart local v11       #uploadStatus:Landroid/database/Cursor;
    :cond_b3
    const/4 v2, 0x0

    goto :goto_99

    .line 802
    :catchall_b5
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method protected onAbandon()V
    .registers 3

    .prologue
    .line 906
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->mObserverRegistered:Z

    if-eqz v0, :cond_14

    .line 907
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 908
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->mObserverRegistered:Z

    .line 910
    :cond_14
    return-void
.end method

.method protected onReset()V
    .registers 1

    .prologue
    .line 917
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->onAbandon()V

    .line 918
    return-void
.end method

.method protected onStartLoading()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 753
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->mObserverRegistered:Z

    if-nez v1, :cond_16

    .line 754
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 755
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->mSettingsUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 756
    iput-boolean v3, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->mObserverRegistered:Z

    .line 758
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->forceLoad()V

    .line 759
    return-void
.end method
