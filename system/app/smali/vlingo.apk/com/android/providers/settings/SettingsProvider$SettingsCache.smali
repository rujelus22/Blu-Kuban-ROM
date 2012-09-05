.class final Lcom/android/providers/settings/SettingsProvider$SettingsCache;
.super Ljava/util/LinkedHashMap;
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
        "Ljava/util/LinkedHashMap",
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
    .registers 5
    .parameter "name"

    .prologue
    .line 737
    const/16 v0, 0xc8

    const/high16 v1, 0x3f40

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 734
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->mCacheFullyMatchesDisk:Z

    .line 738
    iput-object p1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->mCacheName:Ljava/lang/String;

    .line 739
    return-void
.end method

.method public static forTable(Ljava/lang/String;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    .registers 2
    .parameter "tableName"

    .prologue
    .line 787
    const-string v0, "system"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 788
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$300()Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v0

    .line 793
    :goto_c
    return-object v0

    .line 790
    :cond_d
    const-string v0, "secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 791
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$400()Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v0

    goto :goto_c

    .line 793
    :cond_1a
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static invalidate(Ljava/lang/String;)V
    .registers 3
    .parameter "tableName"

    .prologue
    .line 827
    invoke-static {p0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->forTable(Ljava/lang/String;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v0

    .line 828
    .local v0, cache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    if-nez v0, :cond_7

    .line 835
    :goto_6
    return-void

    .line 831
    :cond_7
    monitor-enter v0

    .line 832
    :try_start_8
    invoke-virtual {v0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->clear()V

    .line 833
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->mCacheFullyMatchesDisk:Z

    .line 834
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

    .line 843
    if-nez p0, :cond_5

    .line 850
    :goto_4
    return v2

    .line 844
    :cond_5
    monitor-enter p0

    .line 845
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 846
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_13

    monitor-exit p0

    goto :goto_4

    .line 851
    .end local v0           #bundle:Landroid/os/Bundle;
    :catchall_10
    move-exception v2

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw v2

    .line 847
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_13
    :try_start_13
    invoke-virtual {v0}, Landroid/os/Bundle;->getPairValue()Ljava/lang/String;

    move-result-object v1

    .line 848
    .local v1, oldValue:Ljava/lang/String;
    if-nez v1, :cond_1e

    if-nez p2, :cond_1e

    monitor-exit p0

    move v2, v3

    goto :goto_4

    .line 849
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

    .line 850
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
    .line 800
    if-nez p0, :cond_3

    .line 810
    :goto_2
    return-void

    .line 803
    :cond_3
    const-string v2, "name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 804
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_13

    .line 805
    const-string v2, "SettingsProvider"

    const-string v3, "null name populating settings cache."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 808
    :cond_13
    const-string v2, "value"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 809
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->populate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public fullyMatchesDisk()Z
    .registers 2

    .prologue
    .line 745
    monitor-enter p0

    .line 746
    :try_start_1
    iget-boolean v0, p0, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->mCacheFullyMatchesDisk:Z

    monitor-exit p0

    return v0

    .line 747
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
    .line 813
    monitor-enter p0

    .line 814
    if-eqz p2, :cond_b

    :try_start_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_16

    .line 815
    :cond_b
    const-string v0, "value"

    invoke-static {v0, p2}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    :goto_14
    monitor-exit p0

    .line 820
    return-void

    .line 817
    :cond_16
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$500()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 819
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
    .line 775
    if-nez p2, :cond_1c

    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$200()Landroid/os/Bundle;

    move-result-object v0

    .line 776
    .local v0, bundle:Landroid/os/Bundle;
    :goto_6
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1f4

    if-gt v1, v2, :cond_1b

    .line 777
    :cond_10
    monitor-enter p0

    .line 778
    :try_start_11
    invoke-virtual {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 779
    invoke-virtual {p0, p1, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    :cond_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_23

    .line 783
    :cond_1b
    return-object v0

    .line 775
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1c
    const-string v1, "value"

    invoke-static {v1, p2}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_6

    .line 781
    .restart local v0       #bundle:Landroid/os/Bundle;
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 5
    .parameter "eldest"

    .prologue
    const/4 v0, 0x0

    .line 758
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->size()I

    move-result v1

    const/16 v2, 0xc8

    if-gt v1, v2, :cond_a

    .line 764
    :goto_9
    return v0

    .line 761
    :cond_a
    monitor-enter p0

    .line 762
    const/4 v0, 0x0

    :try_start_c
    iput-boolean v0, p0, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->mCacheFullyMatchesDisk:Z

    .line 763
    monitor-exit p0

    .line 764
    const/4 v0, 0x1

    goto :goto_9

    .line 763
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_11

    throw v0
.end method

.method public setFullyMatchesDisk(Z)V
    .registers 3
    .parameter "value"

    .prologue
    .line 751
    monitor-enter p0

    .line 752
    :try_start_1
    iput-boolean p1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->mCacheFullyMatchesDisk:Z

    .line 753
    monitor-exit p0

    .line 754
    return-void

    .line 753
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method
