.class Landroid/support/v4/view/R;
.super Landroid/support/v4/view/Q;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 186
    invoke-direct {p0}, Landroid/support/v4/view/Q;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 197
    invoke-static {p1}, Landroid/support/v4/view/W;->a(Landroid/view/View;)V

    .line 198
    return-void
.end method

.method public b(Landroid/view/View;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 217
    invoke-static {p1, p2}, Landroid/support/v4/view/W;->a(Landroid/view/View;I)V

    .line 218
    return-void
.end method

.method public c(Landroid/view/View;)I
    .registers 3
    .parameter

    .prologue
    .line 213
    invoke-static {p1}, Landroid/support/v4/view/W;->b(Landroid/view/View;)I

    move-result v0

    return v0
.end method
