.class final Landroid/support/v4/view/J;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/view/M;Landroid/support/v4/view/M;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 103
    iget v0, p1, Landroid/support/v4/view/M;->b:I

    iget v1, p2, Landroid/support/v4/view/M;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 100
    check-cast p1, Landroid/support/v4/view/M;

    check-cast p2, Landroid/support/v4/view/M;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/J;->a(Landroid/support/v4/view/M;Landroid/support/v4/view/M;)I

    move-result v0

    return v0
.end method
