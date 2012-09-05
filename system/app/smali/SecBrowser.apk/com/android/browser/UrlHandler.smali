.class public Lcom/android/browser/UrlHandler;
.super Ljava/lang/Object;
.source "UrlHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/UrlHandler$RLZTask;
    }
.end annotation


# static fields
.field static final RLZ_PROVIDER_URI:Landroid/net/Uri;


# instance fields
.field mActivity:Landroid/app/Activity;

.field mController:Lcom/android/browser/Controller;

.field private mIsProviderPresent:Ljava/lang/Boolean;

.field private mRlzUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const-string v0, "content://com.google.android.partnersetup.rlzappprovider/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/browser/UrlHandler;->RLZ_PROVIDER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/browser/Controller;)V
    .registers 3
    .parameter "controller"

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/android/browser/UrlHandler;->mIsProviderPresent:Ljava/lang/Boolean;

    .line 57
    iput-object v0, p0, Lcom/android/browser/UrlHandler;->mRlzUri:Landroid/net/Uri;

    .line 60
    iput-object p1, p0, Lcom/android/browser/UrlHandler;->mController:Lcom/android/browser/Controller;

    .line 61
    iget-object v0, p0, Lcom/android/browser/UrlHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/UrlHandler;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/browser/UrlHandler;->getRlzUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getRlzUri()Landroid/net/Uri;
    .registers 4

    .prologue
    .line 305
    iget-object v1, p0, Lcom/android/browser/UrlHandler;->mRlzUri:Landroid/net/Uri;

    if-nez v1, :cond_19

    .line 306
    iget-object v1, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0161

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, ap:Ljava/lang/String;
    sget-object v1, Lcom/android/browser/UrlHandler;->RLZ_PROVIDER_URI:Landroid/net/Uri;

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/UrlHandler;->mRlzUri:Landroid/net/Uri;

    .line 310
    .end local v0           #ap:Ljava/lang/String;
    :cond_19
    iget-object v1, p0, Lcom/android/browser/UrlHandler;->mRlzUri:Landroid/net/Uri;

    return-object v1
.end method

.method private isSpecializedHandlerAvailable(Landroid/content/Intent;)Z
    .registers 9
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 210
    iget-object v6, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 211
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/16 v6, 0x40

    invoke-virtual {v3, p1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 213
    .local v1, handlers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_15

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_16

    .line 229
    :cond_15
    :goto_15
    return v5

    .line 216
    :cond_16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 217
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 218
    .local v0, filter:Landroid/content/IntentFilter;
    if-eqz v0, :cond_1a

    .line 223
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v6

    if-nez v6, :cond_36

    invoke-virtual {v0}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v6

    if-eqz v6, :cond_1a

    .line 227
    :cond_36
    const/4 v5, 0x1

    goto :goto_15
.end method

.method private static needsRlzString(Landroid/net/Uri;)Z
    .registers 9
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    .line 317
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 318
    .local v4, scheme:Ljava/lang/String;
    const-string v6, "http"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    const-string v6, "https"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    :cond_15
    const-string v6, "q"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2b

    const-string v6, "rlz"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2b

    .line 321
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, host:Ljava/lang/String;
    if-nez v2, :cond_2c

    .line 351
    .end local v2           #host:Ljava/lang/String;
    :cond_2b
    :goto_2b
    return v5

    .line 325
    .restart local v2       #host:Ljava/lang/String;
    :cond_2c
    const-string v6, "\\."

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, hostComponents:[Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x2

    if-lt v6, v7, :cond_2b

    .line 330
    array-length v6, v3

    add-int/lit8 v1, v6, -0x2

    .line 331
    .local v1, googleComponent:I
    aget-object v0, v3, v1

    .line 332
    .local v0, component:Ljava/lang/String;
    const-string v6, "google"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_64

    .line 333
    array-length v6, v3

    const/4 v7, 0x3

    if-lt v6, v7, :cond_2b

    const-string v6, "co"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_57

    const-string v6, "com"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 337
    :cond_57
    array-length v6, v3

    add-int/lit8 v1, v6, -0x3

    .line 338
    const-string v6, "google"

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 344
    :cond_64
    if-lez v1, :cond_72

    const-string v6, "corp"

    add-int/lit8 v7, v1, -0x1

    aget-object v7, v3, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b

    .line 349
    :cond_72
    const/4 v5, 0x1

    goto :goto_2b
.end method

.method private rlzProviderPresent()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 295
    iget-object v2, p0, Lcom/android/browser/UrlHandler;->mIsProviderPresent:Ljava/lang/Boolean;

    if-nez v2, :cond_1a

    .line 296
    iget-object v2, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 297
    .local v0, pm:Landroid/content/pm/PackageManager;
    const-string v2, "com.google.android.partnersetup.rlzappprovider"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_14

    const/4 v1, 0x1

    :cond_14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/UrlHandler;->mIsProviderPresent:Ljava/lang/Boolean;

    .line 299
    .end local v0           #pm:Landroid/content/pm/PackageManager;
    :cond_1a
    iget-object v1, p0, Lcom/android/browser/UrlHandler;->mIsProviderPresent:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method


# virtual methods
.method handleMenuClick(Lcom/android/browser/Tab;Ljava/lang/String;)Z
    .registers 8
    .parameter "tab"
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 235
    iget-object v0, p0, Lcom/android/browser/UrlHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->isMenuDown()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 236
    iget-object v3, p0, Lcom/android/browser/UrlHandler;->mController:Lcom/android/browser/Controller;

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    move v0, v1

    :goto_15
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/BrowserSettings;->openInBackground()Z

    move-result v4

    if-nez v4, :cond_20

    move v2, v1

    :cond_20
    invoke-virtual {v3, p2, v0, v2, v1}, Lcom/android/browser/Controller;->openTab(Ljava/lang/String;ZZZ)Lcom/android/browser/Tab;

    .line 239
    iget-object v0, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 243
    :goto_28
    return v1

    :cond_29
    move v0, v2

    .line 236
    goto :goto_15

    :cond_2b
    move v1, v2

    .line 243
    goto :goto_28
.end method

.method shouldOverrideUrlLoading(Lcom/android/browser/Tab;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 10
    .parameter "tab"
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p2}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 129
    :cond_8
    :goto_8
    return v2

    .line 71
    :cond_9
    const-string v4, "wtai://wp/"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 74
    const-string v4, "wtai://wp/mc;"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "wtai://wp/mc;"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 78
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 83
    iget-object v2, p0, Lcom/android/browser/UrlHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v2}, Lcom/android/browser/Controller;->closeEmptyTab()V

    move v2, v3

    .line 84
    goto :goto_8

    .line 88
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4d
    const-string v4, "wtai://wp/sd;"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 95
    const-string v4, "wtai://wp/ap;"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 103
    :cond_5d
    const-string v4, "about:"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 109
    invoke-direct {p0}, Lcom/android/browser/UrlHandler;->rlzProviderPresent()Z

    move-result v4

    if-eqz v4, :cond_81

    .line 110
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 111
    .local v1, siteUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/browser/UrlHandler;->needsRlzString(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 116
    new-instance v4, Lcom/android/browser/UrlHandler$RLZTask;

    invoke-direct {v4, p0, p1, v1, p2}, Lcom/android/browser/UrlHandler$RLZTask;-><init>(Lcom/android/browser/UrlHandler;Lcom/android/browser/Tab;Landroid/net/Uri;Landroid/webkit/WebView;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v4, v2}, Lcom/android/browser/UrlHandler$RLZTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v2, v3

    .line 117
    goto :goto_8

    .line 121
    .end local v1           #siteUri:Landroid/net/Uri;
    :cond_81
    invoke-virtual {p0, p1, p3}, Lcom/android/browser/UrlHandler;->startActivityForUrl(Lcom/android/browser/Tab;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_89

    move v2, v3

    .line 122
    goto :goto_8

    .line 125
    :cond_89
    invoke-virtual {p0, p1, p3}, Lcom/android/browser/UrlHandler;->handleMenuClick(Lcom/android/browser/Tab;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v2, v3

    .line 126
    goto/16 :goto_8
.end method

.method startActivityForUrl(Lcom/android/browser/Tab;Ljava/lang/String;)Z
    .registers 13
    .parameter "tab"
    .parameter "url"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 136
    const/4 v7, 0x1

    :try_start_4
    invoke-static {p2, v7}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_7
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_7} :catch_48

    move-result-object v1

    .line 144
    .local v1, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-nez v7, :cond_73

    .line 145
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, packagename:Ljava/lang/String;
    if-eqz v4, :cond_71

    .line 147
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v6, "android.intent.action.VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "market://search?q=pname:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 149
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v6, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    iget-object v6, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 155
    iget-object v6, p0, Lcom/android/browser/UrlHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v6}, Lcom/android/browser/Controller;->closeEmptyTab()V

    .line 202
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #packagename:Ljava/lang/String;
    :goto_47
    return v5

    .line 137
    :catch_48
    move-exception v0

    .line 138
    .local v0, ex:Ljava/net/URISyntaxException;
    const-string v5, "Browser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad URI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 139
    goto :goto_47

    .end local v0           #ex:Ljava/net/URISyntaxException;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v4       #packagename:Ljava/lang/String;
    :cond_71
    move v5, v6

    .line 158
    goto :goto_47

    .line 164
    .end local v4           #packagename:Ljava/lang/String;
    :cond_73
    const-string v7, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v7

    if-eqz v7, :cond_e5

    .line 166
    const-string v7, "http:"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_92

    const-string v7, "https:"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e1

    .line 167
    :cond_92
    const-string v7, "com.android.browser"

    const-string v8, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    :goto_99
    if-eqz p1, :cond_c4

    .line 175
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getAppId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_bb

    .line 176
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com.android.browser-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/browser/Tab;->setAppId(Ljava/lang/String;)V

    .line 178
    :cond_bb
    const-string v7, "com.android.browser.application_id"

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    :cond_c4
    sget-object v7, Lcom/android/browser/UrlUtils;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 184
    .local v3, m:Ljava/util/regex/Matcher;
    const-string v7, "rtsp://"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 185
    .local v2, isRTSPUrl:Z
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_e9

    invoke-direct {p0, v1}, Lcom/android/browser/UrlHandler;->isSpecializedHandlerAvailable(Landroid/content/Intent;)Z

    move-result v7

    if-nez v7, :cond_e9

    if-nez v2, :cond_e9

    move v5, v6

    .line 186
    goto/16 :goto_47

    .line 169
    .end local v2           #isRTSPUrl:Z
    .end local v3           #m:Ljava/util/regex/Matcher;
    :cond_e1
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_99

    .line 172
    :cond_e5
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_99

    .line 189
    .restart local v2       #isRTSPUrl:Z
    .restart local v3       #m:Ljava/util/regex/Matcher;
    :cond_e9
    :try_start_e9
    iget-object v7, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    const/4 v8, -0x1

    invoke-virtual {v7, v1, v8}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    move-result v7

    if-eqz v7, :cond_fa

    .line 194
    iget-object v7, p0, Lcom/android/browser/UrlHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v7}, Lcom/android/browser/Controller;->closeEmptyTab()V
    :try_end_f7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_e9 .. :try_end_f7} :catch_f9

    goto/16 :goto_47

    .line 197
    :catch_f9
    move-exception v5

    :cond_fa
    move v5, v6

    .line 202
    goto/16 :goto_47
.end method
