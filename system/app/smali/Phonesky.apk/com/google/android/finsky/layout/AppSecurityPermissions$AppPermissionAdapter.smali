.class Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppPermissionAdapter"
.end annotation


# instance fields
.field private mDangerousList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mDangerousMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mNewDangerousPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNewNormalPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTotalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/AppSecurityPermissions;Ljava/util/List;)V
    .registers 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p2, permissions:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    iput-object p1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    #getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$300(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 300
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousMap:Ljava/util/Map;

    .line 301
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNormalMap:Ljava/util/Map;

    .line 302
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNewDangerousPermissions:Ljava/util/Set;

    .line 303
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNewNormalPermissions:Ljava/util/Set;

    .line 305
    #getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$300(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/Context;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->loadLocalAssetPermissions(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 308
    .local v0, allLocalPermissions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_33
    :goto_33
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_130

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PermissionInfo;

    .line 309
    .local v8, permission:Landroid/content/pm/PermissionInfo;
    invoke-direct {p0, v8}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->isDisplayablePermission(Landroid/content/pm/PermissionInfo;)Z

    move-result v10

    if-nez v10, :cond_6b

    .line 311
    sget-boolean v10, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v10, :cond_33

    .line 312
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not displayable"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_33

    .line 316
    :cond_6b
    const/4 v4, 0x0

    .line 318
    .local v4, group:Landroid/content/pm/PermissionGroupInfo;
    :try_start_6c
    #getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$400(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, v8, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    :try_end_76
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6c .. :try_end_76} :catch_d6

    move-result-object v4

    .line 322
    :goto_77
    if-nez v4, :cond_f3

    #getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$300(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f070155

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 325
    .local v5, groupLabel:Ljava/lang/String;
    :goto_84
    #getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$400(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 326
    .local v7, label:Ljava/lang/String;
    #getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$400(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/content/pm/PermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 327
    .local v2, descriptionSeq:Ljava/lang/CharSequence;
    if-eqz v2, :cond_100

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, description:Ljava/lang/String;
    :goto_9e
    new-instance v9, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;

    invoke-direct {v9, p1, v7, v1}, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;-><init>(Lcom/google/android/finsky/layout/AppSecurityPermissions;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .local v9, uiInfo:Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;
    iget v10, v8, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_102

    .line 331
    iget-object v10, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousMap:Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ba

    .line 332
    iget-object v10, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousMap:Ljava/util/Map;

    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v10, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_ba
    iget-object v10, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousMap:Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    invoke-interface {v10, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 335
    if-eqz v0, :cond_33

    iget-object v10, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_33

    .line 337
    iget-object v10, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNewDangerousPermissions:Ljava/util/Set;

    invoke-interface {v10, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_33

    .line 319
    .end local v1           #description:Ljava/lang/String;
    .end local v2           #descriptionSeq:Ljava/lang/CharSequence;
    .end local v5           #groupLabel:Ljava/lang/String;
    .end local v7           #label:Ljava/lang/String;
    .end local v9           #uiInfo:Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;
    :catch_d6
    move-exception v3

    .line 320
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid group name:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_77

    .line 322
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_f3
    #getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$400(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_84

    .line 327
    .restart local v2       #descriptionSeq:Ljava/lang/CharSequence;
    .restart local v5       #groupLabel:Ljava/lang/String;
    .restart local v7       #label:Ljava/lang/String;
    :cond_100
    const/4 v1, 0x0

    goto :goto_9e

    .line 341
    .restart local v1       #description:Ljava/lang/String;
    .restart local v9       #uiInfo:Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;
    :cond_102
    iget-object v10, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNormalMap:Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_114

    .line 342
    iget-object v10, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNormalMap:Ljava/util/Map;

    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v10, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    :cond_114
    iget-object v10, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNormalMap:Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    invoke-interface {v10, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 345
    if-eqz v0, :cond_33

    iget-object v10, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_33

    .line 347
    iget-object v10, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNewNormalPermissions:Ljava/util/Set;

    invoke-interface {v10, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_33

    .line 353
    .end local v1           #description:Ljava/lang/String;
    .end local v2           #descriptionSeq:Ljava/lang/CharSequence;
    .end local v4           #group:Landroid/content/pm/PermissionGroupInfo;
    .end local v5           #groupLabel:Ljava/lang/String;
    .end local v7           #label:Ljava/lang/String;
    .end local v8           #permission:Landroid/content/pm/PermissionInfo;
    .end local v9           #uiInfo:Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;
    :cond_130
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousList:Ljava/util/List;

    .line 354
    iget-object v10, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousMap:Ljava/util/Map;

    iget-object v11, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNewDangerousPermissions:Ljava/util/Set;

    iget-object v12, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousList:Ljava/util/List;

    invoke-direct {p0, v10, v11, v12}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->aggregatePermissions(Ljava/util/Map;Ljava/util/Set;Ljava/util/List;)V

    .line 361
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mTotalList:Ljava/util/List;

    .line 362
    iget-object v10, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousMap:Ljava/util/Map;

    iget-object v11, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNewDangerousPermissions:Ljava/util/Set;

    iget-object v12, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mTotalList:Ljava/util/List;

    invoke-direct {p0, v10, v11, v12}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->aggregatePermissions(Ljava/util/Map;Ljava/util/Set;Ljava/util/List;)V

    .line 363
    iget-object v10, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNormalMap:Ljava/util/Map;

    iget-object v11, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNewNormalPermissions:Ljava/util/Set;

    iget-object v12, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mTotalList:Ljava/util/List;

    invoke-direct {p0, v10, v11, v12}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->aggregatePermissions(Ljava/util/Map;Ljava/util/Set;Ljava/util/List;)V

    .line 364
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->containsDangerousNewPermissions()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getViewType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 267
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private aggregatePermissions(Ljava/util/Map;Ljava/util/Set;Ljava/util/List;)V
    .registers 21
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;",
            ">;>;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 376
    .local p1, permissionsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;>;>;"
    .local p2, newPermissions:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;>;"
    .local p3, permissionsList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_df

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 377
    .local v4, group:Ljava/lang/String;
    new-instance v12, Landroid/text/SpannableStringBuilder;

    invoke-direct {v12}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 378
    .local v12, unchangedJoiner:Landroid/text/SpannableStringBuilder;
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 379
    .local v10, newJoiner:Landroid/text/SpannableStringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .local v3, descriptionBuilder:Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2f
    :goto_2f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_cb

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;

    .line 381
    .local v11, permissionUiInfo:Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c1

    move-object v7, v10

    .line 384
    .local v7, joiner:Landroid/text/SpannableStringBuilder;
    :goto_44
    iget-object v8, v11, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;->label:Ljava/lang/String;

    .line 385
    .local v8, label:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2f

    .line 389
    iget-object v2, v11, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;->description:Ljava/lang/String;

    .line 390
    .local v2, description:Ljava/lang/String;
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_59

    .line 391
    const-string v13, ", "

    invoke-virtual {v7, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 393
    :cond_59
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, capitalized:Ljava/lang/String;
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    if-nez v13, :cond_c3

    .line 396
    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 401
    :goto_82
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_8d

    .line 402
    const-string v13, "<br><br>"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    :cond_8d
    const-string v13, "<b>"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c7

    .line 406
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    invoke-virtual {v13}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0701a6

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v1, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :goto_b7
    const-string v13, "</b><br><br>"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2f

    .end local v1           #capitalized:Ljava/lang/String;
    .end local v2           #description:Ljava/lang/String;
    .end local v7           #joiner:Landroid/text/SpannableStringBuilder;
    .end local v8           #label:Ljava/lang/String;
    :cond_c1
    move-object v7, v12

    .line 381
    goto :goto_44

    .line 398
    .restart local v1       #capitalized:Ljava/lang/String;
    .restart local v2       #description:Ljava/lang/String;
    .restart local v7       #joiner:Landroid/text/SpannableStringBuilder;
    .restart local v8       #label:Ljava/lang/String;
    :cond_c3
    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_82

    .line 409
    :cond_c7
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b7

    .line 414
    .end local v1           #capitalized:Ljava/lang/String;
    .end local v2           #description:Ljava/lang/String;
    .end local v7           #joiner:Landroid/text/SpannableStringBuilder;
    .end local v8           #label:Ljava/lang/String;
    .end local v11           #permissionUiInfo:Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;
    :cond_cb
    new-instance v9, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;

    invoke-direct {v9}, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;-><init>()V

    .line 415
    .local v9, newEntry:Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;
    iput-object v4, v9, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->headerText:Ljava/lang/String;

    .line 416
    iput-object v12, v9, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->contentText:Ljava/lang/CharSequence;

    .line 417
    iput-object v10, v9, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->newContentText:Ljava/lang/CharSequence;

    .line 418
    iput-object v3, v9, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->detailedDescription:Ljava/lang/CharSequence;

    .line 419
    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 421
    .end local v3           #descriptionBuilder:Ljava/lang/StringBuilder;
    .end local v4           #group:Ljava/lang/String;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #newEntry:Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;
    .end local v10           #newJoiner:Landroid/text/SpannableStringBuilder;
    .end local v12           #unchangedJoiner:Landroid/text/SpannableStringBuilder;
    :cond_df
    return-void
.end method

.method private containsDangerousNewPermissions()Z
    .registers 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNewDangerousPermissions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .registers 6
    .parameter "context"

    .prologue
    .line 473
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    #getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$500(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v1

    .line 476
    :goto_10
    return-object v1

    .line 475
    :catch_11
    move-exception v0

    .line 476
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private getPermissionView(Landroid/view/ViewGroup;Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;)Landroid/view/View;
    .registers 15
    .parameter "parent"
    .parameter "detailsEntry"

    .prologue
    const/16 v10, 0x8

    const/4 v11, 0x0

    .line 507
    iget-object v8, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040076

    invoke-virtual {v8, v9, p1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 508
    .local v7, view:Landroid/view/View;
    const v8, 0x7f0800a2

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 509
    .local v3, headerView:Landroid/widget/TextView;
    const v8, 0x7f080116

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 510
    .local v4, newContentView:Landroid/widget/TextView;
    const v8, 0x7f08000c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 511
    .local v1, contentView:Landroid/widget/TextView;
    iget-object v8, p2, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->headerText:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v8, p2, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->contentText:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 513
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 519
    :goto_37
    iget-object v8, p2, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->newContentText:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_65

    .line 520
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 533
    :goto_42
    const v8, 0x7f080115

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter$1;

    invoke-direct {v9, p0, p2}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter$1;-><init>(Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    const v8, 0x7f080117

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 542
    return-object v7

    .line 515
    :cond_5c
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 516
    iget-object v8, p2, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->contentText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_37

    .line 522
    :cond_65
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    iget-object v8, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    #getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$300(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 524
    .local v6, resources:Landroid/content/res/Resources;
    const v8, 0x7f0a0015

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 525
    const v8, 0x7f0701a6

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p2, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->newContentText:Ljava/lang/CharSequence;

    aput-object v10, v9, v11

    invoke-virtual {v6, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 527
    .local v2, fullContents:Ljava/lang/String;
    iget-object v8, p2, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->newContentText:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 528
    .local v5, permIndex:I
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 529
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    new-instance v8, Landroid/text/style/TextAppearanceSpan;

    iget-object v9, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    #getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$300(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0e0023

    invoke-direct {v8, v9, v10}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iget-object v9, p2, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->newContentText:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v0, v8, v5, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 531
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_42
.end method

.method private getTogglerView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "parent"

    .prologue
    .line 546
    iget-object v1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040098

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 548
    .local v0, expander:Landroid/widget/TextView;
    new-instance v1, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter$2;-><init>(Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->configureExpanderArrow(Landroid/widget/TextView;)V

    .line 560
    return-object v0
.end method

.method private getView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 5
    .parameter "parent"
    .parameter "position"

    .prologue
    .line 491
    invoke-direct {p0, p2}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getViewType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_34

    .line 503
    const/4 v1, 0x0

    :goto_8
    return-object v1

    .line 493
    :pswitch_9
    iget-object v1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;

    invoke-direct {p0, p1, v1}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getPermissionView(Landroid/view/ViewGroup;Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;)Landroid/view/View;

    move-result-object v1

    goto :goto_8

    .line 495
    :pswitch_16
    move v0, p2

    .line 496
    .local v0, tweakedPosition:I
    iget-object v1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNormalMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_21

    .line 497
    add-int/lit8 v0, v0, -0x1

    .line 499
    :cond_21
    iget-object v1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mTotalList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;

    invoke-direct {p0, p1, v1}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getPermissionView(Landroid/view/ViewGroup;Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;)Landroid/view/View;

    move-result-object v1

    goto :goto_8

    .line 501
    .end local v0           #tweakedPosition:I
    :pswitch_2e
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getTogglerView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_8

    .line 491
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_9
        :pswitch_16
        :pswitch_2e
    .end packed-switch
.end method

.method private getViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_a

    .line 482
    const/4 v0, 0x0

    .line 487
    :goto_9
    return v0

    .line 484
    :cond_a
    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNormalMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1c

    .line 485
    const/4 v0, 0x2

    goto :goto_9

    .line 487
    :cond_1c
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private isDisplayablePermission(Landroid/content/pm/PermissionInfo;)Z
    .registers 4
    .parameter "pInfo"

    .prologue
    const/4 v0, 0x1

    .line 367
    iget v1, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-eq v1, v0, :cond_9

    iget v1, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-nez v1, :cond_a

    .line 371
    :cond_9
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private loadLocalAssetPermissions(Landroid/content/Context;)Ljava/util/Set;
    .registers 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 457
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 458
    .local v4, packageInfo:Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_8

    .line 459
    const/4 v3, 0x0

    .line 468
    :cond_7
    return-object v3

    .line 461
    :cond_8
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 462
    .local v3, oldPermissions:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v4, :cond_7

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 463
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_17
    if-ge v1, v2, :cond_7

    aget-object v5, v0, v1

    .line 464
    .local v5, permission:Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 463
    add-int/lit8 v1, v1, 0x1

    goto :goto_17
.end method


# virtual methods
.method protected configureExpanderArrow(Landroid/widget/TextView;)V
    .registers 8
    .parameter "expander"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 564
    iget-object v2, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    #calls: Lcom/google/android/finsky/layout/AppSecurityPermissions;->isCollapsed()Z
    invoke-static {v2}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$800(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const v1, 0x7f020064

    .line 566
    .local v1, arrowId:I
    :goto_d
    iget-object v2, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    #getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$300(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 567
    .local v0, arrowDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 569
    invoke-virtual {p1, v4, v4, v0, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 570
    return-void

    .line 564
    .end local v0           #arrowDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #arrowId:I
    :cond_2a
    const v1, 0x7f020067

    goto :goto_d
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 424
    iget-object v1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    .line 428
    const/4 v0, 0x0

    .line 436
    :cond_9
    :goto_9
    return v0

    .line 431
    :cond_a
    iget-object v1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mTotalList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 432
    .local v0, total:I
    iget-object v1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNormalMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method
