.class public Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;
.super Ljava/lang/Object;
.source "MediaRouterFallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/media/MediaRouterFallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RouteCategory"
.end annotation


# instance fields
.field final mGroupable:Z

.field mName:Ljava/lang/CharSequence;

.field mTypes:I

.field final synthetic this$0:Lcom/android/athome/picker/media/MediaRouterFallback;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/media/MediaRouterFallback;Ljava/lang/CharSequence;IZ)V
    .registers 5
    .parameter
    .parameter "name"
    .parameter "types"
    .parameter "groupable"

    .prologue
    .line 1126
    iput-object p1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;->this$0:Lcom/android/athome/picker/media/MediaRouterFallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1127
    iput-object p2, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;->mName:Ljava/lang/CharSequence;

    .line 1128
    iput p3, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;->mTypes:I

    .line 1129
    iput-boolean p4, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;->mGroupable:Z

    .line 1130
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getRoutes(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1153
    .local p1, out:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    if-nez p1, :cond_20

    .line 1154
    new-instance p1, Ljava/util/ArrayList;

    .end local p1           #out:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1159
    .restart local p1       #out:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :goto_7
    iget-object v3, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;->this$0:Lcom/android/athome/picker/media/MediaRouterFallback;

    invoke-virtual {v3}, Lcom/android/athome/picker/media/MediaRouterFallback;->getRouteCount()I

    move-result v0

    .line 1160
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v0, :cond_24

    .line 1161
    iget-object v3, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;->this$0:Lcom/android/athome/picker/media/MediaRouterFallback;

    invoke-virtual {v3, v1}, Lcom/android/athome/picker/media/MediaRouterFallback;->getRouteAt(I)Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;

    move-result-object v2

    .line 1162
    .local v2, route:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
    iget-object v3, v2, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mCategory:Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;

    if-ne v3, p0, :cond_1d

    .line 1163
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1160
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1156
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #route:Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
    :cond_20
    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_7

    .line 1166
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_24
    return-object p1
.end method

.method public getSupportedTypes()I
    .registers 2

    .prologue
    .line 1173
    iget v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;->mTypes:I

    return v0
.end method

.method public isGroupable()Z
    .registers 2

    .prologue
    .line 1185
    iget-boolean v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;->mGroupable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RouteCategory{ name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;->mName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " types="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;->mTypes:I

    invoke-static {v1}, Lcom/android/athome/picker/media/MediaRouterFallback;->typesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " groupable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;->mGroupable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " routes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;->this$0:Lcom/android/athome/picker/media/MediaRouterFallback;

    #getter for: Lcom/android/athome/picker/media/MediaRouterFallback;->mRoutes:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/athome/picker/media/MediaRouterFallback;->access$200(Lcom/android/athome/picker/media/MediaRouterFallback;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
