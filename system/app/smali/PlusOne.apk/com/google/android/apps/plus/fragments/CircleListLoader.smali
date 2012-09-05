.class public Lcom/google/android/apps/plus/fragments/CircleListLoader;
.super Lcom/google/android/apps/plus/phone/EsCursorLoader;
.source "CircleListLoader.java"


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mMaxResults:I

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

.field private final mQuery:Ljava/lang/String;

.field private final mUsageType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I[Ljava/lang/String;)V
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "usageType"
    .parameter "projection"

    .prologue
    .line 39
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/fragments/CircleListLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I[Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I[Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "usageType"
    .parameter "projection"
    .parameter "query"
    .parameter "maxResults"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleListLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 57
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/CircleListLoader;->setUri(Landroid/net/Uri;)V

    .line 58
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/CircleListLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 59
    iput-object p4, p0, Lcom/google/android/apps/plus/fragments/CircleListLoader;->mProjection:[Ljava/lang/String;

    .line 60
    iput p3, p0, Lcom/google/android/apps/plus/fragments/CircleListLoader;->mUsageType:I

    .line 61
    iput-object p5, p0, Lcom/google/android/apps/plus/fragments/CircleListLoader;->mQuery:Ljava/lang/String;

    .line 62
    iput p6, p0, Lcom/google/android/apps/plus/fragments/CircleListLoader;->mMaxResults:I

    .line 63
    return-void
.end method


# virtual methods
.method public esLoadInBackground()Landroid/database/Cursor;
    .registers 8

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/CircleListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CircleListLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget v2, p0, Lcom/google/android/apps/plus/fragments/CircleListLoader;->mUsageType:I

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/CircleListLoader;->mProjection:[Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/CircleListLoader;->mQuery:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/apps/plus/fragments/CircleListLoader;->mMaxResults:I

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsPeopleData;->getCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v6

    .line 72
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_19

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleListLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 75
    :cond_19
    return-object v6
.end method
