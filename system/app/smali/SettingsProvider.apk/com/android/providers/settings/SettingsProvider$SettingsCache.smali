.class final Lcom/android/providers/settings/SettingsProvider$SettingsCache;
.super Landroid/util/LruCache;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/SettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SettingsCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mCacheFullyMatchesDisk:Z

.field private final mCacheName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 742
    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Landroid/util/LruCache;-><init>(I)V

    .line 739
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->mCacheFullyMatchesDisk:Z

    .line 743
    iput-object p1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->mCacheName:Ljava/lang/String;

    .line 744
    return-void
.end method

.method public static forTable(Ljava/lang/String;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    .registers 2
    .parameter "tableName"

    .prologue
    .line 788
    const-string v0, "system"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 789
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$300()Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v0

    .line 794
    :goto_c
    return-object v0

    .line 791
    :cond_d
    const-string v0, "secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 792
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$400()Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v0

    goto :goto_c

    .line 794
    :cond_1a
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static invalidate(Ljava/lang/String;)V
    .registers 3
    .parameter "tableName"

    .prologue
    .line 828
    invoke-static {p0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->forTable(Ljava/lang/String;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v0

    .line 829
    .local v0, cache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    if-nez v0, :cond_7

    .line 836
    :goto_6
    return-void

    .line 832
    :cond_7
    monitor-enter v0

    .line 833
    :try_start_8
    invoke-virtual {v0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->evictAll()V

    .line 834
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->mCacheFullyMatchesDisk:Z

    .line 835
    monitor-exit v0

    goto :goto_6

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public static isRedundantSetValue(Lcom/android/providers/settings/SettingsProvider$SettingsCache;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "cache"
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 844
    if-nez p0, :cond_5

    .line 851
    :goto_4
    return v2

    .line 845
    :cond_5
    monitor-enter p0

    .line 846
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 847
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_13

    monitor-exit p0

    goto :goto_4

    .line 852
    .end local v0           #bundle:Landroid/os/Bundle;
    :catchall_10
    move-exception v2

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw v2

    .line 848
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_13
    :try_start_13
    invoke-virtual {v0}, Landroid/os/Bundle;->getPairValue()Ljava/lang/String;

    move-result-object v1

    .line 849
    .local v1, oldValue:Ljava/lang/String;
    if-nez v1, :cond_1e

    if-nez p2, :cond_1e

    monitor-exit p0

    move v2, v3

    goto :goto_4

    .line 850
    :cond_1e
    if-nez v1, :cond_27

    move v4, v3

    :goto_21
    if-nez p2, :cond_29

    :goto_23
    if-eq v4, v3, :cond_2b

    monitor-exit p0

    goto :goto_4

    :cond_27
    move v4, v2

    goto :goto_21

    :cond_29
    move v3, v2

    goto :goto_23

    .line 851
    :cond_2b
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_13 .. :try_end_30} :catchall_10

    goto :goto_4
.end method

.method public static populate(Lcom/android/providers/settings/SettingsProvider$SettingsCache;Landroid/content/ContentValues;)V
    .registers 6
    .parameter "cache"
    .parameter "contentValues"

    .prologue
    .line 801
    if-nez p0, :cond_3

    .line 811
    :goto_2
    return-void

    .line 804
    :cond_3
    const-string v2, "name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 805
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_13

    .line 806
    const-string v2, "SettingsProvider"

    const-string v3, "null name populating settings cache."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 809
    :cond_13
    const-string v2, "value"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 810
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->populate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 736
    check-cast p2, Ljava/lang/String;

    .end local p2
    check-cast p3, Landroid/os/Bundle;

    .end local p3
    check-cast p4, Landroid/os/Bundle;

    .end local p4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->entryRemoved(ZLjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 6
    .parameter "evicted"
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 763
    if-eqz p1, :cond_5

    .line 764
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->mCacheFullyMatchesDisk:Z

    .line 766
    :cond_5
    return-void
.end method

.method public fullyMatchesDisk()Z
    .registers 2

    .prologue
    .line 750
    monitor-enter p0

    .line 751
    :try_start_1
    iget-boolean v0, p0, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->mCacheFullyMatchesDisk:Z

    monitor-exit p0

    return v0

    .line 752
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public populate(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "value"

    .prologue
    .line 814
    monitor-enter p0

    .line 815
    if-eqz p2, :cond_b

    :try_start_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_16

    .line 816
    :cond_b
    const-string v0, "value"

    invoke-static {v0, p2}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    :goto_14
    monitor-exit p0

    .line 821
    return-void

    .line 818
    :cond_16
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$500()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 820
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public putIfAbsent(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 776
    if-nez p2, :cond_1c

    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$200()Landroid/os/Bundle;

    move-result-object v0

    .line 777
    .local v0, bundle:Landroid/os/Bundle;
    :goto_6
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1f4

    if-gt v1, v2, :cond_1b

    .line 778
    :cond_10
    monitor-enter p0

    .line 779
    :try_start_11
    invoke-virtual {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1a

    .line 780
    invoke-virtual {p0, p1, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    :cond_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_23

    .line 784
    :cond_1b
    return-object v0

    .line 776
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1c
    const-string v1, "value"

    invoke-static {v1, p2}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_6

    .line 782
    .restart local v0       #bundle:Landroid/os/Bundle;
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public setFullyMatchesDisk(Z)V
    .registers 3
    .parameter "value"

    .prologue
    .line 756
    monitor-enter p0

    .line 757
    :try_start_1
    iput-boolean p1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->mCacheFullyMatchesDisk:Z

    .line 758
    monitor-exit p0

    .line 759
    return-void

    .line 758
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method
