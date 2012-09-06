.class LaF;
.super Ljava/lang/Object;
.source "VelocityTrackerCompat.java"

# interfaces
.implements LaH;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/VelocityTracker;I)F
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    return v0
.end method
