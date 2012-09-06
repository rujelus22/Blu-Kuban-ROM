.class final Lcom/android/athome/picker/media/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/athome/picker/media/g;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 69
    check-cast p1, Landroid/app/MediaRouteButton;

    invoke-virtual {p1, p2}, Landroid/app/MediaRouteButton;->setRouteTypes(I)V

    .line 70
    return-void
.end method
