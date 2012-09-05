.class public Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/SnsSpManager;
.super Ljava/lang/Object;
.source "SnsSpManager.java"


# static fields
.field public static mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/ISnsAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/SnsSpManager;->mMap:Ljava/util/HashMap;

    .line 17
    sget-object v1, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/SnsSpManager;->mMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 19
    :try_start_a
    sget-object v0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/SnsSpManager;->mMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Facebook;

    invoke-direct {v3}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Facebook;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/SnsSpManager;->mMap:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/MySpace;

    invoke-direct {v3}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/MySpace;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/SnsSpManager;->mMap:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Twitter;

    invoke-direct {v3}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Twitter;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/SnsSpManager;->mMap:Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/LinkedIn;

    invoke-direct {v3}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/LinkedIn;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/SnsSpManager;->mMap:Ljava/util/HashMap;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/KaiXin;

    invoke-direct {v3}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/KaiXin;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/SnsSpManager;->mMap:Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/RenRen;

    invoke-direct {v3}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/RenRen;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/SnsSpManager;->mMap:Ljava/util/HashMap;

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Qzone;

    invoke-direct {v3}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Qzone;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/SnsSpManager;->mMap:Ljava/util/HashMap;

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Me2day;

    invoke-direct {v3}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Me2day;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/SnsSpManager;->mMap:Ljava/util/HashMap;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Plurk;

    invoke-direct {v3}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Plurk;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/SnsSpManager;->mMap:Ljava/util/HashMap;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Mixi;

    invoke-direct {v3}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Mixi;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    monitor-exit v1

    .line 30
    return-void

    .line 29
    :catchall_a7
    move-exception v0

    monitor-exit v1
    :try_end_a9
    .catchall {:try_start_a .. :try_end_a9} :catchall_a7

    throw v0
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getService(I)Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/ISnsAdapter;
    .registers 5
    .parameter "sp"

    .prologue
    .line 45
    const-class v1, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/SnsSpManager;

    monitor-enter v1

    :try_start_3
    sget-object v2, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/SnsSpManager;->mMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_18

    .line 47
    :try_start_6
    sget-object v0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/SnsSpManager;->mMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/ISnsAdapter;

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_15

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    :try_start_17
    throw v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    .line 45
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 34
    sget-object v4, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/SnsSpManager;->mMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 36
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 38
    .local v1, key:Ljava/lang/Integer;
    sget-object v4, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/SnsSpManager;->mMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;

    .line 39
    .local v3, sp:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;
    invoke-static {p0}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;->initialize(Landroid/content/Context;)V

    goto :goto_a

    .line 41
    .end local v1           #key:Ljava/lang/Integer;
    .end local v3           #sp:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;
    :cond_22
    return-void
.end method
