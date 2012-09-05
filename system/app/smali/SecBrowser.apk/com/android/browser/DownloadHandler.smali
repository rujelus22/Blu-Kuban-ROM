.class public Lcom/android/browser/DownloadHandler;
.super Ljava/lang/Object;
.source "DownloadHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encodePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "path"

    .prologue
    const/16 v9, 0x5d

    const/16 v8, 0x5b

    .line 195
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 197
    .local v2, chars:[C
    const/4 v5, 0x0

    .line 198
    .local v5, needed:Z
    move-object v0, v2

    .local v0, arr$:[C
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_c
    if-ge v3, v4, :cond_15

    aget-char v1, v0, v3

    .line 199
    .local v1, c:C
    if-eq v1, v8, :cond_14

    if-ne v1, v9, :cond_18

    .line 200
    :cond_14
    const/4 v5, 0x1

    .line 204
    .end local v1           #c:C
    :cond_15
    if-nez v5, :cond_1b

    .line 218
    .end local p0
    :goto_17
    return-object p0

    .line 198
    .restart local v1       #c:C
    .restart local p0
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 208
    .end local v1           #c:C
    :cond_1b
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .local v6, sb:Ljava/lang/StringBuilder;
    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_25
    if-ge v3, v4, :cond_40

    aget-char v1, v0, v3

    .line 210
    .restart local v1       #c:C
    if-eq v1, v8, :cond_2d

    if-ne v1, v9, :cond_3c

    .line 211
    :cond_2d
    const/16 v7, 0x25

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :goto_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 214
    :cond_3c
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 218
    .end local v1           #c:C
    :cond_40
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_17
.end method

.method public static onDownloadStart(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 19
    .parameter "activity"
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "privateBrowsing"

    .prologue
    .line 69
    const/4 v10, 0x0

    .line 70
    .local v10, info:Landroid/content/pm/ResolveInfo;
    const/4 v8, 0x0

    .line 71
    .local v8, defaultContentLength:I
    const-string v1, "application/vnd.webkit.maybe.feed"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    .line 72
    const-string p4, "application/rss+xml"

    .line 75
    :cond_f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 77
    const-string v1, "application/sdp"

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4a

    .line 81
    :try_start_25
    new-instance v11, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v11, intent:Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v1, "DLHandler"

    const-string v3, "DownloadHandler onDownloadStart request and excute for application/sdp"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0, v11}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_3f} :catch_41

    .end local v11           #intent:Landroid/content/Intent;
    :goto_3f
    move-object v2, v10

    .line 189
    .end local v10           #info:Landroid/content/pm/ResolveInfo;
    .local v2, info:Landroid/content/pm/ResolveInfo;
    :goto_40
    return-void

    .line 87
    .end local v2           #info:Landroid/content/pm/ResolveInfo;
    .restart local v10       #info:Landroid/content/pm/ResolveInfo;
    :catch_41
    move-exception v9

    .line 89
    .local v9, ex:Landroid/content/ActivityNotFoundException;
    const-string v1, "DLHandler"

    const-string v3, "No activity for application/sdp"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 95
    .end local v9           #ex:Landroid/content/ActivityNotFoundException;
    :cond_4a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 97
    const-string v1, "application/x-applicationfolder"

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_85

    .line 100
    :try_start_60
    new-instance v11, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .restart local v11       #intent:Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v1, "DLHandler"

    const-string v3, " DownloadHandler onDownloadStart request and excute for application/x-applicationfolder  "

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0, v11}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_7a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_60 .. :try_end_7a} :catch_7c

    .end local v11           #intent:Landroid/content/Intent;
    :goto_7a
    move-object v2, v10

    .line 108
    .end local v10           #info:Landroid/content/pm/ResolveInfo;
    .restart local v2       #info:Landroid/content/pm/ResolveInfo;
    goto :goto_40

    .line 105
    .end local v2           #info:Landroid/content/pm/ResolveInfo;
    .restart local v10       #info:Landroid/content/pm/ResolveInfo;
    :catch_7c
    move-exception v9

    .line 106
    .restart local v9       #ex:Landroid/content/ActivityNotFoundException;
    const-string v1, "DLHandler"

    const-string v3, "No activity for application/x-applicationfolder"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 114
    .end local v9           #ex:Landroid/content/ActivityNotFoundException;
    :cond_85
    if-eqz p3, :cond_96

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "attachment"

    const/4 v5, 0x0

    const/16 v6, 0xa

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_13b

    .line 119
    :cond_96
    new-instance v11, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .restart local v11       #intent:Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v3, 0x1

    invoke-virtual {v1, v11, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 125
    .end local v10           #info:Landroid/content/pm/ResolveInfo;
    .restart local v2       #info:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_117

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    .line 129
    .local v12, myName:Landroid/content/ComponentName;
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d2

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_139

    .line 140
    :cond_d2
    :try_start_d2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_117

    .line 141
    const-string v1, "DLHandler"

    const-string v3, "onDownloadStart: startActivity for RemoveVideoDownload"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0, v11}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_e8
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d2 .. :try_end_e8} :catch_ea

    goto/16 :goto_40

    .line 145
    :catch_ea
    move-exception v9

    .line 147
    .restart local v9       #ex:Landroid/content/ActivityNotFoundException;
    const-string v1, "DLHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activity not found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " over "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    .end local v9           #ex:Landroid/content/ActivityNotFoundException;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v12           #myName:Landroid/content/ComponentName;
    :cond_117
    :goto_117
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_17a

    .line 176
    const-string v1, "application/vnd.oma.dd+xml"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16a

    .line 177
    const-string v1, "DLHandler"

    const-string v3, "onDownloadStart: onDownloadStartNoStream for RemoveVideoDownload"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static/range {p0 .. p5}, Lcom/android/browser/DownloadHandler;->onDownloadStartNoStream(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_40

    .line 159
    .restart local v11       #intent:Landroid/content/Intent;
    .restart local v12       #myName:Landroid/content/ComponentName;
    :cond_139
    const/4 v2, 0x0

    goto :goto_117

    .line 164
    .end local v2           #info:Landroid/content/pm/ResolveInfo;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v12           #myName:Landroid/content/ComponentName;
    .restart local v10       #info:Landroid/content/pm/ResolveInfo;
    :cond_13b
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "attachment"

    const/4 v5, 0x0

    const/16 v6, 0xa

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_18a

    .line 165
    const-string v1, "application/vnd.ms-playready.initiator+xml"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18a

    .line 167
    new-instance v11, Landroid/content/Intent;

    const-string v1, "PRUI_ACTIVITY"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .restart local v11       #intent:Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0, v11}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move-object v2, v10

    .line 171
    .end local v10           #info:Landroid/content/pm/ResolveInfo;
    .restart local v2       #info:Landroid/content/pm/ResolveInfo;
    goto/16 :goto_40

    .end local v11           #intent:Landroid/content/Intent;
    :cond_16a
    move-object v1, p0

    .line 181
    check-cast v1, Lcom/android/browser/BrowserActivity;

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v1 .. v7}, Lcom/android/browser/DownloadActivityChooser;->chooseActivity(Lcom/android/browser/BrowserActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_40

    :cond_17a
    move-object v1, p0

    .line 186
    check-cast v1, Lcom/android/browser/BrowserActivity;

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v1 .. v7}, Lcom/android/browser/DownloadActivityChooser;->chooseActivity(Lcom/android/browser/BrowserActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_40

    .end local v2           #info:Landroid/content/pm/ResolveInfo;
    .restart local v10       #info:Landroid/content/pm/ResolveInfo;
    :cond_18a
    move-object v2, v10

    .end local v10           #info:Landroid/content/pm/ResolveInfo;
    .restart local v2       #info:Landroid/content/pm/ResolveInfo;
    goto :goto_117
.end method

.method static onDownloadStartNoStream(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 23
    .parameter "activity"
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "privateBrowsing"

    .prologue
    .line 235
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 239
    .local v10, filename:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v13

    .line 240
    .local v13, status:Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    .line 245
    const-string v3, "shared"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 246
    const v3, 0x7f0c0129

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 247
    .local v12, msg:Ljava/lang/String;
    const v14, 0x7f0c0128

    .line 253
    .local v14, title:I
    :goto_2a
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c0013

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 330
    .end local v12           #msg:Ljava/lang/String;
    .end local v14           #title:I
    :cond_4b
    :goto_4b
    return-void

    .line 249
    :cond_4c
    const v3, 0x7f0c0127

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v10, v4, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 250
    .restart local v12       #msg:Ljava/lang/String;
    const v14, 0x7f0c0126

    .restart local v14       #title:I
    goto :goto_2a

    .line 266
    .end local v12           #msg:Ljava/lang/String;
    .end local v14           #title:I
    :cond_5f
    :try_start_5f
    new-instance v16, Landroid/net/WebAddress;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 267
    .local v16, webAddress:Landroid/net/WebAddress;
    invoke-virtual/range {v16 .. v16}, Landroid/net/WebAddress;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/browser/DownloadHandler;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/net/WebAddress;->setPath(Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_75} :catch_e4

    .line 275
    invoke-virtual/range {v16 .. v16}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v6

    .line 276
    .local v6, addressString:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 279
    .local v15, uri:Landroid/net/Uri;
    :try_start_7d
    new-instance v5, Landroid/app/DownloadManager$Request;

    invoke-direct {v5, v15}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V
    :try_end_82
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7d .. :try_end_82} :catch_101

    .line 284
    .local v5, request:Landroid/app/DownloadManager$Request;
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 287
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v5, v3, v10}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 290
    invoke-virtual {v5}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 291
    invoke-virtual/range {v16 .. v16}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 294
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v3, v0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 295
    .local v7, cookies:Ljava/lang/String;
    const-string v3, "cookie"

    invoke-virtual {v5, v3, v7}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 296
    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 299
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/BrowserSettings;->isDownloadInternalMemory()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_111

    .line 300
    const-string v3, "DLHandler"

    const-string v4, "isDownloadInternalMemory : true Phone"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Landroid/app/DownloadManager$Request;->setStorageType(I)Landroid/app/DownloadManager$Request;

    .line 309
    :cond_c1
    :goto_c1
    if-nez p4, :cond_127

    .line 310
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 315
    new-instance v3, Lcom/android/browser/FetchUrlMimeType;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/browser/FetchUrlMimeType;-><init>(Landroid/content/Context;Landroid/app/DownloadManager$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/browser/FetchUrlMimeType;->start()V

    .line 328
    :goto_d5
    const v3, 0x7f0c0131

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4b

    .line 268
    .end local v5           #request:Landroid/app/DownloadManager$Request;
    .end local v6           #addressString:Ljava/lang/String;
    .end local v7           #cookies:Ljava/lang/String;
    .end local v15           #uri:Landroid/net/Uri;
    .end local v16           #webAddress:Landroid/net/WebAddress;
    :catch_e4
    move-exception v9

    .line 271
    .local v9, e:Ljava/lang/Exception;
    const-string v3, "DLHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception trying to parse url:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4b

    .line 280
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v6       #addressString:Ljava/lang/String;
    .restart local v15       #uri:Landroid/net/Uri;
    .restart local v16       #webAddress:Landroid/net/WebAddress;
    :catch_101
    move-exception v9

    .line 281
    .local v9, e:Ljava/lang/IllegalArgumentException;
    const v3, 0x7f0c012a

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4b

    .line 303
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    .restart local v5       #request:Landroid/app/DownloadManager$Request;
    .restart local v7       #cookies:Ljava/lang/String;
    :cond_111
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/BrowserSettings;->isDownloadInternalMemory()Z

    move-result v3

    if-nez v3, :cond_c1

    .line 304
    const-string v3, "DLHandler"

    const-string v4, "isDownloadInternalMemory : false Memory_Card"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/app/DownloadManager$Request;->setStorageType(I)Landroid/app/DownloadManager$Request;

    goto :goto_c1

    .line 318
    :cond_127
    const-string v3, "download"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/DownloadManager;

    .line 320
    .local v11, manager:Landroid/app/DownloadManager;
    new-instance v3, Lcom/android/browser/DownloadHandler$1;

    const-string v4, "Browser download"

    invoke-direct {v3, v4, v11, v5}, Lcom/android/browser/DownloadHandler$1;-><init>(Ljava/lang/String;Landroid/app/DownloadManager;Landroid/app/DownloadManager$Request;)V

    invoke-virtual {v3}, Lcom/android/browser/DownloadHandler$1;->start()V

    goto :goto_d5
.end method
