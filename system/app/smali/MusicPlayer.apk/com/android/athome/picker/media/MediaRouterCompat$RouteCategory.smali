.class public Lcom/android/athome/picker/media/MediaRouterCompat$RouteCategory;
.super Ljava/lang/Object;
.source "MediaRouterCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/media/MediaRouterCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RouteCategory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "category"

    .prologue
    .line 1207
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->RouteCategory_getName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRoutes(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;
    .registers 3
    .parameter "category"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
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
    .line 1225
    .local p1, out:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->RouteCategory_getRoutes(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static isGroupable(Ljava/lang/Object;)Z
    .registers 2
    .parameter "category"

    .prologue
    .line 1246
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->RouteCategory_isGroupable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
