.class public Lcom/vlingo/client/vvs/handlers/LaunchHandler;
.super Ljava/lang/Object;
.source "LaunchHandler.java"

# interfaces
.implements Lcom/vlingo/client/vvs/VVSActionHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected cleanAppName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "name"

    .prologue
    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\W"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 15
    .parameter "action"
    .parameter "dispatcher"

    .prologue
    const/4 v0, 0x0

    .line 41
    const/4 v4, 0x0

    .line 44
    .local v4, launched:Z
    const-string v10, "AppName"

    invoke-virtual {p1, v10}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 45
    .local v5, name:Ljava/lang/String;
    const-string v10, "tagResults"

    invoke-virtual {p1, v10}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 46
    .local v6, nameByTag:Ljava/lang/String;
    const-string v10, "TTS"

    invoke-virtual {p1, v10}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 47
    .local v9, tts:Ljava/lang/String;
    if-eqz v9, :cond_72

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_72

    .line 48
    invoke-virtual {p2, v9}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    .line 55
    :goto_1f
    const-string v10, "ExecName"

    invoke-virtual {p1, v10}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, execName:Ljava/lang/String;
    const-string v10, "ExecPackage"

    invoke-virtual {p1, v10}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, execPackage:Ljava/lang/String;
    if-eqz v2, :cond_3f

    if-eqz v1, :cond_3f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3f

    .line 63
    invoke-virtual {p0, v2, v1, v5, p2}, Lcom/vlingo/client/vvs/handlers/LaunchHandler;->launchAppByActivityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vlingo/client/vvs/VVSDispatcher;)Z

    move-result v4

    .line 66
    :cond_3f
    if-nez v4, :cond_aa

    .line 67
    const-string v10, "|"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7e

    .line 68
    const-string v10, "\\|"

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 69
    .local v7, names:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_50
    array-length v10, v7

    if-ge v3, v10, :cond_5b

    .line 70
    aget-object v10, v7, v3

    invoke-virtual {p0, v10, v0, p2}, Lcom/vlingo/client/vvs/handlers/LaunchHandler;->launchAppByName(Ljava/lang/String;Ljava/lang/String;Lcom/vlingo/client/vvs/VVSDispatcher;)Z

    move-result v4

    .line 71
    if-eqz v4, :cond_7b

    .line 78
    .end local v3           #i:I
    .end local v7           #names:[Ljava/lang/String;
    :cond_5b
    :goto_5b
    if-nez v4, :cond_aa

    .line 79
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "map"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_83

    .line 82
    invoke-virtual {p2}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/vlingo/client/util/GeoUtil;->getMapIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 116
    :cond_71
    :goto_71
    return-object v0

    .line 50
    .end local v1           #execName:Ljava/lang/String;
    .end local v2           #execPackage:Ljava/lang/String;
    :cond_72
    const-string v10, "open"

    invoke-virtual {p2, v10}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2, v5}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    goto :goto_1f

    .line 69
    .restart local v1       #execName:Ljava/lang/String;
    .restart local v2       #execPackage:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v7       #names:[Ljava/lang/String;
    :cond_7b
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    .line 76
    .end local v3           #i:I
    .end local v7           #names:[Ljava/lang/String;
    :cond_7e
    invoke-virtual {p0, v5, v6, p2}, Lcom/vlingo/client/vvs/handlers/LaunchHandler;->launchAppByName(Ljava/lang/String;Ljava/lang/String;Lcom/vlingo/client/vvs/VVSDispatcher;)Z

    move-result v4

    goto :goto_5b

    .line 84
    :cond_83
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "navigat"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_98

    .line 87
    invoke-virtual {p2}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/vlingo/client/util/GeoUtil;->getNavigateIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_71

    .line 88
    :cond_98
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "alarm clock"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_aa

    .line 91
    const-string v10, "clock"

    invoke-virtual {p0, v10, v6, p2}, Lcom/vlingo/client/vvs/handlers/LaunchHandler;->launchAppByName(Ljava/lang/String;Ljava/lang/String;Lcom/vlingo/client/vvs/VVSDispatcher;)Z

    move-result v4

    .line 99
    :cond_aa
    if-nez v4, :cond_71

    .line 101
    const-string v10, "NotFoundUrl"

    invoke-virtual {p1, v10}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 103
    .local v8, notFoundAction:Ljava/lang/String;
    if-eqz v8, :cond_71

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_71

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v0, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 107
    .local v0, backupIntent:Landroid/content/Intent;
    goto :goto_71
.end method

.method protected launchAppByActivityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vlingo/client/vvs/VVSDispatcher;)Z
    .registers 9
    .parameter "packageName"
    .parameter "activityName"
    .parameter "appName"
    .parameter "dispatcher"

    .prologue
    .line 127
    if-eqz p1, :cond_49

    if-eqz p2, :cond_49

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_49

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_49

    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 136
    const/high16 v1, 0x20

    :try_start_29
    invoke-virtual {p4, v0, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->launchIntent(Landroid/content/Intent;I)V

    .line 137
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V
    :try_end_46
    .catch Landroid/content/ActivityNotFoundException; {:try_start_29 .. :try_end_46} :catch_48

    .line 138
    const/4 v1, 0x1

    .line 146
    .end local v0           #intent:Landroid/content/Intent;
    :goto_47
    return v1

    .line 139
    .restart local v0       #intent:Landroid/content/Intent;
    :catch_48
    move-exception v1

    .line 146
    .end local v0           #intent:Landroid/content/Intent;
    :cond_49
    const/4 v1, 0x0

    goto :goto_47
.end method

.method protected launchAppByName(Ljava/lang/String;Ljava/lang/String;Lcom/vlingo/client/vvs/VVSDispatcher;)Z
    .registers 28
    .parameter "name"
    .parameter "nameByTag"
    .parameter "dispatcher"

    .prologue
    .line 161
    move-object/from16 v16, p1

    .line 163
    .local v16, origName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/vlingo/client/vvs/handlers/LaunchHandler;->cleanAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 168
    if-eqz p1, :cond_24e

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_24e

    .line 172
    const-string v21, "vRecorder"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1c

    .line 175
    const-string p1, "voicerecorder"

    .line 177
    :cond_1c
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    .line 178
    .local v4, config:Landroid/content/res/Configuration;
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->getISOLanguage()Ljava/lang/String;

    move-result-object v20

    .line 179
    .local v20, vlingoLanguage:Ljava/lang/String;
    const-string v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, codes:[Ljava/lang/String;
    new-instance v21, Ljava/util/Locale;

    const/16 v22, 0x0

    aget-object v22, v3, v22

    const/16 v23, 0x1

    aget-object v23, v3, v23

    invoke-direct/range {v21 .. v23}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    iput-object v0, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 181
    new-instance v5, Landroid/content/res/Configuration;

    invoke-direct {v5}, Landroid/content/res/Configuration;-><init>()V

    .line 182
    .local v5, configEng:Landroid/content/res/Configuration;
    sget-object v21, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v21

    iput-object v0, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 184
    invoke-virtual/range {p3 .. p3}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 189
    .local v17, pm:Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 190
    .local v8, intent:Landroid/content/Intent;
    const-string v21, "android.intent.action.MAIN"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v21, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    new-instance v15, Landroid/content/Intent;

    const-string v21, "android.intent.action.MAIN"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 195
    .local v15, mainIntent:Landroid/content/Intent;
    const-string v21, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v15, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 198
    .local v2, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p2, :cond_8e

    .line 199
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/vlingo/client/vvs/handlers/LaunchHandler;->cleanAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 201
    :cond_8e
    const/4 v6, 0x0

    .line 202
    .local v6, found:Z
    const/4 v7, 0x0

    .local v7, i:I
    :goto_90
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v7, v0, :cond_199

    .line 203
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/ResolveInfo;

    .line 205
    .local v19, ri:Landroid/content/pm/ResolveInfo;
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 206
    .local v11, labelPhoneSettingsLangCS:Ljava/lang/CharSequence;
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/vlingo/client/vvs/handlers/LaunchHandler;->cleanAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 210
    .local v10, labelPhoneSettingsLang:Ljava/lang/String;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v12, v0, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 211
    .local v12, labelRes:I
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    check-cast v13, Ljava/lang/String;

    .line 214
    .local v13, labelString:Ljava/lang/String;
    if-nez v12, :cond_100

    if-nez v13, :cond_100

    .line 217
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v12, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 218
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .end local v13           #labelString:Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .line 220
    .restart local v13       #labelString:Ljava/lang/String;
    if-nez v13, :cond_100

    .line 221
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 225
    :cond_100
    const-string v14, ""

    .line 226
    .local v14, labelVlingoSettingsLang:Ljava/lang/String;
    const-string v9, ""

    .line 228
    .local v9, labelEnglish:Ljava/lang/String;
    if-eqz v12, :cond_14e

    .line 230
    :try_start_106
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v18

    .line 231
    .local v18, res:Landroid/content/res/Resources;
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 232
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/vlingo/client/vvs/handlers/LaunchHandler;->cleanAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 233
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 234
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/vlingo/client/vvs/handlers/LaunchHandler;->cleanAppName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_14d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_106 .. :try_end_14d} :catch_254

    move-result-object v14

    .line 240
    .end local v18           #res:Landroid/content/res/Resources;
    :cond_14e
    :goto_14e
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_170

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_170

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_170

    if-eqz v13, :cond_1c5

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1c5

    .line 244
    :cond_170
    new-instance v21, Landroid/content/ComponentName;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 245
    const/4 v6, 0x1

    .line 258
    .end local v9           #labelEnglish:Ljava/lang/String;
    .end local v10           #labelPhoneSettingsLang:Ljava/lang/String;
    .end local v11           #labelPhoneSettingsLangCS:Ljava/lang/CharSequence;
    .end local v12           #labelRes:I
    .end local v13           #labelString:Ljava/lang/String;
    .end local v14           #labelVlingoSettingsLang:Ljava/lang/String;
    .end local v19           #ri:Landroid/content/pm/ResolveInfo;
    :cond_199
    :goto_199
    if-eqz v6, :cond_215

    .line 262
    const/high16 v21, 0x20

    :try_start_19d
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v8, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->launchIntent(Landroid/content/Intent;I)V

    .line 265
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "launch "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V
    :try_end_1c2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_19d .. :try_end_1c2} :catch_252

    .line 266
    const/16 v21, 0x1

    .line 282
    .end local v2           #appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #codes:[Ljava/lang/String;
    .end local v4           #config:Landroid/content/res/Configuration;
    .end local v5           #configEng:Landroid/content/res/Configuration;
    .end local v6           #found:Z
    .end local v7           #i:I
    .end local v8           #intent:Landroid/content/Intent;
    .end local v15           #mainIntent:Landroid/content/Intent;
    .end local v17           #pm:Landroid/content/pm/PackageManager;
    .end local v20           #vlingoLanguage:Ljava/lang/String;
    :goto_1c4
    return v21

    .line 248
    .restart local v2       #appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3       #codes:[Ljava/lang/String;
    .restart local v4       #config:Landroid/content/res/Configuration;
    .restart local v5       #configEng:Landroid/content/res/Configuration;
    .restart local v6       #found:Z
    .restart local v7       #i:I
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v9       #labelEnglish:Ljava/lang/String;
    .restart local v10       #labelPhoneSettingsLang:Ljava/lang/String;
    .restart local v11       #labelPhoneSettingsLangCS:Ljava/lang/CharSequence;
    .restart local v12       #labelRes:I
    .restart local v13       #labelString:Ljava/lang/String;
    .restart local v14       #labelVlingoSettingsLang:Ljava/lang/String;
    .restart local v15       #mainIntent:Landroid/content/Intent;
    .restart local v17       #pm:Landroid/content/pm/PackageManager;
    .restart local v19       #ri:Landroid/content/pm/ResolveInfo;
    .restart local v20       #vlingoLanguage:Ljava/lang/String;
    :cond_1c5
    if-eqz p2, :cond_211

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_211

    .line 249
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1e7

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1e7

    if-eqz v13, :cond_211

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_211

    .line 252
    :cond_1e7
    new-instance v21, Landroid/content/ComponentName;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 253
    const/4 v6, 0x1

    .line 254
    goto :goto_199

    .line 202
    :cond_211
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_90

    .line 277
    .end local v9           #labelEnglish:Ljava/lang/String;
    .end local v10           #labelPhoneSettingsLang:Ljava/lang/String;
    .end local v11           #labelPhoneSettingsLangCS:Ljava/lang/CharSequence;
    .end local v12           #labelRes:I
    .end local v13           #labelString:Ljava/lang/String;
    .end local v14           #labelVlingoSettingsLang:Ljava/lang/String;
    .end local v19           #ri:Landroid/content/pm/ResolveInfo;
    :cond_215
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, "alarmclock"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_24e

    .line 278
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p3 .. p3}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v22

    const v23, 0x7f090303

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p3 .. p3}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/vlingo/client/util/ActivityUtil;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    .line 282
    .end local v2           #appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #codes:[Ljava/lang/String;
    .end local v4           #config:Landroid/content/res/Configuration;
    .end local v5           #configEng:Landroid/content/res/Configuration;
    .end local v6           #found:Z
    .end local v7           #i:I
    .end local v8           #intent:Landroid/content/Intent;
    .end local v15           #mainIntent:Landroid/content/Intent;
    .end local v17           #pm:Landroid/content/pm/PackageManager;
    .end local v20           #vlingoLanguage:Ljava/lang/String;
    :cond_24e
    :goto_24e
    const/16 v21, 0x0

    goto/16 :goto_1c4

    .line 267
    .restart local v2       #appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3       #codes:[Ljava/lang/String;
    .restart local v4       #config:Landroid/content/res/Configuration;
    .restart local v5       #configEng:Landroid/content/res/Configuration;
    .restart local v6       #found:Z
    .restart local v7       #i:I
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v15       #mainIntent:Landroid/content/Intent;
    .restart local v17       #pm:Landroid/content/pm/PackageManager;
    .restart local v20       #vlingoLanguage:Ljava/lang/String;
    :catch_252
    move-exception v21

    goto :goto_24e

    .line 235
    .restart local v9       #labelEnglish:Ljava/lang/String;
    .restart local v10       #labelPhoneSettingsLang:Ljava/lang/String;
    .restart local v11       #labelPhoneSettingsLangCS:Ljava/lang/CharSequence;
    .restart local v12       #labelRes:I
    .restart local v13       #labelString:Ljava/lang/String;
    .restart local v14       #labelVlingoSettingsLang:Ljava/lang/String;
    .restart local v19       #ri:Landroid/content/pm/ResolveInfo;
    :catch_254
    move-exception v21

    goto/16 :goto_14e
.end method
