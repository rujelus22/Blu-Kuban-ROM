.class public final Lcom/dropbox/android/activity/delegate/P;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field private a:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/dropbox/android/activity/E;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 30
    if-eqz p2, :cond_3a

    .line 32
    invoke-static {}, Lcom/dropbox/android/provider/u;->a()Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "_queryId"

    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 34
    sget-object v3, Lcom/dropbox/android/d;->c:Landroid/net/Uri;

    invoke-static {v3, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 36
    iget-object v3, p0, Lcom/dropbox/android/activity/delegate/P;->a:Landroid/database/ContentObserver;

    if-eqz v3, :cond_27

    .line 37
    iget-object v3, p0, Lcom/dropbox/android/activity/delegate/P;->a:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 39
    :cond_27
    new-instance v3, Lcom/dropbox/android/activity/delegate/Q;

    new-instance v4, Lcom/dropbox/android/activity/delegate/R;

    invoke-direct {v4, p2}, Lcom/dropbox/android/activity/delegate/R;-><init>(Lcom/dropbox/android/activity/E;)V

    invoke-direct {v3, p1, v4, v2, v0}, Lcom/dropbox/android/activity/delegate/Q;-><init>(Landroid/content/Context;Lcom/dropbox/android/activity/delegate/R;Landroid/net/Uri;Landroid/net/Uri;)V

    iput-object v3, p0, Lcom/dropbox/android/activity/delegate/P;->a:Landroid/database/ContentObserver;

    .line 40
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/dropbox/android/activity/delegate/P;->a:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 45
    :goto_39
    return-object v0

    .line 42
    :cond_3a
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "dbonly"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_39
.end method
