.class public Landroid/app/admin/DevicePolicyManager$RoamingPolicy;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RoamingPolicy"
.end annotation


# instance fields
.field private final mService:Landroid/app/enterprise/IRoamingPolicy;

.field final synthetic this$0:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method private constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .registers 3
    .parameter

    .prologue
    .line 2902
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->this$0:Landroid/app/admin/DevicePolicyManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2903
    const-string/jumbo v0, "roaming_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IRoamingPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRoamingPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    .line 2904
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2898
    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-void
.end method


# virtual methods
.method public isRoamingDataEnabled()Z
    .registers 4

    .prologue
    .line 2995
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_15

    .line 2997
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRoamingPolicy;->isRoamingDataEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3002
    :goto_a
    return v1

    .line 2998
    :catch_b
    move-exception v0

    .line 2999
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3002
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isRoamingPushEnabled()Z
    .registers 4

    .prologue
    .line 2962
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_15

    .line 2964
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRoamingPolicy;->isRoamingPushEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2969
    :goto_a
    return v1

    .line 2965
    :catch_b
    move-exception v0

    .line 2966
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2969
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isRoamingSyncEnabled()Z
    .registers 4

    .prologue
    .line 2928
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_15

    .line 2930
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRoamingPolicy;->isRoamingSyncEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2935
    :goto_a
    return v1

    .line 2931
    :catch_b
    move-exception v0

    .line 2932
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2935
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public setRoamingData(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 2979
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_9

    .line 2981
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRoamingPolicy;->setRoamingData(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 2986
    :cond_9
    :goto_9
    return-void

    .line 2982
    :catch_a
    move-exception v0

    .line 2983
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setRoamingPush(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 2945
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_9

    .line 2947
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRoamingPolicy;->setRoamingPush(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 2952
    :cond_9
    :goto_9
    return-void

    .line 2948
    :catch_a
    move-exception v0

    .line 2949
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setRoamingSync(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 2913
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_9

    .line 2915
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRoamingPolicy;->setRoamingSync(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 2920
    :cond_9
    :goto_9
    return-void

    .line 2916
    :catch_a
    move-exception v0

    .line 2917
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method
