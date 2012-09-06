.class public Lcom/android/athome/picker/media/MediaRouterCompat;
.super Lcom/android/athome/picker/media/AbsMediaRouterCompat;
.source "MediaRouterCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/athome/picker/media/MediaRouterCompat$RouteCategory;,
        Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;,
        Lcom/android/athome/picker/media/MediaRouterCompat$UserRouteInfo;,
        Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;,
        Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImplJellybean;,
        Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImplFallback;,
        Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 691
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    .line 692
    new-instance v0, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImplJellybean;

    invoke-direct {v0}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImplJellybean;-><init>()V

    sput-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    .line 696
    :goto_d
    return-void

    .line 694
    :cond_e
    new-instance v0, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImplFallback;

    invoke-direct {v0}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImplFallback;-><init>()V

    sput-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 698
    invoke-direct {p0}, Lcom/android/athome/picker/media/AbsMediaRouterCompat;-><init>()V

    .line 700
    return-void
.end method

.method public static addCallback(Ljava/lang/Object;ILcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;)V
    .registers 4
    .parameter "router"
    .parameter "types"
    .parameter "cb"

    .prologue
    .line 759
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->addCallback(Ljava/lang/Object;ILcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;)V

    .line 760
    return-void
.end method

.method public static addUserRoute(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "router"
    .parameter "userRouteInfo"

    .prologue
    .line 792
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->addUserRoute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 793
    return-void
.end method

.method public static createRouteCategory(Ljava/lang/Object;Ljava/lang/CharSequence;Z)Ljava/lang/Object;
    .registers 4
    .parameter "router"
    .parameter "name"
    .parameter "isGroupable"

    .prologue
    .line 868
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->createRouteCategory(Ljava/lang/Object;Ljava/lang/CharSequence;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static createUserRoute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "router"
    .parameter "routeCategory"

    .prologue
    .line 855
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->createUserRoute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static forApplication(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2
    .parameter "context"

    .prologue
    .line 714
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->forApplication(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getCategoryAt(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3
    .parameter "router"
    .parameter "index"

    .prologue
    .line 844
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->getCategoryAt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getCategoryCount(Ljava/lang/Object;)I
    .registers 2
    .parameter "router"

    .prologue
    .line 832
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->getCategoryCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getRouteAt(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3
    .parameter "router"
    .parameter "index"

    .prologue
    .line 735
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->getRouteAt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getRouteCount(Ljava/lang/Object;)I
    .registers 2
    .parameter "router"

    .prologue
    .line 724
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->getRouteCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getSelectedRoute(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3
    .parameter "router"
    .parameter "type"

    .prologue
    .line 746
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->getSelectedRoute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static isRouteCategory(Ljava/lang/Object;)Z
    .registers 2
    .parameter "obj"

    .prologue
    .line 884
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->isRouteCategory(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isRouteInfo(Ljava/lang/Object;)Z
    .registers 2
    .parameter "obj"

    .prologue
    .line 872
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->isRouteInfo(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static removeCallback(Ljava/lang/Object;Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;)V
    .registers 3
    .parameter "router"
    .parameter "cb"

    .prologue
    .line 769
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->removeCallback(Ljava/lang/Object;Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;)V

    .line 770
    return-void
.end method

.method public static removeUserRoute(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "router"
    .parameter "userRouteInfo"

    .prologue
    .line 803
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->removeUserRoute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 804
    return-void
.end method

.method public static selectRoute(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4
    .parameter "router"
    .parameter "types"
    .parameter "route"

    .prologue
    .line 781
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->selectRoute(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 782
    return-void
.end method
