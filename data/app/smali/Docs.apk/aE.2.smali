.class public LaE;
.super Ljava/lang/Object;
.source "VelocityTrackerCompat.java"


# static fields
.field static final a:LaH;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    .line 68
    new-instance v0, LaG;

    invoke-direct {v0}, LaG;-><init>()V

    sput-object v0, LaE;->a:LaH;

    .line 72
    :goto_d
    return-void

    .line 70
    :cond_e
    new-instance v0, LaF;

    invoke-direct {v0}, LaF;-><init>()V

    sput-object v0, LaE;->a:LaH;

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

.method public static a(Landroid/view/VelocityTracker;I)F
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 82
    sget-object v0, LaE;->a:LaH;

    invoke-interface {v0, p0, p1}, LaH;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method
