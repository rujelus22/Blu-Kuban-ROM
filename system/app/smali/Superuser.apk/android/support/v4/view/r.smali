.class final Landroid/support/v4/view/r;
.super Landroid/support/v4/view/q;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/view/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)Z
    .registers 4

    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    return v0
.end method
