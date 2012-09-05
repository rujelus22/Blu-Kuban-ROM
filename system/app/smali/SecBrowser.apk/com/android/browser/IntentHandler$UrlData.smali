.class Lcom/android/browser/IntentHandler$UrlData;
.super Ljava/lang/Object;
.source "IntentHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/IntentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UrlData"
.end annotation


# instance fields
.field final mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPreloadedTab:Lcom/android/browser/PreloadedTabControl;

.field final mSearchBoxQueryToSubmit:Ljava/lang/String;

.field final mUrl:Ljava/lang/String;

.field final mVoiceIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 436
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 437
    iput-object p1, p0, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    .line 438
    iput-object v0, p0, Lcom/android/browser/IntentHandler$UrlData;->mHeaders:Ljava/util/Map;

    .line 439
    iput-object v0, p0, Lcom/android/browser/IntentHandler$UrlData;->mVoiceIntent:Landroid/content/Intent;

    .line 440
    iput-object v0, p0, Lcom/android/browser/IntentHandler$UrlData;->mPreloadedTab:Lcom/android/browser/PreloadedTabControl;

    .line 441
    iput-object v0, p0, Lcom/android/browser/IntentHandler$UrlData;->mSearchBoxQueryToSubmit:Ljava/lang/String;

    .line 442
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Intent;Lcom/android/browser/PreloadedTabControl;Ljava/lang/String;)V
    .registers 8
    .parameter "url"
    .parameter
    .parameter "intent"
    .parameter "preloaded"
    .parameter "searchBoxQueryToSubmit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            "Lcom/android/browser/PreloadedTabControl;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 449
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput-object p1, p0, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    .line 451
    iput-object p2, p0, Lcom/android/browser/IntentHandler$UrlData;->mHeaders:Ljava/util/Map;

    .line 452
    const-string v0, "android.speech.action.VOICE_SEARCH_RESULTS"

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 454
    iput-object p3, p0, Lcom/android/browser/IntentHandler$UrlData;->mVoiceIntent:Landroid/content/Intent;

    .line 458
    :goto_15
    iput-object p4, p0, Lcom/android/browser/IntentHandler$UrlData;->mPreloadedTab:Lcom/android/browser/PreloadedTabControl;

    .line 459
    iput-object p5, p0, Lcom/android/browser/IntentHandler$UrlData;->mSearchBoxQueryToSubmit:Ljava/lang/String;

    .line 460
    return-void

    .line 456
    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/IntentHandler$UrlData;->mVoiceIntent:Landroid/content/Intent;

    goto :goto_15
.end method


# virtual methods
.method getPreloadedTab()Lcom/android/browser/PreloadedTabControl;
    .registers 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/browser/IntentHandler$UrlData;->mPreloadedTab:Lcom/android/browser/PreloadedTabControl;

    return-object v0
.end method

.method getSearchBoxQueryToSubmit()Ljava/lang/String;
    .registers 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/browser/IntentHandler$UrlData;->mSearchBoxQueryToSubmit:Ljava/lang/String;

    return-object v0
.end method

.method isEmpty()Z
    .registers 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/browser/IntentHandler$UrlData;->mVoiceIntent:Landroid/content/Intent;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method isPreloaded()Z
    .registers 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/browser/IntentHandler$UrlData;->mPreloadedTab:Lcom/android/browser/PreloadedTabControl;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
