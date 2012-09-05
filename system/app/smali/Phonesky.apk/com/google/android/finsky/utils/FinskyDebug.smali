.class public Lcom/google/android/finsky/utils/FinskyDebug;
.super Ljava/lang/Object;
.source "FinskyDebug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/FinskyDebug$Environment;
    }
.end annotation


# static fields
.field private static final ORIGINAL_DFE_URL:Ljava/lang/String;

.field private static final ORIGINAL_VENDING_API_URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 30
    sget-object v0, Lcom/google/android/finsky/api/DfeApi;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyDebug;->ORIGINAL_DFE_URL:Ljava/lang/String;

    .line 31
    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-string v1, "api/ApiRequest"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyDebug;->ORIGINAL_VENDING_API_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static buildSelectEnvironmentDialog(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V
    .registers 8
    .parameter "activity"

    .prologue
    .line 56
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 57
    .local v3, environments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/utils/FinskyDebug$Environment;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 58
    .local v5, options:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, v3, v5}, Lcom/google/android/finsky/utils/FinskyDebug;->parseCsv(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;)I

    move-result v1

    .line 61
    .local v1, checkedIndex:I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    .local v2, dialog:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f07014d

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 64
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 65
    .local v4, optionNames:[Ljava/lang/String;
    new-instance v6, Lcom/google/android/finsky/utils/FinskyDebug$1;

    invoke-direct {v6, p0, v3}, Lcom/google/android/finsky/utils/FinskyDebug$1;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Ljava/util/List;)V

    invoke-virtual {v2, v4, v1, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 80
    .local v0, builtDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 81
    return-void
.end method

.method public static isEnvironmentSelected(Landroid/content/Context;Lcom/google/android/finsky/utils/FinskyDebug$Environment;)Z
    .registers 7
    .parameter "context"
    .parameter "environment"

    .prologue
    .line 192
    iget-object v3, p1, Lcom/google/android/finsky/utils/FinskyDebug$Environment;->dfeBaseUrl:Ljava/lang/String;

    .line 193
    .local v3, url:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/common/http/UrlRules;->getRules(Landroid/content/ContentResolver;)Lcom/google/android/common/http/UrlRules;

    move-result-object v2

    .line 194
    .local v2, rules:Lcom/google/android/common/http/UrlRules;
    sget-object v4, Lcom/google/android/finsky/utils/FinskyDebug;->ORIGINAL_DFE_URL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/common/http/UrlRules;->matchRule(Ljava/lang/String;)Lcom/google/android/common/http/UrlRules$Rule;

    move-result-object v1

    .line 195
    .local v1, rule:Lcom/google/android/common/http/UrlRules$Rule;
    sget-object v4, Lcom/google/android/common/http/UrlRules$Rule;->DEFAULT:Lcom/google/android/common/http/UrlRules$Rule;

    if-ne v1, v4, :cond_1b

    sget-object v0, Lcom/google/android/finsky/utils/FinskyDebug;->ORIGINAL_DFE_URL:Ljava/lang/String;

    .line 198
    .local v0, rewritten:Ljava/lang/String;
    :goto_16
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    return v4

    .line 195
    .end local v0           #rewritten:Ljava/lang/String;
    :cond_1b
    sget-object v4, Lcom/google/android/finsky/utils/FinskyDebug;->ORIGINAL_DFE_URL:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/google/android/common/http/UrlRules$Rule;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method private static parseCsv(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;)I
    .registers 25
    .parameter "activity"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/utils/FinskyDebug$Environment;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, environments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/utils/FinskyDebug$Environment;>;"
    .local p2, options:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v17, Lcom/google/android/finsky/utils/FinskyDebug$Environment;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v17 .. v21}, Lcom/google/android/finsky/utils/FinskyDebug$Environment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    const-string v17, "Default"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    const/4 v3, 0x0

    .line 98
    .local v3, checkedIndex:I
    const/4 v14, 0x0

    .line 100
    .local v14, reader:Ljava/io/BufferedReader;
    :try_start_1f
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    .line 101
    .local v10, external:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v17, "marketenvs.csv"

    move-object/from16 v0, v17

    invoke-direct {v5, v10, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 103
    .local v5, csvFile:Ljava/io/File;
    new-instance v15, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/FileReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3a
    .catchall {:try_start_1f .. :try_end_3a} :catchall_de
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3a} :catch_ec

    .line 105
    .end local v14           #reader:Ljava/io/BufferedReader;
    .local v15, reader:Ljava/io/BufferedReader;
    :cond_3a
    :goto_3a
    :try_start_3a
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .local v12, line:Ljava/lang/String;
    if-eqz v12, :cond_d4

    .line 106
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 107
    const-string v17, "#"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3a

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3a

    .line 111
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 112
    .local v11, fields:[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v13, v11, v17

    .line 113
    .local v13, name:Ljava/lang/String;
    const/16 v17, 0x1

    aget-object v6, v11, v17

    .line 114
    .local v6, dfeUrl:Ljava/lang/String;
    const/16 v17, 0x2

    aget-object v16, v11, v17

    .line 115
    .local v16, vendingUrl:Ljava/lang/String;
    const/16 v17, 0x3

    aget-object v4, v11, v17

    .line 116
    .local v4, checkoutToken:Ljava/lang/String;
    const/16 v17, 0x4

    aget-object v9, v11, v17

    .line 118
    .local v9, escrowUrl:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_b3

    .line 119
    const-string v17, "Skipping an environment without a name"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_83
    .catchall {:try_start_3a .. :try_end_83} :catchall_e9
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_83} :catch_84

    goto :goto_3a

    .line 131
    .end local v4           #checkoutToken:Ljava/lang/String;
    .end local v6           #dfeUrl:Ljava/lang/String;
    .end local v9           #escrowUrl:Ljava/lang/String;
    .end local v11           #fields:[Ljava/lang/String;
    .end local v12           #line:Ljava/lang/String;
    .end local v13           #name:Ljava/lang/String;
    .end local v16           #vendingUrl:Ljava/lang/String;
    :catch_84
    move-exception v7

    move-object v14, v15

    .line 132
    .end local v5           #csvFile:Ljava/io/File;
    .end local v10           #external:Ljava/io/File;
    .end local v15           #reader:Ljava/io/BufferedReader;
    .local v7, e:Ljava/lang/Exception;
    .restart local v14       #reader:Ljava/io/BufferedReader;
    :goto_86
    :try_start_86
    const-string v17, "Unable to build env. selector: %s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    const-string v17, "Unable to build environment selector."

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V
    :try_end_ac
    .catchall {:try_start_86 .. :try_end_ac} :catchall_de

    .line 135
    const/4 v3, 0x0

    .line 137
    if-eqz v14, :cond_b2

    .line 139
    :try_start_af
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_e5

    .line 146
    .end local v7           #e:Ljava/lang/Exception;
    :cond_b2
    :goto_b2
    return v3

    .line 123
    .end local v14           #reader:Ljava/io/BufferedReader;
    .restart local v4       #checkoutToken:Ljava/lang/String;
    .restart local v5       #csvFile:Ljava/io/File;
    .restart local v6       #dfeUrl:Ljava/lang/String;
    .restart local v9       #escrowUrl:Ljava/lang/String;
    .restart local v10       #external:Ljava/io/File;
    .restart local v11       #fields:[Ljava/lang/String;
    .restart local v12       #line:Ljava/lang/String;
    .restart local v13       #name:Ljava/lang/String;
    .restart local v15       #reader:Ljava/io/BufferedReader;
    .restart local v16       #vendingUrl:Ljava/lang/String;
    :cond_b3
    :try_start_b3
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v8, Lcom/google/android/finsky/utils/FinskyDebug$Environment;

    move-object/from16 v0, v16

    invoke-direct {v8, v6, v0, v4, v9}, Lcom/google/android/finsky/utils/FinskyDebug$Environment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .local v8, env:Lcom/google/android/finsky/utils/FinskyDebug$Environment;
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/google/android/finsky/utils/FinskyDebug;->isEnvironmentSelected(Landroid/content/Context;Lcom/google/android/finsky/utils/FinskyDebug$Environment;)Z

    move-result v17

    if-eqz v17, :cond_3a

    .line 128
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I
    :try_end_cf
    .catchall {:try_start_b3 .. :try_end_cf} :catchall_e9
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_cf} :catch_84

    move-result v17

    add-int/lit8 v3, v17, -0x1

    goto/16 :goto_3a

    .line 137
    .end local v4           #checkoutToken:Ljava/lang/String;
    .end local v6           #dfeUrl:Ljava/lang/String;
    .end local v8           #env:Lcom/google/android/finsky/utils/FinskyDebug$Environment;
    .end local v9           #escrowUrl:Ljava/lang/String;
    .end local v11           #fields:[Ljava/lang/String;
    .end local v13           #name:Ljava/lang/String;
    .end local v16           #vendingUrl:Ljava/lang/String;
    :cond_d4
    if-eqz v15, :cond_ee

    .line 139
    :try_start_d6
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_d9} :catch_db

    move-object v14, v15

    .line 142
    .end local v15           #reader:Ljava/io/BufferedReader;
    .restart local v14       #reader:Ljava/io/BufferedReader;
    goto :goto_b2

    .line 140
    .end local v14           #reader:Ljava/io/BufferedReader;
    .restart local v15       #reader:Ljava/io/BufferedReader;
    :catch_db
    move-exception v17

    move-object v14, v15

    .line 142
    .end local v15           #reader:Ljava/io/BufferedReader;
    .restart local v14       #reader:Ljava/io/BufferedReader;
    goto :goto_b2

    .line 137
    .end local v5           #csvFile:Ljava/io/File;
    .end local v10           #external:Ljava/io/File;
    .end local v12           #line:Ljava/lang/String;
    :catchall_de
    move-exception v17

    :goto_df
    if-eqz v14, :cond_e4

    .line 139
    :try_start_e1
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_e7

    .line 142
    :cond_e4
    :goto_e4
    throw v17

    .line 140
    .restart local v7       #e:Ljava/lang/Exception;
    :catch_e5
    move-exception v17

    goto :goto_b2

    .end local v7           #e:Ljava/lang/Exception;
    :catch_e7
    move-exception v18

    goto :goto_e4

    .line 137
    .end local v14           #reader:Ljava/io/BufferedReader;
    .restart local v5       #csvFile:Ljava/io/File;
    .restart local v10       #external:Ljava/io/File;
    .restart local v15       #reader:Ljava/io/BufferedReader;
    :catchall_e9
    move-exception v17

    move-object v14, v15

    .end local v15           #reader:Ljava/io/BufferedReader;
    .restart local v14       #reader:Ljava/io/BufferedReader;
    goto :goto_df

    .line 131
    .end local v5           #csvFile:Ljava/io/File;
    .end local v10           #external:Ljava/io/File;
    :catch_ec
    move-exception v7

    goto :goto_86

    .end local v14           #reader:Ljava/io/BufferedReader;
    .restart local v5       #csvFile:Ljava/io/File;
    .restart local v10       #external:Ljava/io/File;
    .restart local v12       #line:Ljava/lang/String;
    .restart local v15       #reader:Ljava/io/BufferedReader;
    :cond_ee
    move-object v14, v15

    .end local v15           #reader:Ljava/io/BufferedReader;
    .restart local v14       #reader:Ljava/io/BufferedReader;
    goto :goto_b2
.end method

.method public static selectEnvironment(Landroid/content/Context;Lcom/google/android/finsky/utils/FinskyDebug$Environment;)V
    .registers 10
    .parameter "context"
    .parameter "newEnvironment"

    .prologue
    const/4 v5, 0x0

    .line 156
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.google.gservices.intent.action.GSERVICES_OVERRIDE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v2, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    .line 158
    .local v3, urlRewrite:Ljava/lang/String;
    const/4 v4, 0x0

    .line 159
    .local v4, vendingUrlRewrite:Ljava/lang/String;
    const/4 v0, 0x0

    .line 160
    .local v0, checkoutAuthTokenType:Ljava/lang/String;
    const/4 v1, 0x0

    .line 161
    .local v1, checkoutEscrowUrl:Ljava/lang/String;
    if-eqz p1, :cond_1c

    .line 162
    iget-object v6, p1, Lcom/google/android/finsky/utils/FinskyDebug$Environment;->dfeBaseUrl:Ljava/lang/String;

    if-nez v6, :cond_41

    move-object v3, v5

    .line 164
    :goto_13
    iget-object v6, p1, Lcom/google/android/finsky/utils/FinskyDebug$Environment;->vendingBaseUrl:Ljava/lang/String;

    if-nez v6, :cond_5d

    move-object v4, v5

    .line 166
    :goto_18
    iget-object v0, p1, Lcom/google/android/finsky/utils/FinskyDebug$Environment;->checkoutTokenType:Ljava/lang/String;

    .line 167
    iget-object v1, p1, Lcom/google/android/finsky/utils/FinskyDebug$Environment;->escrowUrl:Ljava/lang/String;

    .line 169
    :cond_1c
    const-string v5, "url:finsky_dfe_url"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v5, "url:vending_machine_ssl_url"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v5, "url:licensing_url"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    sget-object v5, Lcom/google/android/finsky/config/G;->checkoutAuthTokenType:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    sget-object v5, Lcom/google/android/finsky/config/G;->checkoutEscrowUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 175
    return-void

    .line 162
    :cond_41
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/google/android/finsky/utils/FinskyDebug;->ORIGINAL_DFE_URL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rewrite "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/google/android/finsky/utils/FinskyDebug$Environment;->dfeBaseUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_13

    .line 164
    :cond_5d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/google/android/finsky/utils/FinskyDebug;->ORIGINAL_VENDING_API_URL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rewrite "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/google/android/finsky/utils/FinskyDebug$Environment;->vendingBaseUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_18
.end method

.method public static toggleImageDebugging(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 178
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.gservices.intent.action.GSERVICES_OVERRIDE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/google/android/finsky/config/G;->debugImageSizes:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lcom/google/android/finsky/config/G;->debugImageSizes:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2b

    const/4 v1, 0x1

    :goto_1c
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 182
    return-void

    .line 179
    :cond_2b
    const/4 v1, 0x0

    goto :goto_1c
.end method
