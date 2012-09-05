.class public Lcom/google/android/finsky/utils/IntentUtils;
.super Ljava/lang/Object;
.source "IntentUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;
    }
.end annotation


# static fields
.field private static final BOOKS_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

.field private static final BOOKS_WEB:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

.field private static final MUSIC_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

.field private static final MY_APPS:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

.field private static final VIDEOS_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

.field private static final VIDEOS_WEB:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 100
    new-instance v0, Lcom/google/android/finsky/utils/IntentUtils$1;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/IntentUtils$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/utils/IntentUtils;->BOOKS_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    .line 144
    new-instance v0, Lcom/google/android/finsky/utils/IntentUtils$2;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/IntentUtils$2;-><init>()V

    sput-object v0, Lcom/google/android/finsky/utils/IntentUtils;->BOOKS_WEB:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    .line 175
    new-instance v0, Lcom/google/android/finsky/utils/IntentUtils$3;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/IntentUtils$3;-><init>()V

    sput-object v0, Lcom/google/android/finsky/utils/IntentUtils;->MY_APPS:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    .line 224
    new-instance v0, Lcom/google/android/finsky/utils/IntentUtils$4;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/IntentUtils$4;-><init>()V

    sput-object v0, Lcom/google/android/finsky/utils/IntentUtils;->VIDEOS_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    .line 270
    new-instance v0, Lcom/google/android/finsky/utils/IntentUtils$5;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/IntentUtils$5;-><init>()V

    sput-object v0, Lcom/google/android/finsky/utils/IntentUtils;->VIDEOS_WEB:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    .line 290
    new-instance v0, Lcom/google/android/finsky/utils/IntentUtils$6;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/IntentUtils$6;-><init>()V

    sput-object v0, Lcom/google/android/finsky/utils/IntentUtils;->MUSIC_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static buildConsumptionAppLaunchIntent(Landroid/content/pm/PackageManager;ILjava/lang/String;)Landroid/content/Intent;
    .registers 4
    .parameter "packageManager"
    .parameter "contentType"
    .parameter "accountName"

    .prologue
    .line 385
    invoke-static {p0, p1}, Lcom/google/android/finsky/utils/IntentUtils;->getConsumptionApp(Landroid/content/pm/PackageManager;I)Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;->buildViewCollectionIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static buildConsumptionAppManageItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .parameter "pm"
    .parameter "doc"
    .parameter "accountName"

    .prologue
    .line 413
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/finsky/utils/IntentUtils;->getConsumptionApp(Landroid/content/pm/PackageManager;I)Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;->buildManageItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static buildConsumptionAppViewItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .parameter "pm"
    .parameter "doc"
    .parameter "accountName"

    .prologue
    .line 395
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/finsky/utils/IntentUtils;->getConsumptionApp(Landroid/content/pm/PackageManager;I)Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;->buildViewItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static buildShareIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;
    .registers 8
    .parameter "context"
    .parameter "doc"

    .prologue
    .line 514
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 515
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 517
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getShareUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    const-string v1, "android.intent.extra.SUBJECT"

    const v2, 0x7f070133

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    return-object v0
.end method

.method public static canResolveIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .registers 5
    .parameter "pm"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 338
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 339
    .local v0, resolveInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method public static canResolveUrl(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "pm"
    .parameter "packageName"
    .parameter "url"

    .prologue
    .line 596
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 597
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 598
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    invoke-static {p0, v0}, Lcom/google/android/finsky/utils/IntentUtils;->canResolveIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public static createAccountSpecificIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .parameter "context"
    .parameter
    .parameter "accountKey"
    .parameter "accountName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 500
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 501
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    return-object v0
.end method

.method public static createIntentForReceiver(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 9
    .parameter "packageManager"
    .parameter "packageName"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 548
    invoke-virtual {p0, p2, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 549
    .local v1, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_9

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 551
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 552
    .local v2, result:Landroid/content/Intent;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    .end local v1           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v2           #result:Landroid/content/Intent;
    :goto_2f
    return-object v2

    .line 557
    :cond_30
    const-string v3, "Could not find receiver for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    const/4 v2, 0x0

    goto :goto_2f
.end method

.method public static createLaunchIntent(Ljava/lang/String;Lcom/google/android/finsky/local/AssetStore;Landroid/content/pm/PackageManager;)Landroid/content/Intent;
    .registers 9
    .parameter "packageName"
    .parameter "assetStore"
    .parameter "pm"

    .prologue
    const/4 v5, 0x0

    .line 563
    const/4 v2, 0x0

    .line 565
    .local v2, intent:Landroid/content/Intent;
    invoke-interface {p1, p0}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v0

    .line 566
    .local v0, asset:Lcom/google/android/finsky/local/LocalAsset;
    if-eqz v0, :cond_20

    .line 568
    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getExternalReferrer()Ljava/lang/String;

    move-result-object v1

    .line 569
    .local v1, externalReferrer:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 570
    invoke-static {v1}, Lcom/google/android/finsky/utils/IntentUtils;->extractContinueUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 571
    .local v3, launchUrl:Ljava/lang/String;
    if-eqz v3, :cond_20

    .line 572
    invoke-static {v0, v3}, Lcom/google/android/finsky/utils/IntentUtils;->createUrlLaunchIntent(Lcom/google/android/finsky/local/LocalAsset;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/google/android/finsky/utils/IntentUtils;->makeResolvableIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    .line 577
    .end local v1           #externalReferrer:Ljava/lang/String;
    .end local v3           #launchUrl:Ljava/lang/String;
    :cond_20
    if-nez v2, :cond_30

    .line 579
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 580
    if-nez v2, :cond_30

    .line 581
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-static {v4, p0, v5, v5}, Lcom/google/android/finsky/utils/NotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 585
    :cond_30
    return-object v2
.end method

.method public static createSendIntentForUrl(Landroid/net/Uri;)Landroid/content/Intent;
    .registers 3
    .parameter "uri"

    .prologue
    .line 480
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 485
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 486
    return-object v0
.end method

.method public static createUrlLaunchIntent(Lcom/google/android/finsky/local/LocalAsset;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .parameter "asset"
    .parameter "url"

    .prologue
    .line 609
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 610
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 611
    .local v1, uri:Landroid/net/Uri$Builder;
    const-string v2, "market"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 612
    const-string v2, "launch"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 613
    const-string v2, "id"

    invoke-interface {p0}, Lcom/google/android/finsky/local/LocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 614
    const-string v2, "url"

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 615
    const-string v2, "referrer"

    invoke-interface {p0}, Lcom/google/android/finsky/local/LocalAsset;->getExternalReferrer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 616
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 617
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    return-object v0
.end method

.method public static createViewIntentForUrl(Landroid/net/Uri;)Landroid/content/Intent;
    .registers 4
    .parameter "uri"

    .prologue
    .line 421
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_21

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 425
    :cond_21
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 430
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 431
    return-object v0
.end method

.method public static createYouTubeIntentForUrl(Landroid/content/pm/PackageManager;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .parameter "pm"
    .parameter "uri"
    .parameter "accountName"

    .prologue
    const/4 v2, 0x1

    .line 459
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 462
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.android.youtube"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    const-string v1, "authAccount"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    const-string v1, "force_fullscreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 465
    const-string v1, "finish_on_ended"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 470
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 472
    invoke-static {p0, v0}, Lcom/google/android/finsky/utils/IntentUtils;->makeResolvableIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public static extractContinueUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "referrerString"

    .prologue
    .line 637
    invoke-static {p0}, Lcom/google/android/finsky/utils/IntentUtils;->isLaunchUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 638
    const/4 v1, 0x0

    .line 642
    :goto_7
    return-object v1

    .line 641
    :cond_8
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 642
    .local v0, uri:Landroid/net/Uri;
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public static forwardIntentToMainActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 531
    const-string v0, "authAccount"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    const-class v1, Lcom/google/android/finsky/activities/MainActivity;

    const-string v2, "authAccount"

    invoke-static {p0, v1, v2, v0}, Lcom/google/android/finsky/utils/IntentUtils;->createAccountSpecificIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 534
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 535
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 537
    return-void
.end method

.method private static getConsumptionApp(Landroid/content/pm/PackageManager;I)Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;
    .registers 5
    .parameter "pm"
    .parameter "contentType"

    .prologue
    .line 355
    packed-switch p1, :pswitch_data_3a

    .line 374
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown content type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :pswitch_1c
    invoke-static {p0}, Lcom/google/android/finsky/utils/IntentUtils;->isBooksAppInstalled(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 358
    sget-object v0, Lcom/google/android/finsky/utils/IntentUtils;->BOOKS_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    .line 371
    :goto_24
    return-object v0

    .line 360
    :cond_25
    sget-object v0, Lcom/google/android/finsky/utils/IntentUtils;->BOOKS_WEB:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    goto :goto_24

    .line 364
    :pswitch_28
    sget-object v0, Lcom/google/android/finsky/utils/IntentUtils;->MY_APPS:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    goto :goto_24

    .line 366
    :pswitch_2b
    sget-object v0, Lcom/google/android/finsky/utils/IntentUtils;->MUSIC_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    goto :goto_24

    .line 368
    :pswitch_2e
    invoke-static {p0}, Lcom/google/android/finsky/utils/IntentUtils;->isVideosAppInstalled(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 369
    sget-object v0, Lcom/google/android/finsky/utils/IntentUtils;->VIDEOS_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    goto :goto_24

    .line 371
    :cond_37
    sget-object v0, Lcom/google/android/finsky/utils/IntentUtils;->VIDEOS_WEB:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    goto :goto_24

    .line 355
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_2b
        :pswitch_28
        :pswitch_2e
    .end packed-switch
.end method

.method private static isBooksAppInstalled(Landroid/content/pm/PackageManager;)Z
    .registers 5
    .parameter "pm"

    .prologue
    const/4 v2, 0x0

    .line 310
    const-string v3, "com.google.android.apps.books"

    invoke-virtual {p0, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 311
    .local v0, booksIntent:Landroid/content/Intent;
    if-nez v0, :cond_a

    .line 316
    :cond_9
    :goto_9
    return v2

    .line 314
    :cond_a
    const/high16 v3, 0x1

    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 316
    .local v1, resolveInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_9

    const/4 v2, 0x1

    goto :goto_9
.end method

.method public static isConsumptionAppInstalled(Landroid/content/pm/PackageManager;I)Z
    .registers 5
    .parameter "pm"
    .parameter "backendId"

    .prologue
    .line 343
    packed-switch p1, :pswitch_data_2c

    .line 351
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown content type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :pswitch_1c
    invoke-static {p0}, Lcom/google/android/finsky/utils/IntentUtils;->isBooksAppInstalled(Landroid/content/pm/PackageManager;)Z

    move-result v0

    .line 349
    :goto_20
    return v0

    .line 347
    :pswitch_21
    invoke-static {p0}, Lcom/google/android/finsky/utils/IntentUtils;->isVideosAppInstalled(Landroid/content/pm/PackageManager;)Z

    move-result v0

    goto :goto_20

    .line 349
    :pswitch_26
    invoke-static {p0}, Lcom/google/android/finsky/utils/IntentUtils;->isMusicAppInstalled(Landroid/content/pm/PackageManager;)Z

    move-result v0

    goto :goto_20

    .line 343
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_26
        :pswitch_3
        :pswitch_21
    .end packed-switch
.end method

.method public static isLaunchUrl(Ljava/lang/String;)Z
    .registers 2
    .parameter "url"

    .prologue
    .line 628
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "market://launch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static isMusicAppInstalled(Landroid/content/pm/PackageManager;)Z
    .registers 4
    .parameter "pm"

    .prologue
    .line 330
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.music.PLAY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .local v0, musicIntent:Landroid/content/Intent;
    const/high16 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 334
    .local v1, resolveInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_17

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_17

    const/4 v2, 0x1

    :goto_16
    return v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method private static isVideosAppInstalled(Landroid/content/pm/PackageManager;)Z
    .registers 5
    .parameter "pm"

    .prologue
    const/4 v2, 0x0

    .line 320
    const-string v3, "com.google.android.videos"

    invoke-virtual {p0, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 321
    .local v1, videosIntent:Landroid/content/Intent;
    if-nez v1, :cond_a

    .line 326
    :cond_9
    :goto_9
    return v2

    .line 324
    :cond_a
    const/high16 v3, 0x1

    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 326
    .local v0, resolveInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_9

    const/4 v2, 0x1

    goto :goto_9
.end method

.method private static makeResolvableIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 5
    .parameter "pm"
    .parameter "intent"

    .prologue
    .line 441
    const/high16 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 442
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 443
    .local v0, fallback:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 446
    .end local v0           #fallback:Landroid/content/Intent;
    :goto_1c
    return-object v0

    :cond_1d
    move-object v0, p1

    goto :goto_1c
.end method
