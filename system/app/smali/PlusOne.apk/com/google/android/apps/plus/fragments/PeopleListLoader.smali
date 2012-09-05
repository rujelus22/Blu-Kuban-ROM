.class public Lcom/google/android/apps/plus/fragments/PeopleListLoader;
.super Lcom/google/android/apps/plus/phone/EsCursorLoader;
.source "PeopleListLoader.java"


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mCircleId:Ljava/lang/String;

.field private final mExcludedCircleId:Ljava/lang/String;

.field private final mIncludePlusPages:Z

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
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "projection"
    .parameter "circleId"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleListLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 43
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PeopleListLoader;->setUri(Landroid/net/Uri;)V

    .line 44
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/PeopleListLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 45
    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/PeopleListLoader;->mProjection:[Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/google/android/apps/plus/fragments/PeopleListLoader;->mCircleId:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleListLoader;->mExcludedCircleId:Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleListLoader;->mIncludePlusPages:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;ZLjava/lang/String;Z)V
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "projection"
    .parameter "excludeCircle"
    .parameter "excludedCircleId"
    .parameter "includePlusPages"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleListLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 64
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PeopleListLoader;->setUri(Landroid/net/Uri;)V

    .line 65
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/PeopleListLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 66
    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/PeopleListLoader;->mProjection:[Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleListLoader;->mCircleId:Ljava/lang/String;

    .line 68
    iput-object p5, p0, Lcom/google/android/apps/plus/fragments/PeopleListLoader;->mExcludedCircleId:Ljava/lang/String;

    .line 69
    iput-boolean p6, p0, Lcom/google/android/apps/plus/fragments/PeopleListLoader;->mIncludePlusPages:Z

    .line 70
    return-void
.end method


# virtual methods
.method public esLoadInBackground()Landroid/database/Cursor;
    .registers 9

    .prologue
    .line 77
    const-string v5, "in_my_circles=1"

    .line 78
    .local v5, selection:Ljava/lang/String;
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleListLoader;->mIncludePlusPages:Z

    if-nez v0, :cond_19

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND profile_type!=2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 82
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleListLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleListLoader;->mCircleId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PeopleListLoader;->mExcludedCircleId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PeopleListLoader;->mProjection:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/content/EsPeopleData;->getPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 84
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_31

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleListLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-interface {v7, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 88
    :cond_31
    return-object v7
.end method
