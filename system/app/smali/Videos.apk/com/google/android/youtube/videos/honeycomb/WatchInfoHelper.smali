.class public abstract Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;
.super Ljava/lang/Object;
.source "WatchInfoHelper.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;
.implements Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Landroid/net/Uri;",
        ">;",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;"
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final actors:Landroid/widget/TextView;

.field private final actorsLabel:Landroid/widget/TextView;

.field protected final description:Landroid/widget/TextView;

.field private final directors:Landroid/widget/TextView;

.field private final directorsLabel:Landroid/widget/TextView;

.field private final duration:Landroid/widget/TextView;

.field private final genres:Landroid/widget/TextView;

.field private final missingThumbnail:Landroid/graphics/Bitmap;

.field private final movieInfoLayout:Landroid/view/View;

.field private final plusOneButton:Lcom/google/android/youtube/plus1/PlusOneButton;

.field private final plusOneClient:Lcom/google/android/youtube/plus1/PlusOneClient;

.field private final producers:Landroid/widget/TextView;

.field private final producersLabel:Landroid/widget/TextView;

.field private final purchaseStore:Lcom/google/android/youtube/videos/store/PurchaseStore;

.field private final releaseDate:Landroid/widget/TextView;

.field private final res:Landroid/content/res/Resources;

.field private final thumbnail:Landroid/widget/ImageView;

.field protected final title:Landroid/widget/TextView;

.field private final userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private videoId:Ljava/lang/String;

.field private final writers:Landroid/widget/TextView;

.field private final writersLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/videos/store/PurchaseStore;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/plus1/PlusOneClient;)V
    .registers 8
    .parameter "activity"
    .parameter "watchView"
    .parameter "purchaseStore"
    .parameter "userAuthorizer"
    .parameter "plusOneClient"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->activity:Landroid/app/Activity;

    .line 84
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->res:Landroid/content/res/Resources;

    .line 85
    iput-object p3, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->purchaseStore:Lcom/google/android/youtube/videos/store/PurchaseStore;

    .line 86
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->res:Landroid/content/res/Resources;

    const v1, 0x7f020015

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->missingThumbnail:Landroid/graphics/Bitmap;

    .line 87
    iput-object p4, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 89
    const v0, 0x7f0d0016

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->movieInfoLayout:Landroid/view/View;

    .line 91
    const v0, 0x7f0d000d

    invoke-direct {p0, p2, v0}, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->findTextViewById(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->title:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f0d001b

    invoke-direct {p0, p2, v0}, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->findTextViewById(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->description:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->movieInfoLayout:Landroid/view/View;

    const v1, 0x7f0d000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->thumbnail:Landroid/widget/ImageView;

    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->movieInfoLayout:Landroid/view/View;

    const v1, 0x7f0d000f

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->findTextViewById(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->duration:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->movieInfoLayout:Landroid/view/View;

    const v1, 0x7f0d0017

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->findTextViewById(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->releaseDate:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->movieInfoLayout:Landroid/view/View;

    const v1, 0x7f0d0013

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->findTextViewById(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->genres:Landroid/widget/TextView;

    .line 100
    iput-object p5, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->plusOneClient:Lcom/google/android/youtube/plus1/PlusOneClient;

    .line 101
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->movieInfoLayout:Landroid/view/View;

    const v1, 0x7f0d0018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/plus1/PlusOneButton;

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->plusOneButton:Lcom/google/android/youtube/plus1/PlusOneButton;

    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->plusOneButton:Lcom/google/android/youtube/plus1/PlusOneButton;

    invoke-virtual {v0, p1, p5}, Lcom/google/android/youtube/plus1/PlusOneButton;->init(Landroid/app/Activity;Lcom/google/android/youtube/plus1/PlusOneClient;)V

    .line 104
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->movieInfoLayout:Landroid/view/View;

    const v1, 0x7f0d0015

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->findTextViewById(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->actors:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->movieInfoLayout:Landroid/view/View;

    const v1, 0x7f0d0014

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->findTextViewById(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->directors:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->movieInfoLayout:Landroid/view/View;

    const v1, 0x7f0d0019

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->findTextViewById(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->writers:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->movieInfoLayout:Landroid/view/View;

    const v1, 0x7f0d001a

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->findTextViewById(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->producers:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->movieInfoLayout:Landroid/view/View;

    const v1, 0x7f0d001f

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->findTextViewById(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->actorsLabel:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->movieInfoLayout:Landroid/view/View;

    const v1, 0x7f0d0020

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->findTextViewById(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->directorsLabel:Landroid/widget/TextView;

    .line 111
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->movieInfoLayout:Landroid/view/View;

    const v1, 0x7f0d0021

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->findTextViewById(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->writersLabel:Landroid/widget/TextView;

    .line 112
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->movieInfoLayout:Landroid/view/View;

    const v1, 0x7f0d0022

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->findTextViewById(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->producersLabel:Landroid/widget/TextView;

    .line 113
    return-void
.end method

.method private findTextViewById(Landroid/view/View;I)Landroid/widget/TextView;
    .registers 4
    .parameter "parent"
    .parameter "id"

    .prologue
    .line 212
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private setMissingPoster()V
    .registers 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->thumbnail:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 208
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->thumbnail:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->missingThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 209
    return-void
.end method

.method private showOrHidePlusOneButton(Ljava/lang/String;)V
    .registers 5
    .parameter "username"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->plusOneClient:Lcom/google/android/youtube/plus1/PlusOneClient;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/plus1/PlusOneClient;->canUserPlusOne(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 183
    const-string v0, "Current user has opted in +1 and there is network. Show +1 button."

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->plusOneButton:Lcom/google/android/youtube/plus1/PlusOneButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/plus1/PlusOneButton;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->plusOneButton:Lcom/google/android/youtube/plus1/PlusOneButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://market.android.com/details?id=movie-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->videoId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/plus1/PlusOneButton;->setUri(Landroid/net/Uri;)V

    .line 190
    :goto_39
    return-void

    .line 187
    :cond_3a
    const-string v0, "Don\'t know if current user has opted in +1 or there is no network. Hide +1 button."

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->plusOneButton:Lcom/google/android/youtube/plus1/PlusOneButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/plus1/PlusOneButton;->setVisibility(I)V

    goto :goto_39
.end method


# virtual methods
.method public onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 3
    .parameter "userAuth"

    .prologue
    .line 178
    iget-object v0, p1, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->showOrHidePlusOneButton(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public onAuthenticationError(Ljava/lang/Exception;)V
    .registers 3
    .parameter "exception"

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->showOrHidePlusOneButton(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public onError(Landroid/util/Pair;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter "exception"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, request:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    invoke-direct {p0}, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->setMissingPoster()V

    .line 204
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    check-cast p1, Landroid/util/Pair;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->onError(Landroid/util/Pair;Ljava/lang/Exception;)V

    return-void
.end method

.method public onNotAuthenticated()V
    .registers 2

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->showOrHidePlusOneButton(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public onResponse(Landroid/util/Pair;Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, request:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->thumbnail:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 199
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 200
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    check-cast p1, Landroid/util/Pair;

    .end local p1
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->onResponse(Landroid/util/Pair;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected abstract showCredits(Ljava/util/List;ILandroid/widget/TextView;Landroid/widget/TextView;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/widget/TextView;",
            "Landroid/widget/TextView;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract showInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public showVideo(Lcom/google/android/youtube/core/model/Video;)V
    .registers 15
    .parameter "video"

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 116
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v7, p1, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    invoke-static {v7}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v7, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iput-object v7, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->videoId:Ljava/lang/String;

    .line 120
    iget-object v7, p1, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v7, v7, Lcom/google/android/youtube/core/model/Video$Movie;->releaseDate:Ljava/util/Date;

    if-eqz v7, :cond_a7

    .line 121
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 122
    .local v0, calendar:Ljava/util/Calendar;
    iget-object v7, p1, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v7, v7, Lcom/google/android/youtube/core/model/Video$Movie;->releaseDate:Ljava/util/Date;

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 123
    iget-object v7, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->activity:Landroid/app/Activity;

    const v8, 0x7f0b00d7

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    aput-object v10, v9, v12

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, titleWithReleaseYear:Ljava/lang/String;
    iget-object v7, p1, Lcom/google/android/youtube/core/model/Video;->description:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->showInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v7, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->releaseDate:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object v7, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->releaseDate:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->activity:Landroid/app/Activity;

    invoke-static {v8}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    iget-object v9, p1, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v9, v9, Lcom/google/android/youtube/core/model/Video$Movie;->releaseDate:Ljava/util/Date;

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v6           #titleWithReleaseYear:Ljava/lang/String;
    :goto_56
    iget-object v7, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->duration:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->activity:Landroid/app/Activity;

    const v9, 0x7f0b00d8

    new-array v10, v11, [Ljava/lang/Object;

    iget v11, p1, Lcom/google/android/youtube/core/model/Video;->duration:I

    div-int/lit8 v11, v11, 0x3c

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v7, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v7, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->peek(Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    .line 140
    new-instance v3, Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v7, v7, Lcom/google/android/youtube/core/model/Video$Movie;->genres:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    .local v3, genreStrings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p1, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v7, v7, Lcom/google/android/youtube/core/model/Video$Movie;->genres:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_8a
    :goto_8a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/model/Video$Genre;

    .line 142
    .local v2, genre:Lcom/google/android/youtube/core/model/Video$Genre;
    invoke-interface {v2}, Lcom/google/android/youtube/core/model/Video$Genre;->stringId()I

    move-result v5

    .line 143
    .local v5, stringId:I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_8a

    .line 144
    iget-object v7, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v7, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    .line 129
    .end local v2           #genre:Lcom/google/android/youtube/core/model/Video$Genre;
    .end local v3           #genreStrings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #stringId:I
    :cond_a7
    iget-object v7, p1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    iget-object v8, p1, Lcom/google/android/youtube/core/model/Video;->description:Ljava/lang/String;

    invoke-virtual {p0, v7, v8}, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->showInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v7, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->releaseDate:Landroid/widget/TextView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_56

    .line 147
    .restart local v3       #genreStrings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_b5
    iget-object v7, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->genres:Landroid/widget/TextView;

    const-string v8, ", "

    invoke-static {v8, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v7, p1, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v1, v7, Lcom/google/android/youtube/core/model/Video$Movie;->credits:Ljava/util/Map;

    .line 150
    .local v1, credits:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v7, "Director"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const v8, 0x7f0b00d3

    iget-object v9, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->directorsLabel:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->directors:Landroid/widget/TextView;

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->showCredits(Ljava/util/List;ILandroid/widget/TextView;Landroid/widget/TextView;)V

    .line 152
    const-string v7, "Writer"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const v8, 0x7f0b00d4

    iget-object v9, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->writersLabel:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->writers:Landroid/widget/TextView;

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->showCredits(Ljava/util/List;ILandroid/widget/TextView;Landroid/widget/TextView;)V

    .line 154
    const-string v7, "Actor"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const v8, 0x7f0b00d2

    iget-object v9, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->actorsLabel:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->actors:Landroid/widget/TextView;

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->showCredits(Ljava/util/List;ILandroid/widget/TextView;Landroid/widget/TextView;)V

    .line 156
    const-string v7, "Producer"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const v8, 0x7f0b00d5

    iget-object v9, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->producersLabel:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->producers:Landroid/widget/TextView;

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->showCredits(Ljava/util/List;ILandroid/widget/TextView;Landroid/widget/TextView;)V

    .line 159
    iget-object v7, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->movieInfoLayout:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object v7, p1, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v7, v7, Lcom/google/android/youtube/core/model/Video$Movie;->posterUri:Landroid/net/Uri;

    if-eqz v7, :cond_12e

    .line 162
    iget-object v7, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->purchaseStore:Lcom/google/android/youtube/videos/store/PurchaseStore;

    iget-object v8, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v9, p1, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v9, v9, Lcom/google/android/youtube/core/model/Video$Movie;->posterUri:Landroid/net/Uri;

    invoke-static {v8, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    new-instance v9, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v10, p0, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->activity:Landroid/app/Activity;

    invoke-direct {v9, v10, p0}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-virtual {v7, v8, v9}, Lcom/google/android/youtube/videos/store/PurchaseStore;->getPoster(Landroid/util/Pair;Lcom/google/android/youtube/core/async/Callback;)V

    .line 167
    :goto_12d
    return-void

    .line 165
    :cond_12e
    invoke-direct {p0}, Lcom/google/android/youtube/videos/honeycomb/WatchInfoHelper;->setMissingPoster()V

    goto :goto_12d
.end method
