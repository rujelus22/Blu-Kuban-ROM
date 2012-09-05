.class public Lcom/sprint/id/updater/ConfigurationActivity;
.super Landroid/app/Activity;
.source "ConfigurationActivity.java"


# static fields
.field private static final ACTION_UPDATE_COMPLETED:Ljava/lang/String; = "com.sprint.id.updater.ACTION_UPDATE_COMPLETED"

.field public static final ACTION_UPGRADE_CHECK:Ljava/lang/String; = "com.sprint.action.UPGRADE_CHECK"

.field public static final EXTRA_ALT_TITLE:Ljava/lang/String; = "com.sprint.ce.updater.EXTRA_ALT_TITLE"

.field public static final EXTRA_NO_PROMPT:Ljava/lang/String; = "com.sprint.ce.updater.EXTRA_NO_PROMPT"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "EXTRA_PACKAGE_NAME"

.field public static final EXTRA_POST_UPDATE_ACTION:Ljava/lang/String; = "com.sprint.ce.updater.EXTRA_POST_UPDATE_ACTION"

.field private static props:Ljava/util/Properties;


# instance fields
.field private log:Lcom/sprint/id/logger/Logger;

.field private mAppWidgetId:I

.field private mNoPrompt:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    const-class v0, Lcom/sprint/id/updater/ConfigurationActivity;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/id/updater/ConfigurationActivity;->log:Lcom/sprint/id/logger/Logger;

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/sprint/id/updater/ConfigurationActivity;->mAppWidgetId:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/id/updater/ConfigurationActivity;->mNoPrompt:Z

    .line 21
    return-void
.end method

.method private configDone()V
    .registers 4

    .prologue
    .line 137
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v0, resultValue:Landroid/content/Intent;
    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/sprint/id/updater/ConfigurationActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sprint/id/updater/ConfigurationActivity;->setResult(ILandroid/content/Intent;)V

    .line 140
    return-void
.end method

.method private init()V
    .registers 8

    .prologue
    .line 69
    sget-object v4, Lcom/sprint/id/updater/ConfigurationActivity;->props:Ljava/util/Properties;

    if-nez v4, :cond_36

    .line 71
    :try_start_4
    invoke-virtual {p0}, Lcom/sprint/id/updater/ConfigurationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 72
    .local v3, resources:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 73
    .local v0, assetManager:Landroid/content/res/AssetManager;
    const-string v4, "updater.properties"

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 74
    .local v2, inputStream:Ljava/io/InputStream;
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    sput-object v4, Lcom/sprint/id/updater/ConfigurationActivity;->props:Ljava/util/Properties;

    .line 75
    sget-object v4, Lcom/sprint/id/updater/ConfigurationActivity;->props:Ljava/util/Properties;

    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 76
    iget-object v4, p0, Lcom/sprint/id/updater/ConfigurationActivity;->log:Lcom/sprint/id/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Loaded the updater properties for package: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sprint/id/updater/ConfigurationActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_36} :catch_37

    .line 81
    .end local v0           #assetManager:Landroid/content/res/AssetManager;
    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v3           #resources:Landroid/content/res/Resources;
    :cond_36
    :goto_36
    return-void

    .line 77
    :catch_37
    move-exception v1

    .line 78
    .local v1, e:Ljava/io/IOException;
    iget-object v4, p0, Lcom/sprint/id/updater/ConfigurationActivity;->log:Lcom/sprint/id/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to load the updater properties for package: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sprint/id/updater/ConfigurationActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_36
.end method

.method private invokeUpdater()V
    .registers 9

    .prologue
    .line 85
    :try_start_0
    iget-object v5, p0, Lcom/sprint/id/updater/ConfigurationActivity;->log:Lcom/sprint/id/logger/Logger;

    const-string v6, "INVOKING UPDATER..."

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 86
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.sprint.action.UPGRADE_CHECK"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, i:Landroid/content/Intent;
    sget-object v5, Lcom/sprint/id/updater/ConfigurationActivity;->props:Ljava/util/Properties;

    const-string v6, "update.base.url"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, url:Ljava/lang/String;
    sget-object v5, Lcom/sprint/id/updater/ConfigurationActivity;->props:Ljava/util/Properties;

    const-string v6, "json.name"

    const-string v7, "latest.json"

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, jsonName:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 91
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 90
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 96
    const-string v5, "com.sprint.ce.updater.EXTRA_ALT_TITLE"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Performing update check for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sprint/id/updater/ConfigurationActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p0, v7}, Lcom/sprint/id/updater/ConfigurationActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v5, "com.sprint.ce.updater.EXTRA_NO_PROMPT"

    iget-boolean v6, p0, Lcom/sprint/id/updater/ConfigurationActivity;->mNoPrompt:Z

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.sprint.id.updater.ACTION_UPDATE_COMPLETED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v3, postUpdateAction:Landroid/content/Intent;
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const/high16 v5, 0x400

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 105
    const-string v5, "EXTRA_PACKAGE_NAME"

    invoke-virtual {p0}, Lcom/sprint/id/updater/ConfigurationActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v5, "com.sprint.ce.updater.EXTRA_POST_UPDATE_ACTION"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 108
    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5}, Lcom/sprint/id/updater/ConfigurationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 109
    invoke-direct {p0}, Lcom/sprint/id/updater/ConfigurationActivity;->configDone()V
    :try_end_b1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_b1} :catch_b2

    .line 113
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #jsonName:Ljava/lang/String;
    .end local v3           #postUpdateAction:Landroid/content/Intent;
    .end local v4           #url:Ljava/lang/String;
    :goto_b1
    return-void

    .line 110
    :catch_b2
    move-exception v0

    .line 111
    .local v0, e:Ljava/lang/RuntimeException;
    iget-object v5, p0, Lcom/sprint/id/updater/ConfigurationActivity;->log:Lcom/sprint/id/logger/Logger;

    const-string v6, "Exception: "

    invoke-virtual {v5, v6, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 121
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 123
    packed-switch p2, :pswitch_data_38

    .line 128
    const-string v0, "This should never happen"

    .line 130
    .local v0, message:Ljava/lang/String;
    :goto_8
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 131
    invoke-direct {p0}, Lcom/sprint/id/updater/ConfigurationActivity;->configDone()V

    .line 132
    invoke-virtual {p0}, Lcom/sprint/id/updater/ConfigurationActivity;->finish()V

    .line 133
    return-void

    .line 125
    .end local v0           #message:Ljava/lang/String;
    :pswitch_17
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Update of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sprint/id/updater/ConfigurationActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p0, v2}, Lcom/sprint/id/updater/ConfigurationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " canceled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .restart local v0       #message:Ljava/lang/String;
    goto :goto_8

    .line 123
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_17
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "saveBundle"

    .prologue
    const/4 v5, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-direct {p0}, Lcom/sprint/id/updater/ConfigurationActivity;->init()V

    .line 42
    invoke-virtual {p0}, Lcom/sprint/id/updater/ConfigurationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 43
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 44
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_21

    .line 45
    const-string v3, "appWidgetId"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sprint/id/updater/ConfigurationActivity;->mAppWidgetId:I

    .line 47
    const-string v3, "com.sprint.ce.updater.EXTRA_NO_PROMPT"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sprint/id/updater/ConfigurationActivity;->mNoPrompt:Z

    .line 50
    :cond_21
    const-string v3, "com.sprint.id.updater.ACTION_UPDATE_COMPLETED"

    invoke-virtual {p0}, Lcom/sprint/id/updater/ConfigurationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-virtual {p0}, Lcom/sprint/id/updater/ConfigurationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "EXTRA_PACKAGE_NAME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sprint/id/updater/ConfigurationActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 55
    invoke-direct {p0}, Lcom/sprint/id/updater/ConfigurationActivity;->configDone()V

    .line 56
    invoke-virtual {p0}, Lcom/sprint/id/updater/ConfigurationActivity;->finish()V

    .line 65
    :goto_4b
    return-void

    .line 60
    :cond_4c
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/sprint/id/updater/ConfigurationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 61
    .local v2, mNotificationManager:Landroid/app/NotificationManager;
    invoke-virtual {v2, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 62
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/sprint/id/updater/ConfigurationActivity;->requestWindowFeature(I)Z

    .line 63
    invoke-direct {p0}, Lcom/sprint/id/updater/ConfigurationActivity;->invokeUpdater()V

    goto :goto_4b
.end method
