.class public Lcom/google/android/apps/plus/fragments/PeopleSearchListLoader;
.super Lcom/google/android/apps/plus/phone/EsCursorLoader;
.source "PeopleSearchListLoader.java"


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

.field private final mProjection:[Ljava/lang/String;

.field private mQueryUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;I)V
    .registers 16
    .parameter "context"
    .parameter "account"
    .parameter "projection"
    .parameter "query"
    .parameter "includePlusPages"
    .parameter "includePeopleInCircles"
    .parameter "filterNullGaiaIds"
    .parameter "activityId"
    .parameter "maxResults"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 46
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListLoader;->setUri(Landroid/net/Uri;)V

    .line 47
    if-eqz p7, :cond_28

    const-string v0, "gaia_id IS NOT NULL"

    :goto_13
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListLoader;->setSelection(Ljava/lang/String;)V

    .line 48
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 49
    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListLoader;->mProjection:[Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object v1, p4

    move v2, p5

    move v3, p6

    move-object v4, p8

    move v5, p9

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsProvider;->buildPeopleQueryUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZZLjava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListLoader;->mQueryUri:Landroid/net/Uri;

    .line 52
    return-void

    .line 47
    :cond_28
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method public esLoadInBackground()Landroid/database/Cursor;
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListLoader;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 60
    .local v6, context:Landroid/content/Context;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v6, v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->ensurePeopleSynced(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 70
    :goto_d
    return-object v4

    .line 64
    :cond_e
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListLoader;->mQueryUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListLoader;->mProjection:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListLoader;->getSelection()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 66
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_26

    .line 67
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-interface {v7, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    :cond_26
    move-object v4, v7

    .line 70
    goto :goto_d
.end method
