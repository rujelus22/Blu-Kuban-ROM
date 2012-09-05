.class public Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory;
.super Ljava/lang/Object;
.source "SocialHubBaseListAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory;->instance:Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory;
    .registers 3
    .parameter

    .prologue
    .line 29
    const-class v1, Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory;

    monitor-enter v1

    .line 31
    :try_start_3
    sget-object v0, Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory;->instance:Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory;

    if-nez v0, :cond_e

    .line 33
    new-instance v0, Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory;

    invoke-direct {v0}, Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory;-><init>()V

    sput-object v0, Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory;->instance:Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory;

    .line 35
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 36
    sget-object v0, Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory;->instance:Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory;

    return-object v0

    .line 35
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method


# virtual methods
.method public createBaseListInterface(Landroid/content/Context;Landroid/os/Bundle;)Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;
    .registers 7
    .parameter "context"
    .parameter "bundle"

    .prologue
    const/4 v3, 0x0

    .line 47
    const/4 v0, 0x0

    .line 49
    .local v0, extend_view:Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;
    const-string v2, "view_type"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 51
    .local v1, view:I
    packed-switch v1, :pswitch_data_1e

    .line 69
    :goto_b
    return-object v0

    .line 54
    :pswitch_c
    new-instance v0, Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;

    .end local v0           #extend_view:Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;
    invoke-direct {v0, p1, v3}, Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 55
    .restart local v0       #extend_view:Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;
    goto :goto_b

    .line 58
    :pswitch_12
    new-instance v0, Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;

    .end local v0           #extend_view:Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;
    invoke-direct {v0, p1, v3}, Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 59
    .restart local v0       #extend_view:Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;
    goto :goto_b

    .line 62
    :pswitch_18
    new-instance v0, Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;

    .end local v0           #extend_view:Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;
    invoke-direct {v0, p1, v3}, Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 63
    .restart local v0       #extend_view:Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;
    goto :goto_b

    .line 51
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_c
        :pswitch_12
        :pswitch_18
    .end packed-switch
.end method
