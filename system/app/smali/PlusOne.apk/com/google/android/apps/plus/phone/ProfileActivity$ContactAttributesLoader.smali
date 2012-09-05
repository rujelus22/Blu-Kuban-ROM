.class public Lcom/google/android/apps/plus/phone/ProfileActivity$ContactAttributesLoader;
.super Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/ProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactAttributesLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mContactAttributes:Ljava/lang/Integer;

.field private final mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/Integer;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private mObserverRegistered:Z

.field private final mPersonId1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "personId"

    .prologue
    .line 975
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 964
    new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity$ContactAttributesLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 976
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/ProfileActivity$ContactAttributesLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 977
    iput-object p3, p0, Lcom/google/android/apps/plus/phone/ProfileActivity$ContactAttributesLoader;->mPersonId1:Ljava/lang/String;

    .line 978
    return-void
.end method


# virtual methods
.method public deliverResult(Ljava/lang/Integer;)V
    .registers 3
    .parameter "data"

    .prologue
    .line 1025
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity$ContactAttributesLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1034
    :cond_6
    :goto_6
    return-void

    .line 1029
    :cond_7
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity$ContactAttributesLoader;->mContactAttributes:Ljava/lang/Integer;

    .line 1031
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity$ContactAttributesLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1032
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    goto :goto_6
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 958
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/ProfileActivity$ContactAttributesLoader;->deliverResult(Ljava/lang/Integer;)V

    return-void
.end method

.method public esLoadInBackground()Ljava/lang/Integer;
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x0

    .line 985
    new-instance v0, Lcom/google/android/apps/plus/api/GetProfileDataOperation;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity$ContactAttributesLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileActivity$ContactAttributesLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ProfileActivity$ContactAttributesLoader;->mPersonId1:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/GetProfileDataOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 987
    .local v0, gpo:Lcom/google/android/apps/plus/api/GetProfileDataOperation;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->start()V

    .line 988
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 989
    const-string v1, "ProfileActivity"

    invoke-static {v1, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 990
    const-string v1, "ProfileActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    getProfileDataOperation interrupted due to exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1001
    :cond_42
    :goto_42
    return-object v5

    .line 993
    :cond_43
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 994
    const-string v1, "ProfileActivity"

    invoke-static {v1, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 995
    const-string v1, "ProfileActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    getProfileDataOperation interrupted due to error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 999
    :cond_82
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->getContactAttributes()Ljava/lang/Integer;

    move-result-object v5

    goto :goto_42
.end method

.method public bridge synthetic esLoadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 958
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity$ContactAttributesLoader;->esLoadInBackground()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onAbandon()V
    .registers 3

    .prologue
    .line 1041
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity$ContactAttributesLoader;->mObserverRegistered:Z

    if-eqz v0, :cond_14

    .line 1042
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity$ContactAttributesLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity$ContactAttributesLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1043
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity$ContactAttributesLoader;->mObserverRegistered:Z

    .line 1045
    :cond_14
    return-void
.end method

.method protected onReset()V
    .registers 2

    .prologue
    .line 1052
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsAsyncTaskLoader;->onReset()V

    .line 1053
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity$ContactAttributesLoader;->mContactAttributes:Ljava/lang/Integer;

    .line 1054
    return-void
.end method

.method protected onStartLoading()V
    .registers 5

    .prologue
    .line 1009
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity$ContactAttributesLoader;->mObserverRegistered:Z

    if-nez v0, :cond_1d

    .line 1010
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity$ContactAttributesLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->PROFILES_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileActivity$ContactAttributesLoader;->mPersonId1:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ProfileActivity$ContactAttributesLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1012
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity$ContactAttributesLoader;->mObserverRegistered:Z

    .line 1015
    :cond_1d
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity$ContactAttributesLoader;->mContactAttributes:Ljava/lang/Integer;

    if-nez v0, :cond_24

    .line 1016
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActivity$ContactAttributesLoader;->forceLoad()V

    .line 1018
    :cond_24
    return-void
.end method
