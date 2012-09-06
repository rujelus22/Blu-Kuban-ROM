.class public Landroid/support/v4/view/MenuCompat;
.super Ljava/lang/Object;


# static fields
.field static final IMPL:Landroid/support/v4/view/MenuCompat$MenuVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/view/MenuCompat$HoneycombMenuVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/MenuCompat$HoneycombMenuVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/MenuCompat;->IMPL:Landroid/support/v4/view/MenuCompat$MenuVersionImpl;

    :goto_d
    return-void

    :cond_e
    new-instance v0, Landroid/support/v4/view/MenuCompat$BaseMenuVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/MenuCompat$BaseMenuVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/MenuCompat;->IMPL:Landroid/support/v4/view/MenuCompat$MenuVersionImpl;

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setShowAsAction(Landroid/view/MenuItem;I)Z
    .registers 3

    sget-object v0, Landroid/support/v4/view/MenuCompat;->IMPL:Landroid/support/v4/view/MenuCompat$MenuVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/MenuCompat$MenuVersionImpl;->setShowAsAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method
