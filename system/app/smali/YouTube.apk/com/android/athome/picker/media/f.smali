.class final Lcom/android/athome/picker/media/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/athome/picker/media/g;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 47
    check-cast p1, Lcom/android/athome/picker/media/MediaRouteButtonFallback;

    invoke-virtual {p1, p2}, Lcom/android/athome/picker/media/MediaRouteButtonFallback;->setRouteTypes(I)V

    .line 48
    return-void
.end method
