.class Lcom/google/android/finsky/utils/PackageInfoCache$1;
.super Ljava/lang/Object;
.source "PackageInfoCache.java"

# interfaces
.implements Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PackageInfoCache;-><init>(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/receivers/PackageMonitorReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/utils/PackageInfoCache;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/PackageInfoCache;)V
    .registers 2
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/finsky/utils/PackageInfoCache$1;->this$0:Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageInfoCache$1;->this$0:Lcom/google/android/finsky/utils/PackageInfoCache;

    #getter for: Lcom/google/android/finsky/utils/PackageInfoCache;->mCache:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/finsky/utils/PackageInfoCache;->access$000(Lcom/google/android/finsky/utils/PackageInfoCache;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageInfoCache$1;->this$0:Lcom/google/android/finsky/utils/PackageInfoCache;

    #calls: Lcom/google/android/finsky/utils/PackageInfoCache;->updatePackageInfo(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/google/android/finsky/utils/PackageInfoCache;->access$100(Lcom/google/android/finsky/utils/PackageInfoCache;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public onPackageAvailabilityChanged([Ljava/lang/String;Z)V
    .registers 8
    .parameter "packageNames"
    .parameter "available"

    .prologue
    .line 60
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_1a

    aget-object v3, v0, v1

    .line 61
    .local v3, packageName:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/finsky/utils/PackageInfoCache$1;->this$0:Lcom/google/android/finsky/utils/PackageInfoCache;

    #getter for: Lcom/google/android/finsky/utils/PackageInfoCache;->mCache:Ljava/util/Map;
    invoke-static {v4}, Lcom/google/android/finsky/utils/PackageInfoCache;->access$000(Lcom/google/android/finsky/utils/PackageInfoCache;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    if-eqz p2, :cond_17

    iget-object v4, p0, Lcom/google/android/finsky/utils/PackageInfoCache$1;->this$0:Lcom/google/android/finsky/utils/PackageInfoCache;

    #calls: Lcom/google/android/finsky/utils/PackageInfoCache;->updatePackageInfo(Ljava/lang/String;)V
    invoke-static {v4, v3}, Lcom/google/android/finsky/utils/PackageInfoCache;->access$100(Lcom/google/android/finsky/utils/PackageInfoCache;Ljava/lang/String;)V

    .line 60
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 64
    .end local v3           #packageName:Ljava/lang/String;
    :cond_1a
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageInfoCache$1;->this$0:Lcom/google/android/finsky/utils/PackageInfoCache;

    #getter for: Lcom/google/android/finsky/utils/PackageInfoCache;->mCache:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/finsky/utils/PackageInfoCache;->access$000(Lcom/google/android/finsky/utils/PackageInfoCache;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageInfoCache$1;->this$0:Lcom/google/android/finsky/utils/PackageInfoCache;

    #calls: Lcom/google/android/finsky/utils/PackageInfoCache;->updatePackageInfo(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/google/android/finsky/utils/PackageInfoCache;->access$100(Lcom/google/android/finsky/utils/PackageInfoCache;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Z)V
    .registers 4
    .parameter "packageName"
    .parameter "replacing"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageInfoCache$1;->this$0:Lcom/google/android/finsky/utils/PackageInfoCache;

    #getter for: Lcom/google/android/finsky/utils/PackageInfoCache;->mCache:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/finsky/utils/PackageInfoCache;->access$000(Lcom/google/android/finsky/utils/PackageInfoCache;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method
