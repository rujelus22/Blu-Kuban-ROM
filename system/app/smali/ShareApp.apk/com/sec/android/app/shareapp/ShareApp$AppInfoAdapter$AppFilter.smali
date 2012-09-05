.class Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter$AppFilter;
.super Landroid/widget/Filter;
.source "ShareApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppFilter"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 783
    iput-object p1, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter$AppFilter;->this$1:Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;Lcom/sec/android/app/shareapp/ShareApp$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 783
    invoke-direct {p0, p1}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter$AppFilter;-><init>(Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 14
    .parameter "prefix"

    .prologue
    .line 786
    new-instance v7, Landroid/widget/Filter$FilterResults;

    invoke-direct {v7}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 787
    .local v7, results:Landroid/widget/Filter$FilterResults;
    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_32

    .line 788
    :cond_d
    iget-object v9, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter$AppFilter;->this$1:Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;

    #getter for: Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mFilterLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->access$1300(Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 789
    :try_start_14
    new-instance v9, Ljava/util/HashMap;

    iget-object v11, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter$AppFilter;->this$1:Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;

    #getter for: Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mFilterMap:Ljava/util/Map;
    invoke-static {v11}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->access$1400(Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;)Ljava/util/Map;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v9, v7, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 790
    iget-object v9, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter$AppFilter;->this$1:Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;

    #getter for: Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mFilterMap:Ljava/util/Map;
    invoke-static {v9}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->access$1400(Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    iput v9, v7, Landroid/widget/Filter$FilterResults;->count:I

    .line 791
    monitor-exit v10

    .line 812
    :goto_2e
    return-object v7

    .line 791
    :catchall_2f
    move-exception v9

    monitor-exit v10
    :try_end_31
    .catchall {:try_start_14 .. :try_end_31} :catchall_2f

    throw v9

    .line 793
    :cond_32
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 794
    .local v6, prefixString:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 795
    .local v8, spacePrefixString:Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 796
    .local v5, newMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter$AppFilter;->this$1:Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;

    #getter for: Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mFilterLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->access$1300(Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 797
    :try_start_59
    iget-object v9, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter$AppFilter;->this$1:Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;

    #getter for: Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mFilterMap:Ljava/util/Map;
    invoke-static {v9}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->access$1400(Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;)Ljava/util/Map;

    move-result-object v4

    .line 798
    .local v4, localMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter$AppFilter;->this$1:Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;

    #getter for: Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mFilterMap:Ljava/util/Map;
    invoke-static {v9}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->access$1400(Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 799
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6d
    :goto_6d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_99

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 800
    .local v1, key:Ljava/lang/String;
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 801
    .local v3, label:Ljava/lang/String;
    if-eqz v3, :cond_6d

    .line 802
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 803
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_92

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v11, -0x1

    if-eq v9, v11, :cond_6d

    .line 805
    :cond_92
    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6d

    .line 808
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3           #label:Ljava/lang/String;
    .end local v4           #localMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_96
    move-exception v9

    monitor-exit v10
    :try_end_98
    .catchall {:try_start_59 .. :try_end_98} :catchall_96

    throw v9

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4       #localMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_99
    :try_start_99
    monitor-exit v10
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_96

    .line 809
    iput-object v5, v7, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 810
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v9

    iput v9, v7, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_2e
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 5
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 818
    iget-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter$AppFilter;->this$1:Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    #setter for: Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mCurrentFilterMap:Ljava/util/Map;
    invoke-static {v1, v0}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->access$1502(Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;Ljava/util/Map;)Ljava/util/Map;

    .line 819
    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter$AppFilter;->this$1:Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;

    #calls: Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->reverseGenerateList()V
    invoke-static {v0}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->access$1600(Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;)V

    .line 820
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_18

    .line 821
    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter$AppFilter;->this$1:Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->notifyDataSetChanged()V

    .line 825
    :goto_17
    return-void

    .line 823
    :cond_18
    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter$AppFilter;->this$1:Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->notifyDataSetInvalidated()V

    goto :goto_17
.end method
