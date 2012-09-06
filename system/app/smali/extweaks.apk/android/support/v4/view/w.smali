.class Landroid/support/v4/view/w;
.super Landroid/support/v4/view/v;
.source "ViewCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/support/v4/view/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)I
    .registers 3
    .parameter

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    return v0
.end method

.method public final c(Landroid/view/View;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->setOverScrollMode(I)V

    .line 92
    return-void
.end method
