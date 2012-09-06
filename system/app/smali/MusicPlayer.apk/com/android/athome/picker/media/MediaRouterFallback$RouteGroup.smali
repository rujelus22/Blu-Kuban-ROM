.class public Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;
.super Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
.source "MediaRouterFallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/media/MediaRouterFallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RouteGroup"
.end annotation


# instance fields
.field final mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateName:Z

.field final synthetic this$0:Lcom/android/athome/picker/media/MediaRouterFallback;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/media/MediaRouterFallback;Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;)V
    .registers 4
    .parameter
    .parameter "category"

    .prologue
    .line 876
    iput-object p1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->this$0:Lcom/android/athome/picker/media/MediaRouterFallback;

    .line 877
    invoke-direct {p0, p1, p2}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;-><init>(Lcom/android/athome/picker/media/MediaRouterFallback;Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;)V

    .line 873
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    .line 878
    iput-object p0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mGroup:Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;

    .line 879
    return-void
.end method


# virtual methods
.method public addRoute(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V
    .registers 6
    .parameter "route"

    .prologue
    .line 899
    invoke-virtual {p1}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getGroup()Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 900
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Route "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already part of a group."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 902
    :cond_25
    invoke-virtual {p1}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getCategory()Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;

    move-result-object v1

    iget-object v2, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mCategory:Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;

    if-eq v1, v2, :cond_5c

    .line 903
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Route cannot be added to a group with a different category. (Route category="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getCategory()Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " group category="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mCategory:Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 908
    :cond_5c
    iget-object v1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 909
    .local v0, at:I
    iget-object v1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    iput-object p0, p1, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mGroup:Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;

    .line 911
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mUpdateName:Z

    .line 912
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->updateVolume()V

    .line 913
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->routeUpdated()V

    .line 914
    iget-object v1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->this$0:Lcom/android/athome/picker/media/MediaRouterFallback;

    invoke-virtual {v1, p1, p0, v0}, Lcom/android/athome/picker/media/MediaRouterFallback;->dispatchRouteGrouped(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;I)V

    .line 915
    return-void
.end method

.method public getName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 882
    iget-boolean v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mUpdateName:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->updateName()V

    .line 883
    :cond_7
    invoke-super {p0}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getRouteAt(I)Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
    .registers 3
    .parameter "index"

    .prologue
    .line 985
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    return-object v0
.end method

.method public getRouteCount()I
    .registers 2

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getStatus()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 887
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_16

    .line 888
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    invoke-virtual {v0}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getStatus()Ljava/lang/CharSequence;

    move-result-object v0

    .line 890
    :goto_15
    return-object v0

    :cond_16
    invoke-super {p0}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getStatus()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_15
.end method

.method memberStatusChanged(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "info"
    .parameter "status"

    .prologue
    .line 1037
    invoke-virtual {p0, p2}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->setStatusInt(Ljava/lang/CharSequence;)V

    .line 1038
    return-void
.end method

.method memberVolumeChanged(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V
    .registers 2
    .parameter "info"

    .prologue
    .line 1042
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->updateVolume()V

    .line 1043
    return-void
.end method

.method public removeRoute(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 964
    iget-object v1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    .line 965
    .local v0, route:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mGroup:Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;

    .line 966
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mUpdateName:Z

    .line 967
    iget-object v1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->this$0:Lcom/android/athome/picker/media/MediaRouterFallback;

    invoke-virtual {v1, v0, p0}, Lcom/android/athome/picker/media/MediaRouterFallback;->dispatchRouteUngrouped(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;)V

    .line 968
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->routeUpdated()V

    .line 969
    return-void
.end method

.method public removeRoute(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V
    .registers 5
    .parameter "route"

    .prologue
    .line 947
    invoke-virtual {p1}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getGroup()Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;

    move-result-object v0

    if-eq v0, p0, :cond_25

    .line 948
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a member of this group."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 951
    :cond_25
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 952
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mGroup:Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;

    .line 953
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mUpdateName:Z

    .line 954
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->this$0:Lcom/android/athome/picker/media/MediaRouterFallback;

    invoke-virtual {v0, p1, p0}, Lcom/android/athome/picker/media/MediaRouterFallback;->dispatchRouteUngrouped(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;)V

    .line 955
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->routeUpdated()V

    .line 956
    return-void
.end method

.method public requestSetVolume(I)V
    .registers 10
    .parameter "volume"

    .prologue
    .line 990
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->getVolumeMax()I

    move-result v1

    .line 991
    .local v1, maxVol:I
    if-nez v1, :cond_7

    .line 1006
    :cond_6
    :goto_6
    return-void

    .line 995
    :cond_7
    int-to-float v6, p1

    int-to-float v7, v1

    div-float v5, v6, v7

    .line 996
    .local v5, scaledVolume:F
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->getRouteCount()I

    move-result v3

    .line 997
    .local v3, routeCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    if-ge v0, v3, :cond_23

    .line 998
    invoke-virtual {p0, v0}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->getRouteAt(I)Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    move-result-object v2

    .line 999
    .local v2, route:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
    invoke-virtual {v2}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getVolumeMax()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v4, v6

    .line 1000
    .local v4, routeVol:I
    invoke-virtual {v2, v4}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->requestSetVolume(I)V

    .line 997
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 1002
    .end local v2           #route:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
    .end local v4           #routeVol:I
    :cond_23
    iget v6, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mVolume:I

    if-eq p1, v6, :cond_6

    .line 1003
    iput p1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mVolume:I

    .line 1004
    iget-object v6, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->this$0:Lcom/android/athome/picker/media/MediaRouterFallback;

    invoke-virtual {v6, p0}, Lcom/android/athome/picker/media/MediaRouterFallback;->dispatchRouteVolumeChanged(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V

    goto :goto_6
.end method

.method public requestUpdateVolume(I)V
    .registers 9
    .parameter "direction"

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->getVolumeMax()I

    move-result v1

    .line 1011
    .local v1, maxVol:I
    if-nez v1, :cond_7

    .line 1029
    :cond_6
    :goto_6
    return-void

    .line 1015
    :cond_7
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->getRouteCount()I

    move-result v3

    .line 1016
    .local v3, routeCount:I
    const/4 v5, 0x0

    .line 1017
    .local v5, volume:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, v3, :cond_20

    .line 1018
    invoke-virtual {p0, v0}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->getRouteAt(I)Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    move-result-object v2

    .line 1019
    .local v2, route:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
    invoke-virtual {v2, p1}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->requestUpdateVolume(I)V

    .line 1020
    invoke-virtual {v2}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getVolume()I

    move-result v4

    .line 1021
    .local v4, routeVol:I
    if-le v4, v5, :cond_1d

    .line 1022
    move v5, v4

    .line 1017
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1025
    .end local v2           #route:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
    .end local v4           #routeVol:I
    :cond_20
    iget v6, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mVolume:I

    if-eq v5, v6, :cond_6

    .line 1026
    iput v5, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mVolume:I

    .line 1027
    iget-object v6, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->this$0:Lcom/android/athome/picker/media/MediaRouterFallback;

    invoke-virtual {v6, p0}, Lcom/android/athome/picker/media/MediaRouterFallback;->dispatchRouteVolumeChanged(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V

    goto :goto_6
.end method

.method routeUpdated()V
    .registers 12

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1063
    const/4 v7, 0x0

    .line 1064
    .local v7, types:I
    iget-object v8, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1065
    .local v0, count:I
    if-nez v0, :cond_11

    .line 1067
    iget-object v8, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->this$0:Lcom/android/athome/picker/media/MediaRouterFallback;

    invoke-virtual {v8, p0}, Lcom/android/athome/picker/media/MediaRouterFallback;->removeRoute(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V

    .line 1095
    :goto_10
    return-void

    .line 1071
    :cond_11
    const/4 v4, 0x0

    .line 1072
    .local v4, maxVolume:I
    const/4 v3, 0x1

    .line 1073
    .local v3, isLocal:Z
    const/4 v2, 0x1

    .line 1074
    .local v2, isFixedVolume:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    if-ge v1, v0, :cond_40

    .line 1075
    iget-object v8, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    .line 1076
    .local v5, route:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
    iget v8, v5, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mSupportedTypes:I

    or-int/2addr v7, v8

    .line 1077
    invoke-virtual {v5}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getVolumeMax()I

    move-result v6

    .line 1078
    .local v6, routeMaxVolume:I
    if-le v6, v4, :cond_29

    .line 1079
    move v4, v6

    .line 1081
    :cond_29
    invoke-virtual {v5}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getPlaybackType()I

    move-result v8

    if-nez v8, :cond_3c

    move v8, v9

    :goto_30
    and-int/2addr v3, v8

    .line 1082
    invoke-virtual {v5}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getVolumeHandling()I

    move-result v8

    if-nez v8, :cond_3e

    move v8, v9

    :goto_38
    and-int/2addr v2, v8

    .line 1074
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_3c
    move v8, v10

    .line 1081
    goto :goto_30

    :cond_3e
    move v8, v10

    .line 1082
    goto :goto_38

    .line 1085
    .end local v5           #route:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
    .end local v6           #routeMaxVolume:I
    :cond_40
    if-eqz v3, :cond_62

    move v8, v10

    :goto_43
    iput v8, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mPlaybackType:I

    .line 1088
    if-eqz v2, :cond_64

    move v8, v10

    :goto_48
    iput v8, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mVolumeHandling:I

    .line 1091
    iput v7, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mSupportedTypes:I

    .line 1092
    iput v4, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mVolumeMax:I

    .line 1093
    if-ne v0, v9, :cond_66

    iget-object v8, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    invoke-virtual {v8}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    :goto_5c
    iput-object v8, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1094
    invoke-super {p0}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->routeUpdated()V

    goto :goto_10

    :cond_62
    move v8, v9

    .line 1085
    goto :goto_43

    :cond_64
    move v8, v9

    .line 1088
    goto :goto_48

    .line 1093
    :cond_66
    const/4 v8, 0x0

    goto :goto_5c
.end method

.method updateName()V
    .registers 6

    .prologue
    .line 1098
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1099
    .local v3, sb:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1100
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v0, :cond_25

    .line 1101
    iget-object v4, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    .line 1102
    .local v2, info:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
    if-lez v1, :cond_1d

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    :cond_1d
    iget-object v4, v2, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mName:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1100
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1105
    .end local v2           #info:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
    :cond_25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mName:Ljava/lang/CharSequence;

    .line 1106
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mUpdateName:Z

    .line 1107
    return-void
.end method

.method updateVolume()V
    .registers 6

    .prologue
    .line 1047
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->getRouteCount()I

    move-result v1

    .line 1048
    .local v1, routeCount:I
    const/4 v3, 0x0

    .line 1049
    .local v3, volume:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    if-ge v0, v1, :cond_16

    .line 1050
    invoke-virtual {p0, v0}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->getRouteAt(I)Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getVolume()I

    move-result v2

    .line 1051
    .local v2, routeVol:I
    if-le v2, v3, :cond_13

    .line 1052
    move v3, v2

    .line 1049
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1055
    .end local v2           #routeVol:I
    :cond_16
    iget v4, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mVolume:I

    if-eq v3, v4, :cond_21

    .line 1056
    iput v3, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->mVolume:I

    .line 1057
    iget-object v4, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->this$0:Lcom/android/athome/picker/media/MediaRouterFallback;

    invoke-virtual {v4, p0}, Lcom/android/athome/picker/media/MediaRouterFallback;->dispatchRouteVolumeChanged(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V

    .line 1059
    :cond_21
    return-void
.end method
