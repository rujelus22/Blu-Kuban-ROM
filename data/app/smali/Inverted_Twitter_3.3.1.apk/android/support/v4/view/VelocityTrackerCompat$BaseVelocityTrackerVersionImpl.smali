.class Landroid/support/v4/view/VelocityTrackerCompat$BaseVelocityTrackerVersionImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getXVelocity(Landroid/view/VelocityTracker;I)F
    .registers 4

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    return v0
.end method

.method public getYVelocity(Landroid/view/VelocityTracker;I)F
    .registers 4

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    return v0
.end method
