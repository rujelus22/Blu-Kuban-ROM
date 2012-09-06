.class public Landroid/support/v4/view/H;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Landroid/support/v4/view/K;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    .line 68
    new-instance v0, Landroid/support/v4/view/J;

    invoke-direct {v0}, Landroid/support/v4/view/J;-><init>()V

    sput-object v0, Landroid/support/v4/view/H;->a:Landroid/support/v4/view/K;

    .line 72
    :goto_d
    return-void

    .line 70
    :cond_e
    new-instance v0, Landroid/support/v4/view/I;

    invoke-direct {v0}, Landroid/support/v4/view/I;-><init>()V

    sput-object v0, Landroid/support/v4/view/H;->a:Landroid/support/v4/view/K;

    goto :goto_d
.end method

.method public static a(Landroid/view/VelocityTracker;I)F
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 82
    sget-object v0, Landroid/support/v4/view/H;->a:Landroid/support/v4/view/K;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/K;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method
