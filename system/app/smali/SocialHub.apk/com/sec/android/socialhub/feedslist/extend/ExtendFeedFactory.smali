.class public Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory;
.super Ljava/lang/Object;
.source "ExtendFeedFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory;->instance:Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory;
    .registers 3
    .parameter

    .prologue
    .line 28
    const-class v1, Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory;

    monitor-enter v1

    .line 30
    :try_start_3
    sget-object v0, Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory;->instance:Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory;

    if-nez v0, :cond_e

    .line 32
    new-instance v0, Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory;

    invoke-direct {v0}, Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory;-><init>()V

    sput-object v0, Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory;->instance:Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory;

    .line 34
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 35
    sget-object v0, Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory;->instance:Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory;

    return-object v0

    .line 34
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method


# virtual methods
.method public createExtendView(Landroid/content/Context;Landroid/os/Bundle;)Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;
    .registers 6
    .parameter "context"
    .parameter "bundle"

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, extend_view:Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;
    const-string v2, "view"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 50
    .local v1, view:I
    packed-switch v1, :pswitch_data_2a

    .line 74
    :goto_a
    return-object v0

    .line 53
    :pswitch_b
    new-instance v0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;

    .end local v0           #extend_view:Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;
    invoke-direct {v0, p1, p2}, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 54
    .restart local v0       #extend_view:Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;
    goto :goto_a

    .line 57
    :pswitch_11
    new-instance v0, Lcom/sec/android/socialhub/feedslist/extend/TwitterMention;

    .end local v0           #extend_view:Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;
    invoke-direct {v0, p1, p2}, Lcom/sec/android/socialhub/feedslist/extend/TwitterMention;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 58
    .restart local v0       #extend_view:Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;
    goto :goto_a

    .line 61
    :pswitch_17
    new-instance v0, Lcom/sec/android/socialhub/feedslist/extend/TwitterList;

    .end local v0           #extend_view:Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;
    invoke-direct {v0, p1, p2}, Lcom/sec/android/socialhub/feedslist/extend/TwitterList;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 62
    .restart local v0       #extend_view:Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;
    goto :goto_a

    .line 65
    :pswitch_1d
    new-instance v0, Lcom/sec/android/socialhub/feedslist/extend/TwitterSavedSearch;

    .end local v0           #extend_view:Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;
    invoke-direct {v0, p1, p2}, Lcom/sec/android/socialhub/feedslist/extend/TwitterSavedSearch;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 66
    .restart local v0       #extend_view:Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;
    goto :goto_a

    .line 69
    :pswitch_23
    new-instance v0, Lcom/sec/android/socialhub/feedslist/extend/TwitterFavorite;

    .end local v0           #extend_view:Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;
    invoke-direct {v0, p1, p2}, Lcom/sec/android/socialhub/feedslist/extend/TwitterFavorite;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .restart local v0       #extend_view:Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;
    goto :goto_a

    .line 50
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_b
        :pswitch_23
        :pswitch_11
        :pswitch_17
        :pswitch_1d
    .end packed-switch
.end method
