.class public Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;
.super Ljava/lang/Object;
.source "MediaRouterCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/media/MediaRouterCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RouteInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCategory(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "info"

    .prologue
    .line 927
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->RouteInfo_getCategory(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getGroup(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "info"

    .prologue
    .line 919
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->RouteInfo_getGroup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "info"

    .prologue
    .line 937
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->RouteInfo_getIconDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "info"

    .prologue
    .line 894
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->RouteInfo_getName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getPlaybackType(Ljava/lang/Object;)I
    .registers 2
    .parameter "info"

    .prologue
    .line 1023
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->RouteInfo_getPlaybackType(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getStatus(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "info"

    .prologue
    .line 903
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->RouteInfo_getStatus(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getTag(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "info"

    .prologue
    .line 962
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->RouteInfo_getTag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getVolume(Ljava/lang/Object;)I
    .registers 2
    .parameter "info"

    .prologue
    .line 971
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->RouteInfo_getVolume(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getVolumeHandling(Ljava/lang/Object;)I
    .registers 2
    .parameter "info"

    .prologue
    .line 1011
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->RouteInfo_getVolumeHandling(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getVolumeMax(Ljava/lang/Object;)I
    .registers 2
    .parameter "info"

    .prologue
    .line 980
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->RouteInfo_getVolumeMax(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static requestSetVolume(Ljava/lang/Object;I)V
    .registers 3
    .parameter "info"
    .parameter "volume"

    .prologue
    .line 989
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->RouteInfo_requestSetVolume(Ljava/lang/Object;I)V

    .line 990
    return-void
.end method

.method public static requestUpdateVolume(Ljava/lang/Object;I)V
    .registers 3
    .parameter "info"
    .parameter "direction"

    .prologue
    .line 999
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->RouteInfo_requestUpdateVolume(Ljava/lang/Object;I)V

    .line 1000
    return-void
.end method

.method public static setTag(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "info"
    .parameter "tag"

    .prologue
    .line 953
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->RouteInfo_setTag(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 954
    return-void
.end method
