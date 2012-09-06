.class Landroid/support/v4/view/MenuCompat$HoneycombMenuVersionImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/MenuCompat$MenuVersionImpl;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setShowAsAction(Landroid/view/MenuItem;I)Z
    .registers 4

    invoke-static {p1, p2}, Landroid/support/v4/view/MenuItemCompatHoneycomb;->setShowAsAction(Landroid/view/MenuItem;I)V

    const/4 v0, 0x1

    return v0
.end method
