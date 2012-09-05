.class public Lcom/google/android/youtube/core/player/AdultContentHelper;
.super Ljava/lang/Object;
.source "AdultContentHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/google/android/youtube/core/async/Callback;
.implements Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Lcom/google/android/youtube/core/model/UserProfile;",
        ">;",
        "Landroid/content/DialogInterface$OnClickListener;"
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private confirmationDialog:Landroid/app/Dialog;

.field private final director:Lcom/google/android/youtube/core/player/Director;

.field private final gdataClient:Lcom/google/android/youtube/core/client/GDataClient;

.field private needsLoginDialog:Landroid/app/Dialog;

.field private final preferences:Landroid/content/SharedPreferences;

.field private user:Lcom/google/android/youtube/core/model/UserProfile;

.field private final userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/player/Director;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/client/GDataClient;)V
    .registers 7
    .parameter "activity"
    .parameter "director"
    .parameter "preferences"
    .parameter "userAuthorizer"
    .parameter "gdataClient"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->activity:Landroid/app/Activity;

    .line 55
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/Director;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->director:Lcom/google/android/youtube/core/player/Director;

    .line 56
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->preferences:Landroid/content/SharedPreferences;

    .line 57
    invoke-static {p4}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/UserAuthorizer;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 58
    invoke-static {p5}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/GDataClient;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->gdataClient:Lcom/google/android/youtube/core/client/GDataClient;

    .line 59
    return-void
.end method

.method private hasConfirmedAdultContent(Ljava/lang/String;)Z
    .registers 6
    .parameter "username"

    .prologue
    .line 151
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "adult_content_confirmations"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, confirmations:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private setConfirmedAdultContent(Ljava/lang/String;)V
    .registers 7
    .parameter "username"

    .prologue
    .line 156
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "adult_content_confirmations"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, confirmations:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "adult_content_confirmations"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 160
    return-void
.end method


# virtual methods
.method public init()V
    .registers 3

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->user:Lcom/google/android/youtube/core/model/UserProfile;

    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->authenticate(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    .line 68
    :goto_12
    return-void

    .line 66
    :cond_13
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->activity:Landroid/app/Activity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_12
.end method

.method public onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter "userAuth"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->gdataClient:Lcom/google/android/youtube/core/client/GDataClient;

    invoke-static {p1}, Lcom/google/android/youtube/core/async/GDataRequests;->getMyProfileRequest(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3, p0}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/client/GDataClient;->requestMyProfile(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;)V

    .line 73
    return-void
.end method

.method public onAuthenticationError(Ljava/lang/Exception;)V
    .registers 3
    .parameter "exception"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 82
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 134
    packed-switch p2, :pswitch_data_28

    .line 148
    :cond_3
    :goto_3
    return-void

    .line 136
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->needsLoginDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_10

    .line 137
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->authenticate(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    goto :goto_3

    .line 138
    :cond_10
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->confirmationDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->user:Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/AdultContentHelper;->setConfirmedAdultContent(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->director:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Director;->startVideo()V

    goto :goto_3

    .line 145
    :pswitch_21
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    .line 134
    nop

    :pswitch_data_28
    .packed-switch -0x2
        :pswitch_21
        :pswitch_4
    .end packed-switch
.end method

.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .registers 4
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 98
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/AdultContentHelper;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onNotAuthenticated()V
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 77
    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/UserProfile;)V
    .registers 5
    .parameter "request"
    .parameter "user"

    .prologue
    .line 85
    iput-object p2, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->user:Lcom/google/android/youtube/core/model/UserProfile;

    .line 86
    invoke-virtual {p2}, Lcom/google/android/youtube/core/model/UserProfile;->hasLegalAge()Z

    move-result v0

    if-nez v0, :cond_f

    .line 87
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->activity:Landroid/app/Activity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 93
    :goto_e
    return-void

    .line 88
    :cond_f
    iget-object v0, p2, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/AdultContentHelper;->hasConfirmedAdultContent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->activity:Landroid/app/Activity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_e

    .line 91
    :cond_1e
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->director:Lcom/google/android/youtube/core/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Director;->startVideo()V

    goto :goto_e
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/UserProfile;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/AdultContentHelper;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/UserProfile;)V

    return-void
.end method
