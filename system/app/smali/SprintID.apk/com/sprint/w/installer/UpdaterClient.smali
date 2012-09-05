.class public Lcom/sprint/w/installer/UpdaterClient;
.super Landroid/app/Activity;
.source "UpdaterClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/w/installer/UpdaterClient$UpdateCheckResult;
    }
.end annotation


# static fields
.field public static final ACTION_COMPLETE_UPDATE:Ljava/lang/String; = "com.sprint.w.installer.ACTION_COMPLETE_UPDATE"

.field public static final ACTION_INTERACTIVE_UPDATE:Ljava/lang/String; = "com.sprint.w.installer.ACTION_INTERACTIVE_UPDATE"

.field public static final ACTION_UPGRADE_CHECK:Ljava/lang/String; = "com.sprint.action.UPGRADE_CHECK"

.field public static final EXTRA_ALT_TITLE:Ljava/lang/String; = "com.sprint.ce.updater.EXTRA_ALT_TITLE"

.field public static final EXTRA_ALT_UPDATE_URL:Ljava/lang/String; = "com.sprint.ce.updater.EXTRA_ALT_URL"

.field public static final EXTRA_NO_PROMPT:Ljava/lang/String; = "com.sprint.ce.updater.EXTRA_NO_PROMPT"

.field public static final EXTRA_POST_UPDATE_ACTION:Ljava/lang/String; = "com.sprint.ce.updater.EXTRA_POST_UPDATE_ACTION"

.field private static final REQUEST_INTERACTIVE_UPDATE:I = 0x0

.field private static final REQUEST_NO_PROMPT_UPDATE:I = 0x1

.field static final UPDATE_INFO_CACHE_TIME:J = 0x5265c00L

.field private static log:Lcom/sprint/id/logger/Logger;

.field private static props:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/sprint/w/installer/UpdaterClient;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sprint/w/installer/UpdaterClient;->log:Lcom/sprint/id/logger/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    return-void
.end method

.method private getUpdateCheckUrl()Ljava/lang/String;
    .registers 6

    .prologue
    .line 60
    const-string v1, ""

    .line 61
    .local v1, url:Ljava/lang/String;
    sget-object v2, Lcom/sprint/w/installer/UpdaterClient;->props:Ljava/util/Properties;

    if-eqz v2, :cond_53

    .line 62
    sget-object v2, Lcom/sprint/w/installer/UpdaterClient;->props:Ljava/util/Properties;

    const-string v3, "update.base.url"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    sget-object v2, Lcom/sprint/w/installer/UpdaterClient;->props:Ljava/util/Properties;

    const-string v3, "json.name"

    const-string v4, "latest.json"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, jsonName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .end local v0           #jsonName:Ljava/lang/String;
    :cond_53
    sget-object v2, Lcom/sprint/w/installer/UpdaterClient;->log:Lcom/sprint/id/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 70
    return-object v1
.end method

.method private init()V
    .registers 7

    .prologue
    .line 94
    sget-object v4, Lcom/sprint/w/installer/UpdaterClient;->props:Ljava/util/Properties;

    if-nez v4, :cond_25

    .line 96
    :try_start_4
    invoke-virtual {p0}, Lcom/sprint/w/installer/UpdaterClient;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 97
    .local v3, resources:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 98
    .local v0, assetManager:Landroid/content/res/AssetManager;
    const-string v4, "updater.properties"

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 99
    .local v2, inputStream:Ljava/io/InputStream;
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    sput-object v4, Lcom/sprint/w/installer/UpdaterClient;->props:Ljava/util/Properties;

    .line 100
    sget-object v4, Lcom/sprint/w/installer/UpdaterClient;->props:Ljava/util/Properties;

    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 101
    sget-object v4, Lcom/sprint/w/installer/UpdaterClient;->log:Lcom/sprint/id/logger/Logger;

    const-string v5, "Loaded the updater properties"

    invoke-virtual {v4, v5}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_25} :catch_26

    .line 106
    .end local v0           #assetManager:Landroid/content/res/AssetManager;
    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v3           #resources:Landroid/content/res/Resources;
    :cond_25
    :goto_25
    return-void

    .line 102
    :catch_26
    move-exception v1

    .line 103
    .local v1, e:Ljava/io/IOException;
    sget-object v4, Lcom/sprint/w/installer/UpdaterClient;->log:Lcom/sprint/id/logger/Logger;

    const-string v5, "Failed to load the updater properties"

    invoke-virtual {v4, v5, v1}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_25
.end method

.method private invokeUpdater(Ljava/lang/String;ZLandroid/content/Intent;)V
    .registers 9
    .parameter "customTitle"
    .parameter "noPrompt"
    .parameter "postUpdateAction"

    .prologue
    .line 131
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sprint.action.UPGRADE_CHECK"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, i:Landroid/content/Intent;
    const/high16 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 134
    invoke-direct {p0}, Lcom/sprint/w/installer/UpdaterClient;->getUpdateCheckUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 136
    const-string v3, "com.sprint.ce.updater.EXTRA_ALT_TITLE"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string v3, "com.sprint.ce.updater.EXTRA_NO_PROMPT"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 141
    if-nez p3, :cond_2f

    .line 142
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sprint/w/installer/UpdaterClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/sprint/w/installer/ManagePacksActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .end local p3
    .local v2, postUpdateAction:Landroid/content/Intent;
    move-object p3, v2

    .line 144
    .end local v2           #postUpdateAction:Landroid/content/Intent;
    .restart local p3
    :cond_2f
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const/high16 v3, 0x400

    invoke-virtual {p3, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 147
    const-string v3, "com.sprint.ce.updater.EXTRA_POST_UPDATE_ACTION"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 150
    if-eqz p2, :cond_45

    const/4 v3, 0x1

    :goto_41
    invoke-virtual {p0, v1, v3}, Lcom/sprint/w/installer/UpdaterClient;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_44
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_44} :catch_47

    .line 154
    .end local v1           #i:Landroid/content/Intent;
    :goto_44
    return-void

    .line 150
    .restart local v1       #i:Landroid/content/Intent;
    :cond_45
    const/4 v3, 0x0

    goto :goto_41

    .line 151
    .end local v1           #i:Landroid/content/Intent;
    :catch_47
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/RuntimeException;
    sget-object v3, Lcom/sprint/w/installer/UpdaterClient;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "Updater cannot be started"

    invoke-virtual {v3, v4, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_44
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 113
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 114
    packed-switch p1, :pswitch_data_10

    .line 124
    :goto_6
    return-void

    .line 117
    :pswitch_7
    invoke-virtual {p0}, Lcom/sprint/w/installer/UpdaterClient;->finish()V

    goto :goto_6

    .line 121
    :pswitch_b
    invoke-virtual {p0}, Lcom/sprint/w/installer/UpdaterClient;->finish()V

    goto :goto_6

    .line 114
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/UpdaterClient;->requestWindowFeature(I)Z

    .line 77
    const v3, 0x7f03002e

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/UpdaterClient;->setContentView(I)V

    .line 78
    invoke-virtual {p0}, Lcom/sprint/w/installer/UpdaterClient;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 79
    .local v1, i:Landroid/content/Intent;
    if-nez v1, :cond_17

    .line 80
    invoke-virtual {p0}, Lcom/sprint/w/installer/UpdaterClient;->finish()V

    .line 91
    :cond_16
    :goto_16
    return-void

    .line 83
    :cond_17
    invoke-direct {p0}, Lcom/sprint/w/installer/UpdaterClient;->init()V

    .line 84
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.sprint.ce.updater.EXTRA_POST_UPDATE_ACTION"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 86
    .local v2, postUpdateAction:Landroid/content/Intent;
    const-string v3, "com.sprint.w.installer.ACTION_INTERACTIVE_UPDATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 87
    const v3, 0x7f060095

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/UpdaterClient;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v2}, Lcom/sprint/w/installer/UpdaterClient;->invokeUpdater(Ljava/lang/String;ZLandroid/content/Intent;)V

    goto :goto_16

    .line 88
    :cond_3a
    const-string v3, "com.sprint.w.installer.ACTION_COMPLETE_UPDATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 89
    const v3, 0x7f060096

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/UpdaterClient;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4, v2}, Lcom/sprint/w/installer/UpdaterClient;->invokeUpdater(Ljava/lang/String;ZLandroid/content/Intent;)V

    goto :goto_16
.end method
