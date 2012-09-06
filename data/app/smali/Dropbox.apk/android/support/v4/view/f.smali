.class public final Landroid/support/v4/view/f;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field static final a:Landroid/support/v4/view/i;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    .line 61
    new-instance v0, Landroid/support/v4/view/h;

    invoke-direct {v0}, Landroid/support/v4/view/h;-><init>()V

    sput-object v0, Landroid/support/v4/view/f;->a:Landroid/support/v4/view/i;

    .line 65
    :goto_d
    return-void

    .line 63
    :cond_e
    new-instance v0, Landroid/support/v4/view/g;

    invoke-direct {v0}, Landroid/support/v4/view/g;-><init>()V

    sput-object v0, Landroid/support/v4/view/f;->a:Landroid/support/v4/view/i;

    goto :goto_d
.end method

.method public static a(Landroid/view/MenuItem;I)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 79
    sget-object v0, Landroid/support/v4/view/f;->a:Landroid/support/v4/view/i;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/i;->a(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method
