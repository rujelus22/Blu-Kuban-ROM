.class Landroid/support/v4/view/Q;
.super Landroid/support/v4/view/P;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/support/v4/view/P;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 182
    invoke-virtual {p2}, Landroid/support/v4/view/a;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/view/V;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method public a(Landroid/view/View;Ld/f;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 178
    invoke-virtual {p2}, Ld/f;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/view/V;->b(Landroid/view/View;Ljava/lang/Object;)V

    .line 179
    return-void
.end method

.method public a(Landroid/view/View;I)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-static {p1, p2}, Landroid/support/v4/view/V;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method
