.class public Lcom/google/android/apps/plus/fragments/HostedProfileFragment$PlusOneDataLoader;
.super Lcom/google/android/apps/plus/phone/EsCursorLoader;
.source "HostedProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlusOneDataLoader"
.end annotation


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private final mPersonId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "personId"

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;)V

    .line 393
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$PlusOneDataLoader;->setUri(Landroid/net/Uri;)V

    .line 394
    new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$PlusOneDataLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 395
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$PlusOneDataLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 396
    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$PlusOneDataLoader;->mPersonId:Ljava/lang/String;

    .line 397
    return-void
.end method


# virtual methods
.method public esLoadInBackground()Landroid/database/Cursor;
    .registers 5

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$PlusOneDataLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$PlusOneDataLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$PlusOneDataLoader;->mPersonId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/content/EsPeopleData;->getEntityPlusOneData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 405
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_13

    .line 406
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$PlusOneDataLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 408
    :cond_13
    return-object v0
.end method
