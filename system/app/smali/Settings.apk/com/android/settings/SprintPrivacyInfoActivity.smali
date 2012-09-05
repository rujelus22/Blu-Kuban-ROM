.class public Lcom/android/settings/SprintPrivacyInfoActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SprintPrivacyInfoActivity.java"


# instance fields
.field private mDefaultLicencePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SprintPrivacyInfoActivity;)Lcom/android/internal/app/AlertController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/SprintPrivacyInfoActivity;->mAlert:Lcom/android/internal/app/AlertController;

    return-object v0
.end method

.method private showErrorAndFinish()V
    .registers 3

    .prologue
    .line 105
    const v0, 0x7f0b03cf

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/SprintPrivacyInfoActivity;->finish()V

    .line 108
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 19
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super/range {p0 .. p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 37
    .local v7, currentLocale:Ljava/util/Locale;
    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "es"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 38
    const-string v2, "/system/etc/SPRINT_PRIVACY_es.html"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SprintPrivacyInfoActivity;->mDefaultLicencePath:Ljava/lang/String;

    .line 43
    :cond_19
    :goto_19
    const-string v2, "ro.config.sprint_privacy_path"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/SprintPrivacyInfoActivity;->mDefaultLicencePath:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 45
    .local v11, fileName:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 46
    const-string v2, "SprintPrivacyInfoActivity"

    const-string v3, "The system property for the license file is empty."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SprintPrivacyInfoActivity;->showErrorAndFinish()V

    .line 102
    :cond_33
    :goto_33
    return-void

    .line 40
    .end local v11           #fileName:Ljava/lang/String;
    :cond_34
    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "en"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 41
    const-string v2, "/system/etc/SPRINT_PRIVACY.html"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SprintPrivacyInfoActivity;->mDefaultLicencePath:Ljava/lang/String;

    goto :goto_19

    .line 51
    .restart local v11       #fileName:Ljava/lang/String;
    :cond_47
    const/4 v12, 0x0

    .line 52
    .local v12, inputReader:Ljava/io/InputStreamReader;
    const/4 v8, 0x0

    .line 54
    .local v8, data:Ljava/lang/StringBuilder;
    :try_start_49
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v2, 0x800

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(I)V
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_e4
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_50} :catch_135
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_50} :catch_be

    .line 55
    .end local v8           #data:Ljava/lang/StringBuilder;
    .local v9, data:Ljava/lang/StringBuilder;
    const/16 v2, 0x800

    :try_start_52
    new-array v0, v2, [C

    move-object/from16 v16, v0

    .line 57
    .local v16, tmp:[C
    new-instance v13, Ljava/io/FileReader;

    invoke-direct {v13, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_127
    .catch Ljava/io/FileNotFoundException; {:try_start_52 .. :try_end_5b} :catch_138
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5b} :catch_12e

    .line 58
    .end local v12           #inputReader:Ljava/io/InputStreamReader;
    .local v13, inputReader:Ljava/io/InputStreamReader;
    :goto_5b
    :try_start_5b
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v14

    .local v14, numRead:I
    if-ltz v14, :cond_90

    .line 59
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v9, v0, v2, v14}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_69
    .catchall {:try_start_5b .. :try_end_69} :catchall_12a
    .catch Ljava/io/FileNotFoundException; {:try_start_5b .. :try_end_69} :catch_6a
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_69} :catch_131

    goto :goto_5b

    .line 61
    .end local v14           #numRead:I
    :catch_6a
    move-exception v10

    move-object v8, v9

    .end local v9           #data:Ljava/lang/StringBuilder;
    .restart local v8       #data:Ljava/lang/StringBuilder;
    move-object v12, v13

    .line 62
    .end local v13           #inputReader:Ljava/io/InputStreamReader;
    .end local v16           #tmp:[C
    .local v10, e:Ljava/io/FileNotFoundException;
    .restart local v12       #inputReader:Ljava/io/InputStreamReader;
    :goto_6d
    :try_start_6d
    const-string v2, "SprintPrivacyInfoActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Privacy HTML file not found at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SprintPrivacyInfoActivity;->showErrorAndFinish()V
    :try_end_88
    .catchall {:try_start_6d .. :try_end_88} :catchall_e4

    .line 71
    if-eqz v12, :cond_33

    .line 72
    :try_start_8a
    invoke-virtual {v12}, Ljava/io/InputStreamReader;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e

    goto :goto_33

    .line 74
    :catch_8e
    move-exception v2

    goto :goto_33

    .line 71
    .end local v8           #data:Ljava/lang/StringBuilder;
    .end local v10           #e:Ljava/io/FileNotFoundException;
    .end local v12           #inputReader:Ljava/io/InputStreamReader;
    .restart local v9       #data:Ljava/lang/StringBuilder;
    .restart local v13       #inputReader:Ljava/io/InputStreamReader;
    .restart local v14       #numRead:I
    .restart local v16       #tmp:[C
    :cond_90
    if-eqz v13, :cond_95

    .line 72
    :try_start_92
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_122

    .line 78
    :cond_95
    :goto_95
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 79
    const-string v2, "SprintPrivacyInfoActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Privacy HTML is empty (from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SprintPrivacyInfoActivity;->showErrorAndFinish()V

    goto/16 :goto_33

    .line 65
    .end local v9           #data:Ljava/lang/StringBuilder;
    .end local v13           #inputReader:Ljava/io/InputStreamReader;
    .end local v14           #numRead:I
    .end local v16           #tmp:[C
    .restart local v8       #data:Ljava/lang/StringBuilder;
    .restart local v12       #inputReader:Ljava/io/InputStreamReader;
    :catch_be
    move-exception v10

    .line 66
    .local v10, e:Ljava/io/IOException;
    :goto_bf
    :try_start_bf
    const-string v2, "SprintPrivacyInfoActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading Privacy HTML file at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SprintPrivacyInfoActivity;->showErrorAndFinish()V
    :try_end_da
    .catchall {:try_start_bf .. :try_end_da} :catchall_e4

    .line 71
    if-eqz v12, :cond_33

    .line 72
    :try_start_dc
    invoke-virtual {v12}, Ljava/io/InputStreamReader;->close()V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_df} :catch_e1

    goto/16 :goto_33

    .line 74
    :catch_e1
    move-exception v2

    goto/16 :goto_33

    .line 70
    .end local v10           #e:Ljava/io/IOException;
    :catchall_e4
    move-exception v2

    .line 71
    :goto_e5
    if-eqz v12, :cond_ea

    .line 72
    :try_start_e7
    invoke-virtual {v12}, Ljava/io/InputStreamReader;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_125

    .line 75
    :cond_ea
    :goto_ea
    throw v2

    .line 84
    .end local v8           #data:Ljava/lang/StringBuilder;
    .end local v12           #inputReader:Ljava/io/InputStreamReader;
    .restart local v9       #data:Ljava/lang/StringBuilder;
    .restart local v13       #inputReader:Ljava/io/InputStreamReader;
    .restart local v14       #numRead:I
    .restart local v16       #tmp:[C
    :cond_eb
    new-instance v1, Landroid/webkit/WebView;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 87
    .local v1, webView:Landroid/webkit/WebView;
    const/4 v2, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text/html"

    const-string v5, "utf-8"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v2, Lcom/android/settings/SprintPrivacyInfoActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/SprintPrivacyInfoActivity$1;-><init>(Lcom/android/settings/SprintPrivacyInfoActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SprintPrivacyInfoActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 98
    .local v15, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x7f0b03d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SprintPrivacyInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 99
    iput-object v1, v15, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 100
    const/4 v2, 0x1

    iput-boolean v2, v15, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SprintPrivacyInfoActivity;->setupAlert()V

    goto/16 :goto_33

    .line 74
    .end local v1           #webView:Landroid/webkit/WebView;
    .end local v15           #p:Lcom/android/internal/app/AlertController$AlertParams;
    :catch_122
    move-exception v2

    goto/16 :goto_95

    .end local v9           #data:Ljava/lang/StringBuilder;
    .end local v13           #inputReader:Ljava/io/InputStreamReader;
    .end local v14           #numRead:I
    .end local v16           #tmp:[C
    .restart local v8       #data:Ljava/lang/StringBuilder;
    .restart local v12       #inputReader:Ljava/io/InputStreamReader;
    :catch_125
    move-exception v3

    goto :goto_ea

    .line 70
    .end local v8           #data:Ljava/lang/StringBuilder;
    .restart local v9       #data:Ljava/lang/StringBuilder;
    :catchall_127
    move-exception v2

    move-object v8, v9

    .end local v9           #data:Ljava/lang/StringBuilder;
    .restart local v8       #data:Ljava/lang/StringBuilder;
    goto :goto_e5

    .end local v8           #data:Ljava/lang/StringBuilder;
    .end local v12           #inputReader:Ljava/io/InputStreamReader;
    .restart local v9       #data:Ljava/lang/StringBuilder;
    .restart local v13       #inputReader:Ljava/io/InputStreamReader;
    .restart local v16       #tmp:[C
    :catchall_12a
    move-exception v2

    move-object v8, v9

    .end local v9           #data:Ljava/lang/StringBuilder;
    .restart local v8       #data:Ljava/lang/StringBuilder;
    move-object v12, v13

    .end local v13           #inputReader:Ljava/io/InputStreamReader;
    .restart local v12       #inputReader:Ljava/io/InputStreamReader;
    goto :goto_e5

    .line 65
    .end local v8           #data:Ljava/lang/StringBuilder;
    .end local v16           #tmp:[C
    .restart local v9       #data:Ljava/lang/StringBuilder;
    :catch_12e
    move-exception v10

    move-object v8, v9

    .end local v9           #data:Ljava/lang/StringBuilder;
    .restart local v8       #data:Ljava/lang/StringBuilder;
    goto :goto_bf

    .end local v8           #data:Ljava/lang/StringBuilder;
    .end local v12           #inputReader:Ljava/io/InputStreamReader;
    .restart local v9       #data:Ljava/lang/StringBuilder;
    .restart local v13       #inputReader:Ljava/io/InputStreamReader;
    .restart local v16       #tmp:[C
    :catch_131
    move-exception v10

    move-object v8, v9

    .end local v9           #data:Ljava/lang/StringBuilder;
    .restart local v8       #data:Ljava/lang/StringBuilder;
    move-object v12, v13

    .end local v13           #inputReader:Ljava/io/InputStreamReader;
    .restart local v12       #inputReader:Ljava/io/InputStreamReader;
    goto :goto_bf

    .line 61
    .end local v16           #tmp:[C
    :catch_135
    move-exception v10

    goto/16 :goto_6d

    .end local v8           #data:Ljava/lang/StringBuilder;
    .restart local v9       #data:Ljava/lang/StringBuilder;
    :catch_138
    move-exception v10

    move-object v8, v9

    .end local v9           #data:Ljava/lang/StringBuilder;
    .restart local v8       #data:Ljava/lang/StringBuilder;
    goto/16 :goto_6d
.end method
