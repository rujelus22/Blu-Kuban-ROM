.class public final Landroid/support/v4/view/t;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/view/w;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/view/v;

    invoke-direct {v0}, Landroid/support/v4/view/v;-><init>()V

    sput-object v0, Landroid/support/v4/view/t;->a:Landroid/support/v4/view/w;

    :goto_d
    return-void

    :cond_e
    new-instance v0, Landroid/support/v4/view/u;

    invoke-direct {v0}, Landroid/support/v4/view/u;-><init>()V

    sput-object v0, Landroid/support/v4/view/t;->a:Landroid/support/v4/view/w;

    goto :goto_d
.end method

.method public static a(Landroid/view/ViewConfiguration;)I
    .registers 2

    sget-object v0, Landroid/support/v4/view/t;->a:Landroid/support/v4/view/w;

    invoke-interface {v0, p0}, Landroid/support/v4/view/w;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    return v0
.end method
