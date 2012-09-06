.class public Lcom/android/athome/picker/media/MediaRouterCompat$UserRouteInfo;
.super Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;
.source "MediaRouterCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/media/MediaRouterCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserRouteInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1030
    invoke-direct {p0}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;-><init>()V

    return-void
.end method

.method public static setName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "info"
    .parameter "name"

    .prologue
    .line 1038
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->UserRouteInfo_setName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1039
    return-void
.end method

.method public static setPlaybackType(Ljava/lang/Object;I)V
    .registers 3
    .parameter "info"
    .parameter "type"

    .prologue
    .line 1098
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->UserRouteInfo_setPlaybackType(Ljava/lang/Object;I)V

    .line 1099
    return-void
.end method

.method public static setStatus(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "info"
    .parameter "status"

    .prologue
    .line 1049
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->UserRouteInfo_setStatus(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1050
    return-void
.end method

.method public static setVolume(Ljava/lang/Object;I)V
    .registers 3
    .parameter "info"
    .parameter "volume"

    .prologue
    .line 1090
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->UserRouteInfo_setVolume(Ljava/lang/Object;I)V

    .line 1091
    return-void
.end method

.method public static setVolumeCallback(Ljava/lang/Object;Lcom/android/athome/picker/media/AbsMediaRouterCompat$VolumeCallback;)V
    .registers 3
    .parameter "info"
    .parameter "cb"

    .prologue
    .line 1110
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->UserRouteInfo_setVolumeCallback(Ljava/lang/Object;Lcom/android/athome/picker/media/AbsMediaRouterCompat$VolumeCallback;)V

    .line 1111
    return-void
.end method

.method public static setVolumeHandling(Ljava/lang/Object;I)V
    .registers 3
    .parameter "info"
    .parameter "volumeHandling"

    .prologue
    .line 1102
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->UserRouteInfo_setVolumeHandling(Ljava/lang/Object;I)V

    .line 1103
    return-void
.end method

.method public static setVolumeMax(Ljava/lang/Object;I)V
    .registers 3
    .parameter "info"
    .parameter "volumeMax"

    .prologue
    .line 1094
    sget-object v0, Lcom/android/athome/picker/media/MediaRouterCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/android/athome/picker/media/MediaRouterCompat$MediaRouterCompatImpl;->UserRouteInfo_setVolumeMax(Ljava/lang/Object;I)V

    .line 1095
    return-void
.end method
