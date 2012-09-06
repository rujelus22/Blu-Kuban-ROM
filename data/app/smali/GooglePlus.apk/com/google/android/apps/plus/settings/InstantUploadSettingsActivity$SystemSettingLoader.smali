.class Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;
.super Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;
.source "InstantUploadSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;
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

.field final synthetic this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 463
    iput-object p1, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    .line 464
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 459
    new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 461
    sget-object v0, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->settingsUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->mSettingsUri:Landroid/net/Uri;

    .line 465
    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 455
    check-cast p1, Ljava/util/Map;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->deliverResult(Ljava/util/Map;)V

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

    .line 569
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 571
    if-eqz p1, :cond_17

    iget-object v8, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    #getter for: Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->mMasterSyncEnabled:Z
    invoke-static {v8}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$1300(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;)Z

    move-result v8

    if-eqz v8, :cond_17

    iget-object v8, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    #getter for: Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->mPhotoSyncEnabled:Z
    invoke-static {v8}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$1400(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;)Z

    move-result v8

    if-nez v8, :cond_18

    .line 632
    :cond_17
    :goto_17
    return-void

    .line 576
    :cond_18
    iget-object v8, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    invoke-static {}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$500()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 579
    .local v2, instantUpload:Landroid/preference/CheckBoxPreference;
    const-string v8, "auto_upload_enabled"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 580
    .local v7, value:Ljava/lang/Integer;
    if-nez v2, :cond_db

    .line 581
    iget-object v8, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getMasterSwitch()Landroid/widget/Switch;

    move-result-object v11

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v9, :cond_d8

    move v8, v9

    :goto_3b
    invoke-virtual {v11, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 585
    :goto_3e
    iget-object v11, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v9, :cond_e9

    move v8, v9

    :goto_47
    #calls: Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->updateEnabledStates(Z)V
    invoke-static {v11, v8}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$600(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;Z)V

    .line 588
    iget-object v8, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    invoke-static {}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$800()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 590
    .local v5, roamingUpload:Landroid/preference/CheckBoxPreference;
    const-string v8, "sync_on_roaming"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/Integer;
    check-cast v7, Ljava/lang/Integer;

    .line 591
    .restart local v7       #value:Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v9, :cond_ec

    move v8, v9

    :goto_65
    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 596
    iget-object v8, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    invoke-static {}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$900()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    .line 598
    .local v4, onBatteryUpload:Landroid/preference/CheckBoxPreference;
    const-string v8, "sync_on_battery"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/Integer;
    check-cast v7, Ljava/lang/Integer;

    .line 599
    .restart local v7       #value:Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, v9, :cond_83

    move v10, v9

    :cond_83
    invoke-virtual {v4, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 602
    iget-object v8, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    invoke-static {}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$1000()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 607
    .local v0, connectionPreferencePhoto:Landroid/preference/ListPreference;
    invoke-static {}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$1600()Z

    move-result v8

    if-eqz v8, :cond_ef

    move v8, v9

    :goto_99
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 608
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v9, :cond_fc

    .line 609
    const-string v3, "WIFI_ONLY"

    .line 610
    .local v3, listValue:Ljava/lang/String;
    const v6, 0x7f0800e8

    .line 615
    .local v6, summaryId:I
    :goto_a8
    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 616
    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 619
    iget-object v8, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    invoke-static {}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$1100()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 621
    .local v1, connectionPreferenceVideo:Landroid/preference/ListPreference;
    invoke-static {}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$1600()Z

    move-result v8

    if-eqz v8, :cond_102

    move v8, v9

    :goto_c1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 623
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v9, :cond_10f

    .line 624
    const-string v3, "WIFI_ONLY"

    .line 625
    const v6, 0x7f0800ed

    .line 630
    :goto_d0
    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 631
    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_17

    .end local v0           #connectionPreferencePhoto:Landroid/preference/ListPreference;
    .end local v1           #connectionPreferenceVideo:Landroid/preference/ListPreference;
    .end local v3           #listValue:Ljava/lang/String;
    .end local v4           #onBatteryUpload:Landroid/preference/CheckBoxPreference;
    .end local v5           #roamingUpload:Landroid/preference/CheckBoxPreference;
    .end local v6           #summaryId:I
    :cond_d8
    move v8, v10

    .line 581
    goto/16 :goto_3b

    .line 583
    :cond_db
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v9, :cond_e7

    move v8, v9

    :goto_e2
    invoke-virtual {v2, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_3e

    :cond_e7
    move v8, v10

    goto :goto_e2

    :cond_e9
    move v8, v10

    .line 585
    goto/16 :goto_47

    .restart local v5       #roamingUpload:Landroid/preference/CheckBoxPreference;
    :cond_ec
    move v8, v10

    .line 591
    goto/16 :goto_65

    .line 607
    .restart local v0       #connectionPreferencePhoto:Landroid/preference/ListPreference;
    .restart local v4       #onBatteryUpload:Landroid/preference/CheckBoxPreference;
    :cond_ef
    const-string v8, "sync_on_wifi_only"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_99

    .line 612
    :cond_fc
    const-string v3, "WIFI_OR_MOBILE"

    .line 613
    .restart local v3       #listValue:Ljava/lang/String;
    const v6, 0x7f0800e9

    .restart local v6       #summaryId:I
    goto :goto_a8

    .line 621
    .restart local v1       #connectionPreferenceVideo:Landroid/preference/ListPreference;
    :cond_102
    const-string v8, "video_upload_wifi_only"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_c1

    .line 627
    :cond_10f
    const-string v3, "WIFI_OR_MOBILE"

    .line 628
    const v6, 0x7f0800ee

    goto :goto_d0
.end method

.method public bridge synthetic esLoadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->esLoadInBackground()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public esLoadInBackground()Ljava/util/Map;
    .registers 25
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
    .line 479
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 480
    .local v14, settings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 482
    .local v3, resolver:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 483
    .local v9, autoUploadEnabled:I
    const/16 v21, 0x1

    .line 484
    .local v21, wifiOnlyPhoto:I
    const/16 v22, 0x1

    .line 485
    .local v22, wifiOnlyVideo:I
    const/4 v13, 0x0

    .line 486
    .local v13, roamingUpload:I
    const/4 v11, 0x1

    .line 487
    .local v11, onBatteryUpload:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->mSettingsUri:Landroid/net/Uri;

    invoke-static {}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$1200()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 489
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_47

    .line 491
    :try_start_25
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_44

    .line 492
    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 493
    const/4 v5, 0x1

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 494
    const/4 v5, 0x2

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 495
    const/4 v5, 0x3

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 496
    const/4 v5, 0x4

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_43
    .catchall {:try_start_25 .. :try_end_43} :catchall_e9

    move-result v22

    .line 499
    :cond_44
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 502
    :cond_47
    const-string v5, "auto_upload_enabled"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v14, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const-string v5, "sync_on_wifi_only"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v14, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    const-string v5, "sync_on_roaming"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v14, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const-string v5, "sync_on_battery"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v14, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    const-string v5, "video_upload_wifi_only"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v14, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    #calls: Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getUploadUriWithAccount()Landroid/net/Uri;
    invoke-static {v5}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$400(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;)Landroid/net/Uri;

    move-result-object v4

    .line 510
    .local v4, uploadAll:Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 514
    .local v20, uploadStatus:Landroid/database/Cursor;
    :try_start_84
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-eqz v5, :cond_137

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_137

    .line 515
    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 516
    .local v12, progress:I
    const/4 v5, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 517
    .local v19, total:I
    const/4 v5, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 519
    .local v15, state:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    move/from16 v0, v19

    if-eq v0, v12, :cond_ee

    const/4 v5, 0x1

    :goto_ae
    #setter for: Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->mIsUploading:Z
    invoke-static {v6, v5}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$002(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;Z)Z

    .line 521
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    #getter for: Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->mIsUploading:Z
    invoke-static {v5}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$000(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;)Z

    move-result v5

    if-nez v5, :cond_f0

    .line 522
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    const v6, 0x7f0800f1

    invoke-virtual {v5, v6}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 523
    .local v18, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    const v6, 0x7f0800f3

    invoke-virtual {v5, v6}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getString(I)Ljava/lang/String;
    :try_end_d0
    .catchall {:try_start_84 .. :try_end_d0} :catchall_14e

    move-result-object v17

    .line 541
    .end local v12           #progress:I
    .end local v15           #state:I
    .end local v19           #total:I
    .local v17, summary:Ljava/lang/String;
    :goto_d1
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 544
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    iget-object v5, v5, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v6, v0, v1, v2}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader$1;-><init>(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 564
    return-object v14

    .line 499
    .end local v4           #uploadAll:Landroid/net/Uri;
    .end local v17           #summary:Ljava/lang/String;
    .end local v18           #title:Ljava/lang/String;
    .end local v20           #uploadStatus:Landroid/database/Cursor;
    :catchall_e9
    move-exception v5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v5

    .line 519
    .restart local v4       #uploadAll:Landroid/net/Uri;
    .restart local v12       #progress:I
    .restart local v15       #state:I
    .restart local v19       #total:I
    .restart local v20       #uploadStatus:Landroid/database/Cursor;
    :cond_ee
    const/4 v5, 0x0

    goto :goto_ae

    .line 525
    :cond_f0
    :try_start_f0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    const v6, 0x7f0800f2

    invoke-virtual {v5, v6}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 526
    .restart local v18       #title:Ljava/lang/String;
    if-eqz v15, :cond_100

    const/4 v5, 0x1

    if-ne v15, v5, :cond_11d

    .line 528
    :cond_100
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    const v6, 0x7f0800f5

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v7, v8

    const/4 v8, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .restart local v17       #summary:Ljava/lang/String;
    goto :goto_d1

    .line 531
    .end local v17           #summary:Ljava/lang/String;
    :cond_11d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    #calls: Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getRejectStateString(I)Ljava/lang/String;
    invoke-static {v5, v15}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$200(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;I)Ljava/lang/String;

    move-result-object v16

    .line 532
    .local v16, stateString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    const v6, 0x7f0800f6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .restart local v17       #summary:Ljava/lang/String;
    goto :goto_d1

    .line 537
    .end local v12           #progress:I
    .end local v15           #state:I
    .end local v16           #stateString:Ljava/lang/String;
    .end local v17           #summary:Ljava/lang/String;
    .end local v18           #title:Ljava/lang/String;
    .end local v19           #total:I
    :cond_137
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    const v6, 0x7f0800f1

    invoke-virtual {v5, v6}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 538
    .restart local v18       #title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    const v6, 0x7f0800f3

    invoke-virtual {v5, v6}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getString(I)Ljava/lang/String;
    :try_end_14c
    .catchall {:try_start_f0 .. :try_end_14c} :catchall_14e

    move-result-object v17

    .restart local v17       #summary:Ljava/lang/String;
    goto :goto_d1

    .line 541
    .end local v17           #summary:Ljava/lang/String;
    .end local v18           #title:Ljava/lang/String;
    :catchall_14e
    move-exception v5

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method protected onAbandon()V
    .registers 3

    .prologue
    .line 636
    iget-boolean v0, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->mObserverRegistered:Z

    if-eqz v0, :cond_14

    .line 637
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 638
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->mObserverRegistered:Z

    .line 640
    :cond_14
    return-void
.end method

.method protected onReset()V
    .registers 1

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->onAbandon()V

    .line 645
    return-void
.end method

.method protected onStartLoading()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 469
    iget-boolean v1, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->mObserverRegistered:Z

    if-nez v1, :cond_16

    .line 470
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 471
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->mSettingsUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 472
    iput-boolean v3, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->mObserverRegistered:Z

    .line 474
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->forceLoad()V

    .line 475
    return-void
.end method
