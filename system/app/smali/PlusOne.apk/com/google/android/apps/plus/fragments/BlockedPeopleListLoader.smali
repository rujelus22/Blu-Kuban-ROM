.class public Lcom/google/android/apps/plus/fragments/BlockedPeopleListLoader;
.super Lcom/google/android/apps/plus/phone/EsCursorLoader;
.source "BlockedPeopleListLoader.java"


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mIncludedPersonIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private final mProjection:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "projection"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p4, includedPersonIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;)V

    .line 40
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/BlockedPeopleListLoader;->setUri(Landroid/net/Uri;)V

    .line 41
    new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleListLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 42
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleListLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 43
    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleListLoader;->mProjection:[Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleListLoader;->mIncludedPersonIds:Ljava/util/ArrayList;

    .line 45
    return-void
.end method


# virtual methods
.method public esLoadInBackground()Landroid/database/Cursor;
    .registers 6

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/BlockedPeopleListLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleListLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleListLoader;->mProjection:[Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleListLoader;->mIncludedPersonIds:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsPeopleData;->getBlockedPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;Ljava/util/ArrayList;)Landroid/database/Cursor;

    move-result-object v0

    .line 54
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_15

    .line 55
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleListLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 57
    :cond_15
    return-object v0
.end method
