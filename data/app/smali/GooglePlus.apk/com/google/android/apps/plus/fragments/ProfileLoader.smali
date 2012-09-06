.class public Lcom/google/android/apps/plus/fragments/ProfileLoader;
.super Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;
.source "ProfileLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader",
        "<",
        "Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mData:Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;

.field private final mFullProfileNeeded:Z

.field private final mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private mObserverRegistered:Z

.field private final mPersonId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)V
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "personId"
    .parameter "fullProfileNeeded"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 42
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/ProfileLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 43
    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/ProfileLoader;->mPersonId:Ljava/lang/String;

    .line 44
    iput-boolean p4, p0, Lcom/google/android/apps/plus/fragments/ProfileLoader;->mFullProfileNeeded:Z

    .line 45
    return-void
.end method


# virtual methods
.method public deliverResult(Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)V
    .registers 3
    .parameter "data"

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 84
    :cond_6
    :goto_6
    return-void

    .line 79
    :cond_7
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ProfileLoader;->mData:Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;

    .line 81
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 82
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    goto :goto_6
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    check-cast p1, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/ProfileLoader;->deliverResult(Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)V

    return-void
.end method

.method public esLoadInBackground()Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;
    .registers 5

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileLoader;->mPersonId:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/apps/plus/fragments/ProfileLoader;->mFullProfileNeeded:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsPeopleData;->getProfileAndContactData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic esLoadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileLoader;->esLoadInBackground()Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;

    move-result-object v0

    return-object v0
.end method

.method protected onAbandon()V
    .registers 3

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/ProfileLoader;->mObserverRegistered:Z

    if-eqz v0, :cond_14

    .line 92
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/ProfileLoader;->mObserverRegistered:Z

    .line 95
    :cond_14
    return-void
.end method

.method protected onReset()V
    .registers 2

    .prologue
    .line 102
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;->onReset()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileLoader;->mData:Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;

    .line 104
    return-void
.end method

.method protected onStartLoading()V
    .registers 5

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/ProfileLoader;->mObserverRegistered:Z

    if-nez v0, :cond_1d

    .line 59
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->CONTACT_BY_PERSON_ID_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileLoader;->mPersonId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ProfileLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/ProfileLoader;->mObserverRegistered:Z

    .line 65
    :cond_1d
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileLoader;->mData:Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;

    if-nez v0, :cond_24

    .line 66
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileLoader;->forceLoad()V

    .line 68
    :cond_24
    return-void
.end method
