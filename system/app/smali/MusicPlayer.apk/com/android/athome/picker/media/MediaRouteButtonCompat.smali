.class public Lcom/android/athome/picker/media/MediaRouteButtonCompat;
.super Ljava/lang/Object;
.source "MediaRouteButtonCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/athome/picker/media/MediaRouteButtonCompat$MediaRouteButtonCompatJellybeanImpl;,
        Lcom/android/athome/picker/media/MediaRouteButtonCompat$MediaRouteButtonCompatFallbackImpl;,
        Lcom/android/athome/picker/media/MediaRouteButtonCompat$MediaRouteButtonCompatImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Lcom/android/athome/picker/media/MediaRouteButtonCompat$MediaRouteButtonCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    .line 80
    new-instance v0, Lcom/android/athome/picker/media/MediaRouteButtonCompat$MediaRouteButtonCompatJellybeanImpl;

    invoke-direct {v0}, Lcom/android/athome/picker/media/MediaRouteButtonCompat$MediaRouteButtonCompatJellybeanImpl;-><init>()V

    sput-object v0, Lcom/android/athome/picker/media/MediaRouteButtonCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouteButtonCompat$MediaRouteButtonCompatImpl;

    .line 84
    :goto_d
    return-void

    .line 82
    :cond_e
    new-instance v0, Lcom/android/athome/picker/media/MediaRouteButtonCompat$MediaRouteButtonCompatFallbackImpl;

    invoke-direct {v0}, Lcom/android/athome/picker/media/MediaRouteButtonCompat$MediaRouteButtonCompatFallbackImpl;-><init>()V

    sput-object v0, Lcom/android/athome/picker/media/MediaRouteButtonCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouteButtonCompat$MediaRouteButtonCompatImpl;

    goto :goto_d
.end method

.method public static setRouteTypes(Landroid/view/View;I)V
    .registers 3
    .parameter "mediaButton"
    .parameter "types"

    .prologue
    .line 99
    sget-object v0, Lcom/android/athome/picker/media/MediaRouteButtonCompat;->IMPL:Lcom/android/athome/picker/media/MediaRouteButtonCompat$MediaRouteButtonCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/android/athome/picker/media/MediaRouteButtonCompat$MediaRouteButtonCompatImpl;->setRouteTypes(Landroid/view/View;I)V

    .line 100
    return-void
.end method
