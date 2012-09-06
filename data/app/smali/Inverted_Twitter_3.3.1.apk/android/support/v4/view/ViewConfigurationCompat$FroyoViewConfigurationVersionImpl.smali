.class Landroid/support/v4/view/ViewConfigurationCompat$FroyoViewConfigurationVersionImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I
    .registers 3

    invoke-static {p1}, Landroid/support/v4/view/ViewConfigurationCompatFroyo;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v0

    return v0
.end method
