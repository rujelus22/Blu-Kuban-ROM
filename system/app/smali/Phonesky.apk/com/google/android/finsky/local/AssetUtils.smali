.class public Lcom/google/android/finsky/local/AssetUtils;
.super Ljava/lang/Object;
.source "AssetUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsDangerousNewPermissions(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageManager;)Z
    .registers 15
    .parameter "packageName"
    .parameter
    .parameter "packageManager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .local p1, appPermissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 35
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 36
    .local v4, newPermissions:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    if-eqz p1, :cond_23

    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 41
    .local v7, permission:Ljava/lang/String;
    const/4 v11, 0x0

    :try_start_19
    invoke-virtual {p2, v7, v11}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v8

    .line 43
    .local v8, permissionInfo:Landroid/content/pm/PermissionInfo;
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_20} :catch_21

    goto :goto_c

    .line 44
    .end local v8           #permissionInfo:Landroid/content/pm/PermissionInfo;
    :catch_21
    move-exception v11

    goto :goto_c

    .line 51
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v7           #permission:Ljava/lang/String;
    :cond_23
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 53
    .local v5, oldPermissions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v11, 0x1000

    invoke-virtual {p2, p0, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 55
    .local v6, packageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_42

    iget-object v11, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v11, :cond_42

    .line 56
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_38
    if-ge v1, v3, :cond_42

    aget-object v7, v0, v1

    .line 57
    .restart local v7       #permission:Ljava/lang/String;
    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 61
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v7           #permission:Ljava/lang/String;
    :cond_42
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PermissionInfo;

    .line 62
    .restart local v8       #permissionInfo:Landroid/content/pm/PermissionInfo;
    iget v11, v8, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-ne v11, v9, :cond_62

    move v2, v9

    .line 64
    .local v2, isDangerous:Z
    :goto_57
    if-eqz v2, :cond_46

    iget-object v11, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v5, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_46

    .line 68
    .end local v2           #isDangerous:Z
    .end local v8           #permissionInfo:Landroid/content/pm/PermissionInfo;
    :goto_61
    return v9

    .restart local v8       #permissionInfo:Landroid/content/pm/PermissionInfo;
    :cond_62
    move v2, v10

    .line 62
    goto :goto_57

    .end local v8           #permissionInfo:Landroid/content/pm/PermissionInfo;
    :cond_64
    move v9, v10

    .line 68
    goto :goto_61
.end method
