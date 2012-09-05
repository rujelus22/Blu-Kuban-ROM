.class public final Landroid/support/v4/view/k;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/view/n;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/view/m;

    invoke-direct {v0}, Landroid/support/v4/view/m;-><init>()V

    sput-object v0, Landroid/support/v4/view/k;->a:Landroid/support/v4/view/n;

    :goto_d
    return-void

    :cond_e
    new-instance v0, Landroid/support/v4/view/l;

    invoke-direct {v0}, Landroid/support/v4/view/l;-><init>()V

    sput-object v0, Landroid/support/v4/view/k;->a:Landroid/support/v4/view/n;

    goto :goto_d
.end method

.method public static a(Landroid/view/VelocityTracker;I)F
    .registers 3

    sget-object v0, Landroid/support/v4/view/k;->a:Landroid/support/v4/view/n;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/n;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method
