.class public final Lcom/google/android/youtube/app/a/a;
.super Lcom/google/android/youtube/core/b/ab;
.source "SourceFile"


# instance fields
.field private final j:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;Ljava/util/concurrent/Executor;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/utils/d;Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;IZ)V
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    move/from16 v7, p8

    .line 38
    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/core/b/ab;-><init>(Lorg/apache/http/client/HttpClient;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/utils/d;Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;IZ)V

    .line 39
    const-string v0, "preferences cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/google/android/youtube/app/a/a;->j:Landroid/content/SharedPreferences;

    .line 40
    return-void
.end method


# virtual methods
.method protected final a(Landroid/net/Uri$Builder;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/app/a/a;->j:Landroid/content/SharedPreferences;

    const-string v1, "prefetch_subscriptions"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/youtube/app/a/a;->j:Landroid/content/SharedPreferences;

    const-string v1, "prefetch_watch_later"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 46
    :cond_15
    const-string v1, "preloaded"

    iget-boolean v0, p0, Lcom/google/android/youtube/app/a/a;->g:Z

    if-eqz v0, :cond_21

    const-string v0, "1"

    :goto_1d
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 48
    :cond_20
    return-void

    .line 46
    :cond_21
    const-string v0, "0"

    goto :goto_1d
.end method
