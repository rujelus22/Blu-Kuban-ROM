.class public Lcom/sprint/dsa/Action;
.super Ljava/lang/Object;
.source "Action.java"


# static fields
.field public static final ACTION_ACTIVATE:Ljava/lang/String; = "activate"

.field public static final ACTION_ACTIVITY:Ljava/lang/String; = "activity"

.field public static final ACTION_APP:Ljava/lang/String; = "app"

.field public static final ACTION_CALL:Ljava/lang/String; = "call"

.field public static final ACTION_CONNECTION:Ljava/lang/String; = "connection"

.field public static final ACTION_CUSTOMER_CARE:Ljava/lang/String; = "customer_care"

.field public static final ACTION_DIAL:Ljava/lang/String; = "dial"

.field public static final ACTION_DSA:Ljava/lang/String; = "dsa"

.field public static final ACTION_FACTORY_RESET:Ljava/lang/String; = "factory_reset"

.field public static final ACTION_FUNCTION:Ljava/lang/String; = "function"

.field public static final ACTION_MAP:Ljava/lang/String; = "map"

.field public static final ACTION_MORE:Ljava/lang/String; = "more"

.field public static final ACTION_MORE_DIAGNOSTICS:Ljava/lang/String; = "more_diagnostics"

.field public static final ACTION_NONE:Ljava/lang/String; = "none"

.field public static final ACTION_PAGE:Ljava/lang/String; = "page"

.field public static final ACTION_SEARCH:Ljava/lang/String; = "search"

.field public static final ACTION_SMS:Ljava/lang/String; = "sms"

.field public static final ACTION_WEB:Ljava/lang/String; = "web"

.field private static final NAI_AUTH_TOKEN_PATTERN:Ljava/lang/String; = "%NAI_AUTH_TOKEN%"

.field private static final NAI_PATTERN:Ljava/lang/String; = "%NAI%"

.field private static final NAI_PATTERN_PREFIX:Ljava/lang/String; = "%NAI"

.field public static final STAR2:Ljava/lang/String; = "tel:*2"

.field private static final TAG:Ljava/lang/String; = "SprintZone_Action"

.field public static final URI_ABOUT_PHONE:Ljava/lang/String; = "about_phone"

.field public static final URI_CELL_LOCATION:Ljava/lang/String; = "cell_location"

.field public static final URI_CICD:Ljava/lang/String; = "cicd"

.field public static final URI_CIFO:Ljava/lang/String; = "cifo"

.field public static final URI_CIPRL:Ljava/lang/String; = "ciprl"

.field public static final URI_NETWORK_INFO:Ljava/lang/String; = "network_info"

.field public static final URI_SIGNAL_STRENGTH:Ljava/lang/String; = "signal_strength"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAuthData(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 15
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 323
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 325
    .local v9, uriString:Ljava/lang/String;
    const/4 v5, 0x0

    .line 326
    .local v5, meid:Ljava/lang/String;
    const/4 v6, 0x0

    .line 327
    .local v6, nai:Ljava/lang/String;
    const/4 v2, 0x0

    .line 330
    .local v2, encodedNai:Ljava/lang/String;
    :try_start_7
    new-instance v8, Lcom/sprint/internal/SystemProperties;

    invoke-direct {v8, p0}, Lcom/sprint/internal/SystemProperties;-><init>(Landroid/content/Context;)V

    .line 331
    .local v8, sp:Lcom/sprint/internal/SystemProperties;
    const/16 v10, 0x1e

    invoke-virtual {v8, v10}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 332
    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_4f

    move-result-object v6

    .line 336
    .end local v8           #sp:Lcom/sprint/internal/SystemProperties;
    :goto_17
    const-string v10, "%NAI"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4e

    .line 338
    if-eqz v6, :cond_22

    move-object v2, v6

    .line 340
    :cond_22
    :try_start_22
    const-string v10, "UTF-8"

    invoke-static {v6, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_27
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_22 .. :try_end_27} :catch_58

    move-result-object v2

    .line 344
    :goto_28
    const-string v10, "%NAI%"

    invoke-virtual {v9, v10, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 345
    const-string v10, "%NAI_AUTH_TOKEN%"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4a

    .line 346
    new-instance v3, Lcom/sprint/dsa/DeviceAuthenticator;

    invoke-direct {v3}, Lcom/sprint/dsa/DeviceAuthenticator;-><init>()V

    .line 348
    .local v3, esnAuthenticator:Lcom/sprint/dsa/DeviceAuthenticator;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 350
    .local v7, now:Ljava/util/Date;
    :try_start_40
    invoke-virtual {v3, v6, v5, v7}, Lcom/sprint/dsa/DeviceAuthenticator;->createAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, authToken:Ljava/lang/String;
    const-string v10, "%NAI_AUTH_TOKEN%"

    invoke-virtual {v9, v10, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_49} :catch_74

    move-result-object v9

    .line 359
    .end local v0           #authToken:Ljava/lang/String;
    .end local v3           #esnAuthenticator:Lcom/sprint/dsa/DeviceAuthenticator;
    .end local v7           #now:Ljava/util/Date;
    :cond_4a
    :goto_4a
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 361
    .end local p1
    :cond_4e
    return-object p1

    .line 333
    .restart local p1
    :catch_4f
    move-exception v1

    .line 334
    .local v1, e:Ljava/lang/Exception;
    const-string v10, "SprintZone_Action"

    const-string v11, "SysPorp error"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 341
    .end local v1           #e:Ljava/lang/Exception;
    :catch_58
    move-exception v4

    .line 342
    .local v4, ex:Ljava/io/UnsupportedEncodingException;
    const-string v10, "SprintZone_Action"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Encoding \'"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    .line 352
    .end local v4           #ex:Ljava/io/UnsupportedEncodingException;
    .restart local v3       #esnAuthenticator:Lcom/sprint/dsa/DeviceAuthenticator;
    .restart local v7       #now:Ljava/util/Date;
    :catch_74
    move-exception v4

    .line 353
    .local v4, ex:Ljava/lang/Exception;
    const-string v10, "SprintZone_Action"

    const-string v11, "Exception - Couldn\'t create NAI_AUTH_TOKEN"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 11
    .parameter "context"
    .parameter "action"
    .parameter "uri"
    .parameter "extra"
    .parameter "packId"

    .prologue
    .line 69
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/sprint/dsa/Action;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 21
    .parameter "context"
    .parameter "action"
    .parameter "uri"
    .parameter "extra"
    .parameter "packId"
    .parameter "extras"

    .prologue
    .line 73
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v7, intent:Landroid/content/Intent;
    if-eqz p5, :cond_c

    .line 75
    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 78
    :cond_c
    if-eqz p1, :cond_24

    const-string v13, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_24

    if-eqz p2, :cond_24

    const-string v13, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_26

    :cond_24
    move-object v13, v7

    .line 233
    :goto_25
    return-object v13

    .line 84
    :cond_26
    const-string v13, "page"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_40

    .line 85
    const-class v13, Lcom/sprint/dsa/PageActivity;

    invoke-virtual {v7, p0, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 86
    const-string v13, "SPRINT_ZONE_PAGE"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3e
    :goto_3e
    move-object v13, v7

    .line 233
    goto :goto_25

    .line 88
    :cond_40
    const-string v13, "app"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    .line 92
    :try_start_4a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 93
    .local v11, manager:Landroid/content/pm/PackageManager;
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v11, v0, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 94
    .local v6, info:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 95
    if-eqz p4, :cond_3e

    .line 96
    const-string v13, "com.sprint.extra.PACK_ID"

    move-object/from16 v0, p4

    invoke-virtual {v7, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const/high16 v13, 0x8

    invoke-virtual {v7, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_69
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4a .. :try_end_69} :catch_6a

    goto :goto_3e

    .line 102
    .end local v6           #info:Landroid/content/pm/PackageInfo;
    .end local v11           #manager:Landroid/content/pm/PackageManager;
    :catch_6a
    move-exception v4

    .line 106
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "android.intent.action.VIEW"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    if-eqz p3, :cond_8e

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_8e

    .line 109
    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-static {p0, v13}, Lcom/sprint/dsa/Action;->getUri2(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v12

    .line 110
    .local v12, uri2:Landroid/net/Uri;
    if-eqz v12, :cond_86

    .line 112
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    .line 114
    :cond_86
    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_3e

    .line 116
    .end local v12           #uri2:Landroid/net/Uri;
    :cond_8e
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "market://details?id="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_3e

    .line 120
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_a7
    const-string v13, "sms"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_cb

    .line 121
    const-string v13, "android.intent.action.VIEW"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v13, "address"

    move-object/from16 v0, p2

    invoke-virtual {v7, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v13, "sms_body"

    move-object/from16 v0, p3

    invoke-virtual {v7, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v13, "vnd.android-dir/mms-sms"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3e

    .line 126
    :cond_cb
    const-string v13, "web"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_df

    const-string v13, "map"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f7

    .line 128
    :cond_df
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 130
    .local v8, link:Landroid/net/Uri;
    invoke-static {p0, v8}, Lcom/sprint/dsa/Action;->getUri2(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v12

    .line 131
    .restart local v12       #uri2:Landroid/net/Uri;
    if-eqz v12, :cond_ea

    .line 133
    move-object v8, v12

    .line 135
    :cond_ea
    invoke-static {p0, v8}, Lcom/sprint/dsa/Action;->addAuthData(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 136
    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.intent.action.VIEW"

    invoke-direct {v13, v14, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_25

    .line 138
    .end local v8           #link:Landroid/net/Uri;
    .end local v12           #uri2:Landroid/net/Uri;
    :cond_f7
    const-string v13, "call"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_140

    .line 139
    invoke-static {}, Lcom/sprint/dsa/dss/DsaDiag;->isSamsungTablet()Z

    move-result v13

    if-eqz v13, :cond_10d

    .line 140
    invoke-static/range {p2 .. p2}, Lcom/sprint/dsa/Action;->createScrtnIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    goto/16 :goto_3e

    .line 142
    :cond_10d
    const-string v13, "tel:##"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 143
    .local v5, index:I
    const/4 v13, -0x1

    if-le v5, v13, :cond_132

    .line 144
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "tel:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 146
    :cond_132
    const-string v13, "android.intent.action.CALL"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_3e

    .line 150
    .end local v5           #index:I
    :cond_140
    const-string v13, "dial"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_189

    .line 151
    invoke-static {}, Lcom/sprint/dsa/dss/DsaDiag;->isSamsungTablet()Z

    move-result v13

    if-eqz v13, :cond_156

    .line 152
    invoke-static/range {p2 .. p2}, Lcom/sprint/dsa/Action;->createScrtnIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    goto/16 :goto_3e

    .line 154
    :cond_156
    const-string v13, "tel:##"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 155
    .restart local v5       #index:I
    const/4 v13, -0x1

    if-le v5, v13, :cond_17b

    .line 156
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "tel:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 159
    :cond_17b
    const-string v13, "android.intent.action.DIAL"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_3e

    .line 163
    .end local v5           #index:I
    :cond_189
    const-string v13, "search"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a1

    .line 164
    const-string v13, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v13, "query"

    move-object/from16 v0, p2

    invoke-virtual {v7, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3e

    .line 167
    :cond_1a1
    const-string v13, "more"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1c0

    .line 168
    const-class v13, Lcom/sprint/dsa/PageMore;

    invoke-virtual {v7, p0, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 169
    const-string v13, "id"

    move-object/from16 v0, p2

    invoke-virtual {v7, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v13, "title"

    move-object/from16 v0, p3

    invoke-virtual {v7, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3e

    .line 172
    :cond_1c0
    const-string v13, "more_diagnostics"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1df

    .line 173
    const-class v13, Lcom/sprint/dsa/DiagnosticsActivity;

    invoke-virtual {v7, p0, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 174
    const-string v13, "id"

    move-object/from16 v0, p2

    invoke-virtual {v7, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v13, "title"

    move-object/from16 v0, p3

    invoke-virtual {v7, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3e

    .line 177
    :cond_1df
    const-string v13, "customer_care"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1ec

    .line 179
    const/4 v13, 0x0

    goto/16 :goto_25

    .line 181
    :cond_1ec
    const-string v13, "none"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3e

    .line 184
    const-string v13, "activity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_207

    .line 185
    move-object/from16 v1, p2

    .line 186
    .local v1, className:Ljava/lang/String;
    invoke-virtual {v7, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3e

    .line 193
    .end local v1           #className:Ljava/lang/String;
    :cond_207
    const-string v13, "connection"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3e

    .line 195
    const-string v13, "dsa"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3e

    .line 196
    sget-boolean v13, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-nez v13, :cond_28a

    .line 197
    new-instance v2, Lcom/sprint/dsa/dss/DsaSystem;

    invoke-direct {v2, p0}, Lcom/sprint/dsa/dss/DsaSystem;-><init>(Landroid/content/Context;)V

    .line 199
    .local v2, ds:Lcom/sprint/dsa/dss/DsaSystem;
    invoke-virtual {v2}, Lcom/sprint/dsa/dss/DsaSystem;->warmInit()Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, dsUrl:Ljava/lang/String;
    :try_start_228
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 204
    .local v9, localUrl:Ljava/net/URL;
    const/16 v13, 0x3f

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_263

    .line 205
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_252
    .catch Ljava/lang/Exception; {:try_start_228 .. :try_end_252} :catch_27f

    move-result-object p2

    .line 226
    .end local v2           #ds:Lcom/sprint/dsa/dss/DsaSystem;
    .end local v3           #dsUrl:Ljava/lang/String;
    .end local v9           #localUrl:Ljava/net/URL;
    :goto_253
    new-instance v7, Landroid/content/Intent;

    .end local v7           #intent:Landroid/content/Intent;
    const-class v13, Lcom/sprint/dsa/dss/DsaClient;

    invoke-direct {v7, p0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    .restart local v7       #intent:Landroid/content/Intent;
    const-string v13, "com.sprint.dsa.query"

    move-object/from16 v0, p2

    invoke-virtual {v7, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3e

    .line 207
    .restart local v2       #ds:Lcom/sprint/dsa/dss/DsaSystem;
    .restart local v3       #dsUrl:Ljava/lang/String;
    .restart local v9       #localUrl:Ljava/net/URL;
    :cond_263
    :try_start_263
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "&"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_27d
    .catch Ljava/lang/Exception; {:try_start_263 .. :try_end_27d} :catch_27f

    move-result-object p2

    goto :goto_253

    .line 210
    .end local v9           #localUrl:Ljava/net/URL;
    :catch_27f
    move-exception v4

    .line 211
    .local v4, e:Ljava/lang/Exception;
    const-string v13, "SprintZone_Action"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_253

    .line 216
    .end local v2           #ds:Lcom/sprint/dsa/dss/DsaSystem;
    .end local v3           #dsUrl:Ljava/lang/String;
    .end local v4           #e:Ljava/lang/Exception;
    :cond_28a
    const/4 v9, 0x0

    .line 218
    .restart local v9       #localUrl:Ljava/net/URL;
    :try_start_28b
    new-instance v10, Ljava/net/URL;

    sget-object v13, Lcom/sprint/dsa/Util;->TEST_URL:Ljava/lang/String;

    invoke-direct {v10, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_292
    .catch Ljava/lang/Exception; {:try_start_28b .. :try_end_292} :catch_2af

    .end local v9           #localUrl:Ljava/net/URL;
    .local v10, localUrl:Ljava/net/URL;
    move-object v9, v10

    .line 223
    .end local v10           #localUrl:Ljava/net/URL;
    .restart local v9       #localUrl:Ljava/net/URL;
    :goto_293
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_253

    .line 219
    :catch_2af
    move-exception v13

    goto :goto_293
.end method

.method private static createScrtnIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .parameter "uri"

    .prologue
    .line 310
    const-string v2, "tel:##72786#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 311
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.hiddenmenu"

    const-string v3, "com.android.hiddenmenu.SCRTN"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .local v1, toLaunch:Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 315
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 318
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #toLaunch:Landroid/content/ComponentName;
    :goto_25
    return-object v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public static doAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "context"
    .parameter "action"
    .parameter "uri"
    .parameter "extra"
    .parameter "packId"

    .prologue
    .line 237
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/sprint/dsa/Action;->doAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static doAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 11
    .parameter "context"
    .parameter "action"
    .parameter "uri"
    .parameter "extra"
    .parameter "packId"
    .parameter "extras"

    .prologue
    const/4 v4, 0x1

    .line 243
    const-string v3, "function"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 246
    :try_start_9
    new-instance v0, Lcom/sprint/internal/OMADM;

    invoke-direct {v0, p0}, Lcom/sprint/internal/OMADM;-><init>(Landroid/content/Context;)V

    .line 247
    .local v0, dsaOMA:Lcom/sprint/internal/OMADM;
    const-string v3, "cicd"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 248
    invoke-virtual {v0}, Lcom/sprint/internal/OMADM;->startCIDC()V

    .line 278
    .end local v0           #dsaOMA:Lcom/sprint/internal/OMADM;
    :cond_19
    :goto_19
    return v4

    .line 250
    .restart local v0       #dsaOMA:Lcom/sprint/internal/OMADM;
    :cond_1a
    const-string v3, "ciprl"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 251
    invoke-virtual {v0}, Lcom/sprint/internal/OMADM;->startCIPRL()V

    goto :goto_19

    .line 257
    .end local v0           #dsaOMA:Lcom/sprint/internal/OMADM;
    :catch_26
    move-exception v3

    goto :goto_19

    .line 253
    .restart local v0       #dsaOMA:Lcom/sprint/internal/OMADM;
    :cond_28
    const-string v3, "cifo"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 254
    invoke-virtual {v0}, Lcom/sprint/internal/OMADM;->startCIFUMO()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_33} :catch_26

    goto :goto_19

    .line 261
    .end local v0           #dsaOMA:Lcom/sprint/internal/OMADM;
    :cond_34
    const-string v3, "connection"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 265
    invoke-static/range {p0 .. p5}, Lcom/sprint/dsa/Action;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 267
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_19

    .line 268
    :try_start_42
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_19

    .line 271
    :catch_46
    move-exception v1

    .line 274
    .local v1, e:Ljava/lang/Exception;
    const v3, 0x7f080016

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_19
.end method

.method protected static getUri2(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 9
    .parameter "context"
    .parameter "link"

    .prologue
    const/4 v3, 0x0

    .line 282
    if-nez p1, :cond_4

    .line 300
    :cond_3
    :goto_3
    return-object v3

    .line 284
    :cond_4
    :try_start_4
    const-string v4, "uri_2"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, uri2:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 287
    const-string v4, "com.sprint.ce.updater"

    invoke-static {p0, v4}, Lcom/sprint/dsa/Util;->getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 288
    .local v2, version:I
    const/16 v4, 0x7d0

    if-lt v2, v4, :cond_3

    .line 291
    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1d} :catch_1f

    move-result-object v3

    goto :goto_3

    .line 297
    .end local v1           #uri2:Ljava/lang/String;
    .end local v2           #version:I
    :catch_1f
    move-exception v0

    .line 298
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "SprintZone_Action"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error parsing uri_2: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method
