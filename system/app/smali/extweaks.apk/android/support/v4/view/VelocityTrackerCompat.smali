.class public Landroid/support/v4/view/VelocityTrackerCompat;
.super Ljava/lang/Object;
.source "VelocityTrackerCompat.java"


# static fields
.field static final IMPL:Landroid/support/v4/view/u;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    .line 68
    new-instance v0, Landroid/support/v4/view/t;

    invoke-direct {v0}, Landroid/support/v4/view/t;-><init>()V

    sput-object v0, Landroid/support/v4/view/VelocityTrackerCompat;->IMPL:Landroid/support/v4/view/u;

    .line 72
    :goto_d
    return-void

    .line 70
    :cond_e
    new-instance v0, Landroid/support/v4/view/s;

    invoke-direct {v0}, Landroid/support/v4/view/s;-><init>()V

    sput-object v0, Landroid/support/v4/view/VelocityTrackerCompat;->IMPL:Landroid/support/v4/view/u;

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static getXVelocity(Landroid/view/VelocityTracker;I)F
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 82
    sget-object v0, Landroid/support/v4/view/VelocityTrackerCompat;->IMPL:Landroid/support/v4/view/u;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/u;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method

.method public static getYVelocity(Landroid/view/VelocityTracker;I)F
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 91
    sget-object v0, Landroid/support/v4/view/VelocityTrackerCompat;->IMPL:Landroid/support/v4/view/u;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/u;->b(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method
