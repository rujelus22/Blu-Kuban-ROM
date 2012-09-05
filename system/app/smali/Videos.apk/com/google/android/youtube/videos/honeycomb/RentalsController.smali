.class public abstract Lcom/google/android/youtube/videos/honeycomb/RentalsController;
.super Lcom/google/android/youtube/coreicecream/Controller;
.source "RentalsController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;
.implements Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$OfflineManagementModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;
    }
.end annotation


# instance fields
.field private adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

.field private final analytics:Lcom/google/android/youtube/videos/VideosAnalytics;

.field private final application:Lcom/google/android/youtube/videos/VideosApplication;

.field private errorFirstParagraphView:Landroid/widget/TextView;

.field private errorSecondParagraphView:Landroid/widget/TextView;

.field private errorView:Landroid/view/View;

.field private extraContentView:Landroid/view/View;

.field private hasRentals:Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;

.field private initializationError:Z

.field private myRentalsHelper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

.field private myRentalsLayout:Landroid/view/View;

.field protected final navigation:Lcom/google/android/youtube/videos/Navigation;

.field private noRentalsView:Landroid/view/View;

.field private offlineManagement:Z

.field private topRentals:Lcom/google/android/youtube/videos/ui/MovieTableView;

.field private topRentalsHelper:Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;

.field private userAuth:Lcom/google/android/youtube/core/model/UserAuth;

.field private final userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/VideosApplication;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/os/Bundle;)V
    .registers 6
    .parameter "application"
    .parameter "activity"
    .parameter "navigation"
    .parameter "launchBundle"

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/google/android/youtube/videos/VideosApplication;->getAnalytics()Lcom/google/android/youtube/videos/VideosAnalytics;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p4}, Lcom/google/android/youtube/coreicecream/Controller;-><init>(Landroid/app/Application;Lcom/google/android/youtube/core/Analytics;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 90
    iput-object p1, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    .line 91
    invoke-virtual {p1}, Lcom/google/android/youtube/videos/VideosApplication;->getAnalytics()Lcom/google/android/youtube/videos/VideosAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->analytics:Lcom/google/android/youtube/videos/VideosAnalytics;

    .line 92
    iput-object p3, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->navigation:Lcom/google/android/youtube/videos/Navigation;

    .line 93
    invoke-virtual {p1}, Lcom/google/android/youtube/videos/VideosApplication;->getUserAuthorizer()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 94
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/youtube/videos/honeycomb/RentalsController;Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;)Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->hasRentals:Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/youtube/videos/honeycomb/RentalsController;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->configureViews()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/youtube/videos/honeycomb/RentalsController;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private configureRootedErrorView()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 212
    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->errorFirstParagraphView:Landroid/widget/TextView;

    const v4, 0x7f0b00a3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 213
    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->errorFirstParagraphView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 216
    .local v0, resources:Landroid/content/res/Resources;
    const v3, 0x7f0b00fe

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v5}, Lcom/google/android/youtube/videos/VideosApplication;->getApplicationVersion()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, rootedDeviceContactUri:Ljava/lang/String;
    const v3, 0x7f0b00a4

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, rootedDeviceDetailText:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->errorSecondParagraphView:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->errorSecondParagraphView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 222
    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->errorSecondParagraphView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    return-void
.end method

.method private configureSystemClockErrorView()V
    .registers 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->errorFirstParagraphView:Landroid/widget/TextView;

    const v1, 0x7f0b00a5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 227
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->errorFirstParagraphView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->errorSecondParagraphView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    return-void
.end method

.method private configureViews()V
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 332
    iget-object v4, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v4, :cond_58

    move v1, v2

    .line 333
    .local v1, signedIn:Z
    :goto_9
    iget-object v4, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->extraContentView:Landroid/view/View;

    if-eqz v4, :cond_23

    .line 334
    iget-object v6, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->extraContentView:Landroid/view/View;

    iget-boolean v4, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->initializationError:Z

    if-nez v4, :cond_5a

    if-eqz v1, :cond_5a

    iget-boolean v4, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->offlineManagement:Z

    if-nez v4, :cond_5a

    iget-object v4, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->hasRentals:Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;

    sget-object v7, Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;->LOADING:Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;

    if-eq v4, v7, :cond_5a

    move v4, v3

    :goto_20
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 338
    :cond_23
    iget-object v4, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->hasRentals:Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;

    sget-object v6, Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;->NO:Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;

    if-ne v4, v6, :cond_5c

    move v0, v2

    .line 339
    .local v0, noRentals:Z
    :goto_2a
    iget-object v4, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->noRentalsView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->initializationError:Z

    if-nez v2, :cond_5e

    if-eqz v1, :cond_5e

    iget-boolean v2, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->offlineManagement:Z

    if-nez v2, :cond_5e

    if-eqz v0, :cond_5e

    move v2, v3

    :goto_39
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 342
    iget-object v4, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->myRentalsLayout:Landroid/view/View;

    iget-boolean v2, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->initializationError:Z

    if-nez v2, :cond_60

    if-eqz v1, :cond_60

    iget-boolean v2, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->offlineManagement:Z

    if-nez v2, :cond_4a

    if-nez v0, :cond_60

    :cond_4a
    move v2, v3

    :goto_4b
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->errorView:Landroid/view/View;

    iget-boolean v4, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->initializationError:Z

    if-eqz v4, :cond_62

    :goto_54
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 346
    return-void

    .end local v0           #noRentals:Z
    .end local v1           #signedIn:Z
    :cond_58
    move v1, v3

    .line 332
    goto :goto_9

    .restart local v1       #signedIn:Z
    :cond_5a
    move v4, v5

    .line 334
    goto :goto_20

    :cond_5c
    move v0, v3

    .line 338
    goto :goto_2a

    .restart local v0       #noRentals:Z
    :cond_5e
    move v2, v5

    .line 339
    goto :goto_39

    :cond_60
    move v2, v5

    .line 342
    goto :goto_4b

    :cond_62
    move v3, v5

    .line 345
    goto :goto_54
.end method

.method private init(Ljava/lang/String;Z)V
    .registers 7
    .parameter "accountName"
    .parameter "switchAccount"

    .prologue
    const/4 v3, 0x1

    .line 184
    invoke-direct {p0}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->reset()V

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->initializationError:Z

    .line 186
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/VideosApplication;->isSystemClockWrong()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 187
    iput-boolean v3, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->initializationError:Z

    .line 188
    invoke-direct {p0}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->configureSystemClockErrorView()V

    .line 189
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->analytics:Lcom/google/android/youtube/videos/VideosAnalytics;

    const-string v1, "Init"

    const-string v2, "ClockError"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/videos/VideosAnalytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 196
    invoke-direct {p0}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->configureViews()V

    .line 197
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->initializationError:Z

    if-eqz v0, :cond_45

    .line 209
    :goto_29
    return-void

    .line 190
    :cond_2a
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/VideosApplication;->getDrmManager()Lcom/google/android/youtube/videos/DrmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/DrmManager;->isDeviceRooted()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 191
    iput-boolean v3, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->initializationError:Z

    .line 192
    invoke-direct {p0}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->configureRootedErrorView()V

    .line 193
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->analytics:Lcom/google/android/youtube/videos/VideosAnalytics;

    const-string v1, "Init"

    const-string v2, "Rooted"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/videos/VideosAnalytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 201
    :cond_45
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->analytics:Lcom/google/android/youtube/videos/VideosAnalytics;

    const-string v1, "Init"

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/videos/VideosAnalytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    if-eqz p2, :cond_58

    .line 203
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->switchAccount(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    goto :goto_29

    .line 204
    :cond_58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 205
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v3, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->authenticate(Landroid/app/Activity;ZLcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    goto :goto_29

    .line 207
    :cond_66
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->authenticate(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    goto :goto_29
.end method

.method private reset()V
    .registers 2

    .prologue
    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 238
    sget-object v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;->LOADING:Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->hasRentals:Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;

    .line 239
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->topRentalsHelper:Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->reset()V

    .line 240
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->myRentalsHelper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->reset()V

    .line 241
    return-void
.end method


# virtual methods
.method protected final getContentViewId()I
    .registers 2

    .prologue
    .line 98
    const v0, 0x7f040010

    return v0
.end method

.method protected abstract getPurchasesViewWrapper()Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$PurchasesViewWrapper;
.end method

.method protected getTopRentalsView()Lcom/google/android/youtube/videos/ui/MovieTableView;
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->topRentals:Lcom/google/android/youtube/videos/ui/MovieTableView;

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .registers 3
    .parameter "accountName"

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->init(Ljava/lang/String;Z)V

    .line 181
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 6
    .parameter "requestCode"
    .parameter "responseCode"
    .parameter "data"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 4
    .parameter "userAuth"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 260
    invoke-direct {p0}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->configureViews()V

    .line 261
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->topRentalsHelper:Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;

    if-eqz v0, :cond_12

    .line 262
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->topRentalsHelper:Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;

    invoke-static {}, Lcom/google/android/youtube/videos/async/GDataRequests;->getTrendingMoviesRequest()Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;->init(Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 264
    :cond_12
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->myRentalsHelper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->init(Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 265
    return-void
.end method

.method public onAuthenticationError(Ljava/lang/Exception;)V
    .registers 3
    .parameter "exception"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 273
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 274
    return-void
.end method

.method protected onBackPressed()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 245
    iget-boolean v1, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->offlineManagement:Z

    if-eqz v1, :cond_9

    .line 246
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->setOfflineManagement(Z)V

    .line 247
    const/4 v0, 0x1

    .line 249
    :cond_9
    return v0
.end method

.method protected onCreate(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 25
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 103
    invoke-super/range {p0 .. p2}, Lcom/google/android/youtube/coreicecream/Controller;->onCreate(Landroid/view/View;Landroid/os/Bundle;)V

    .line 104
    const v1, 0x7f0d002c

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->myRentalsLayout:Landroid/view/View;

    .line 105
    new-instance v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->activity:Landroid/app/Activity;

    const v3, 0x7f04000f

    invoke-direct {v1, v2, v3}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->getPurchasesViewWrapper()Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$PurchasesViewWrapper;

    move-result-object v7

    .line 108
    .local v7, purchasesViewWrapper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$PurchasesViewWrapper;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/VideosApplication;->getRequesters()Lcom/google/android/youtube/videos/Requesters;

    move-result-object v11

    .line 110
    .local v11, requesters:Lcom/google/android/youtube/videos/Requesters;
    new-instance v1, Lcom/google/android/youtube/videos/honeycomb/RentalsController$1;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->activity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->navigation:Lcom/google/android/youtube/videos/Navigation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/videos/VideosApplication;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    const v2, 0x7f0d0028

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->myRentalsLayout:Landroid/view/View;

    const v8, 0x7f0d002d

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0b00aa

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/videos/VideosApplication;->getPurchaseStore()Lcom/google/android/youtube/videos/store/PurchaseStore;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/videos/VideosApplication;->getDrmManager()Lcom/google/android/youtube/videos/DrmManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/videos/VideosApplication;->getAnalytics()Lcom/google/android/youtube/videos/VideosAnalytics;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/videos/VideosApplication;->getVideosPlatformUtil()Lcom/google/android/youtube/videos/VideosPlatformUtil;

    move-result-object v15

    move-object/from16 v2, p0

    move-object/from16 v16, p0

    invoke-direct/range {v1 .. v16}, Lcom/google/android/youtube/videos/honeycomb/RentalsController$1;-><init>(Lcom/google/android/youtube/videos/honeycomb/RentalsController;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/content/SharedPreferences;Landroid/view/View;Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$PurchasesViewWrapper;Landroid/view/View;ILcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;Lcom/google/android/youtube/videos/Requesters;Lcom/google/android/youtube/videos/store/PurchaseStore;Lcom/google/android/youtube/videos/DrmManager;Lcom/google/android/youtube/videos/VideosAnalytics;Lcom/google/android/youtube/videos/VideosPlatformUtil;Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$OfflineManagementModeListener;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->myRentalsHelper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    .line 138
    move-object/from16 v0, p0

    invoke-interface {v7, v0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$PurchasesViewWrapper;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 140
    const v1, 0x7f0d0032

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->errorView:Landroid/view/View;

    .line 141
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->errorView:Landroid/view/View;

    const v2, 0x7f0d0033

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->errorFirstParagraphView:Landroid/widget/TextView;

    .line 143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->errorView:Landroid/view/View;

    const v2, 0x7f0d0034

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->errorSecondParagraphView:Landroid/widget/TextView;

    .line 146
    const v1, 0x7f0d002f

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->noRentalsView:Landroid/view/View;

    .line 147
    const v1, 0x7f0d0036

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->extraContentView:Landroid/view/View;

    .line 149
    const v1, 0x7f0d0031

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/videos/ui/MovieTableView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->topRentals:Lcom/google/android/youtube/videos/ui/MovieTableView;

    .line 150
    new-instance v12, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->activity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->topRentals:Lcom/google/android/youtube/videos/ui/MovieTableView;

    invoke-interface {v11}, Lcom/google/android/youtube/videos/Requesters;->getMostPopularMoviesRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v15

    invoke-interface {v11}, Lcom/google/android/youtube/videos/Requesters;->getPosterArtRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v16

    const v17, 0x7f040007

    const v1, 0x7f0d0030

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const v19, 0x7f0b00d9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/VideosApplication;->getAnalytics()Lcom/google/android/youtube/videos/VideosAnalytics;

    move-result-object v20

    sget-object v21, Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;->TopRentals:Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;

    invoke-direct/range {v12 .. v21}, Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/videos/ui/MovieTableView;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;ILandroid/view/View;ILcom/google/android/youtube/videos/VideosAnalytics;Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->topRentalsHelper:Lcom/google/android/youtube/videos/ui/MovieTableViewHelper;

    .line 160
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 380
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->myRentalsHelper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 381
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_9

    .line 388
    .end local v0           #dialog:Landroid/app/Dialog;
    :goto_8
    return-object v0

    .line 383
    .restart local v0       #dialog:Landroid/app/Dialog;
    :cond_9
    const/4 v1, 0x7

    if-ne p1, v1, :cond_15

    .line 386
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->onCreateDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_8

    .line 388
    :cond_15
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 278
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/coreicecream/Controller;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 279
    const v0, 0x7f110003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 280
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/youtube/videos/VideosApplication;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;Landroid/app/Activity;)V

    .line 281
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->myRentalsHelper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->onDestroy()V

    .line 255
    invoke-super {p0}, Lcom/google/android/youtube/coreicecream/Controller;->onDestroy()V

    .line 256
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isOfflineManagement()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 165
    const/4 v1, 0x0

    .line 168
    :goto_9
    return v1

    .line 167
    :cond_a
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-virtual {v1, p3}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Purchase;

    .line 168
    .local v0, purchase:Lcom/google/android/youtube/core/model/Purchase;
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-virtual {v1, p3}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isExpired(I)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->onPurchaseLongClick(Lcom/google/android/youtube/core/model/Purchase;Z)Z

    move-result v1

    goto :goto_9
.end method

.method public onModeChange(Z)V
    .registers 2
    .parameter "offlineManagement"

    .prologue
    .line 327
    iput-boolean p1, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->offlineManagement:Z

    .line 328
    invoke-direct {p0}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->configureViews()V

    .line 329
    return-void
.end method

.method public onNotAuthenticated()V
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 269
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 298
    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->analytics:Lcom/google/android/youtube/videos/VideosAnalytics;

    iget-object v4, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->navigation:Lcom/google/android/youtube/videos/Navigation;

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/youtube/videos/VideosApplication;->onCommonOptionsItemSelected(Landroid/view/MenuItem;Landroid/app/Activity;Lcom/google/android/youtube/videos/VideosAnalytics;Lcom/google/android/youtube/videos/Navigation;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 323
    :cond_e
    :goto_e
    return v0

    .line 301
    :cond_f
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_4c

    move v0, v1

    .line 323
    goto :goto_e

    .line 303
    :pswitch_18
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v1, :cond_e

    .line 304
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->analytics:Lcom/google/android/youtube/videos/VideosAnalytics;

    sget-object v2, Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;->ShopButton:Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/videos/VideosAnalytics;->trackToShopEvent(Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;)V

    .line 305
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/ExternalIntents;->startShopActivity(Landroid/app/Activity;Lcom/google/android/youtube/core/model/UserAuth;)V

    goto :goto_e

    .line 309
    :pswitch_2b
    iget-boolean v1, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->offlineManagement:Z

    if-nez v1, :cond_e

    .line 310
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->setOfflineManagement(Z)V

    goto :goto_e

    .line 314
    :pswitch_33
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v2

    if-nez v2, :cond_e

    .line 315
    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->analytics:Lcom/google/android/youtube/videos/VideosAnalytics;

    const-string v3, "SwitchAccount"

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/videos/VideosAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 316
    iget-boolean v2, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->offlineManagement:Z

    if-eqz v2, :cond_47

    .line 317
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->setOfflineManagement(Z)V

    .line 319
    :cond_47
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->init(Ljava/lang/String;Z)V

    goto :goto_e

    .line 301
    :pswitch_data_4c
    .packed-switch 0x7f0d004a
        :pswitch_18
        :pswitch_2b
        :pswitch_33
    .end packed-switch
.end method

.method public onOrientationChanged(Z)V
    .registers 2
    .parameter "landscape"

    .prologue
    .line 361
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 285
    const v1, 0x7f0d004b

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 286
    .local v0, item:Landroid/view/MenuItem;
    iget-boolean v1, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->offlineManagement:Z

    if-nez v1, :cond_4d

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->hasRentals:Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;

    sget-object v4, Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;->YES:Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;

    if-ne v1, v4, :cond_4d

    move v1, v2

    :goto_14
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 287
    iget-boolean v1, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->initializationError:Z

    if-nez v1, :cond_4f

    move v1, v2

    :goto_1c
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 288
    const v1, 0x7f0d004a

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 289
    iget-boolean v1, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->initializationError:Z

    if-nez v1, :cond_51

    move v1, v2

    :goto_2b
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 290
    iget-boolean v1, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->initializationError:Z

    if-nez v1, :cond_53

    move v1, v2

    :goto_33
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 291
    const v1, 0x7f0d004c

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 292
    iget-boolean v1, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->initializationError:Z

    if-nez v1, :cond_55

    move v1, v2

    :goto_42
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 293
    iget-boolean v1, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->initializationError:Z

    if-nez v1, :cond_57

    :goto_49
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 294
    return-void

    :cond_4d
    move v1, v3

    .line 286
    goto :goto_14

    :cond_4f
    move v1, v3

    .line 287
    goto :goto_1c

    :cond_51
    move v1, v3

    .line 289
    goto :goto_2b

    :cond_53
    move v1, v3

    .line 290
    goto :goto_33

    :cond_55
    move v1, v3

    .line 292
    goto :goto_42

    :cond_57
    move v2, v3

    .line 293
    goto :goto_49
.end method

.method protected abstract onPurchaseLongClick(Lcom/google/android/youtube/core/model/Purchase;Z)Z
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 173
    invoke-super {p0}, Lcom/google/android/youtube/coreicecream/Controller;->onStart()V

    .line 174
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 175
    .local v1, args:Landroid/os/Bundle;
    if-eqz v1, :cond_13

    const-string v2, "authAccount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, accountName:Ljava/lang/String;
    :goto_f
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->init(Ljava/lang/String;)V

    .line 177
    return-void

    .line 175
    .end local v0           #accountName:Ljava/lang/String;
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->reset()V

    .line 234
    return-void
.end method

.method public pinVideo(Ljava/lang/String;Z)V
    .registers 5
    .parameter "videoId"
    .parameter "immediate"

    .prologue
    .line 353
    if-nez p2, :cond_8

    .line 354
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->myRentalsHelper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->setOfflineManagement(Z)V

    .line 356
    :cond_8
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->myRentalsHelper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinVideo(Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method protected rentAgain(Ljava/lang/String;)V
    .registers 4
    .parameter "videoId"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->analytics:Lcom/google/android/youtube/videos/VideosAnalytics;

    sget-object v1, Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;->ExpiredRental:Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/videos/VideosAnalytics;->trackToShopEvent(Lcom/google/android/youtube/videos/VideosAnalytics$ToShopSource;)V

    .line 375
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {v0, p1, v1}, Lcom/google/android/youtube/core/utils/ExternalIntents;->startShopForVideoDetails(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 376
    return-void
.end method

.method public setOfflineManagement(Z)V
    .registers 3
    .parameter "on"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/RentalsController;->myRentalsHelper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->setOfflineManagement(Z)V

    .line 350
    return-void
.end method
