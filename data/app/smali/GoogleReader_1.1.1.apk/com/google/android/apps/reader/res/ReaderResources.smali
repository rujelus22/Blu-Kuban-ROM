.class public final Lcom/google/android/apps/reader/res/ReaderResources;
.super Ljava/lang/Object;
.source "ReaderResources.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    return-void
.end method

.method public static getBundle(Landroid/content/res/Resources;I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
    .registers 4
    .parameter "res"
    .parameter "id"

    .prologue
    .line 62
    const/high16 v1, 0x7f06

    invoke-static {p0, v1}, Lcom/google/android/apps/reader/res/ReaderResources;->getLocaleGroup(Landroid/content/res/Resources;I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    move-result-object v0

    .line 63
    .local v0, localeGroup:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->getBundleList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;

    return-object p0
.end method

.method public static getBundles(Landroid/content/res/Resources;)Ljava/util/List;
    .registers 3
    .parameter "res"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    const/high16 v1, 0x7f06

    invoke-static {p0, v1}, Lcom/google/android/apps/reader/res/ReaderResources;->getLocaleGroup(Landroid/content/res/Resources;I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    move-result-object v0

    .line 53
    .local v0, localeGroup:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->getBundleList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static getLocaleGroup(Landroid/content/res/Resources;I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    .registers 5
    .parameter "res"
    .parameter "resId"

    .prologue
    .line 40
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_11

    move-result-object v1

    .line 42
    .local v1, input:Ljava/io/InputStream;
    :try_start_4
    invoke-static {v1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    move-result-object v2

    .line 44
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v2

    :catchall_c
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_11} :catch_11

    .line 46
    .end local v1           #input:Ljava/io/InputStream;
    :catch_11
    move-exception v2

    move-object v0, v2

    .line 47
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getSearchServices(Landroid/content/res/Resources;)Ljava/util/List;
    .registers 2
    .parameter "res"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/apps/reader/res/ReaderResources;->getServices(Landroid/content/res/Resources;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getServices(Landroid/content/res/Resources;)Ljava/util/List;
    .registers 2
    .parameter "res"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/apps/reader/res/ReaderResources;->getServices(Landroid/content/res/Resources;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getServices(Landroid/content/res/Resources;Z)Ljava/util/List;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    const v0, 0x7f060003

    invoke-static {p0, v0}, Lcom/google/android/apps/reader/res/ReaderResources;->getLocaleGroup(Landroid/content/res/Resources;I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;->getServiceDefinitionList()Ljava/util/List;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    .line 71
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->getSearch()Z

    move-result v2

    if-ne p1, v2, :cond_18

    .line 72
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 75
    :cond_2e
    return-object v1
.end method

.method public static getShortcutIconResource(Ljava/lang/String;I)I
    .registers 3
    .parameter "streamId"
    .parameter "subscriptionCount"

    .prologue
    .line 118
    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isSubscription(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isWebFeed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 119
    :cond_c
    const v0, 0x7f02002d

    .line 125
    :goto_f
    return v0

    .line 120
    :cond_10
    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isStarred(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 121
    const v0, 0x7f02002c

    goto :goto_f

    .line 122
    :cond_1a
    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isLabel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    if-nez p1, :cond_26

    .line 123
    const v0, 0x7f02002e

    goto :goto_f

    .line 125
    :cond_26
    const v0, 0x7f02002b

    goto :goto_f
.end method

.method public static getShortcutLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "context"
    .parameter "streamId"

    .prologue
    .line 91
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderStream;->isReadingList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 92
    const v0, 0x7f0d011b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_d
    return-object v0

    .line 93
    :cond_e
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderStream;->isStarred(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 94
    const v0, 0x7f0d011c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 95
    :cond_1c
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderStream;->isMyStuff(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 96
    const v0, 0x7f0d011e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 97
    :cond_2a
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderStream;->isBroadcast(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 98
    const v0, 0x7f0d011f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 99
    :cond_38
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderStream;->isNotes(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 100
    const v0, 0x7f0d0120

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 101
    :cond_46
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderStream;->isFollowing(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 102
    const v0, 0x7f0d011d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_54
    move-object v0, p1

    .line 104
    goto :goto_d
.end method
