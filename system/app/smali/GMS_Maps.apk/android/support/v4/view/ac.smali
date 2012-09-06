.class final Landroid/support/v4/view/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/view/af;Landroid/support/v4/view/af;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 109
    iget v0, p1, Landroid/support/v4/view/af;->b:I

    iget v1, p2, Landroid/support/v4/view/af;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 106
    check-cast p1, Landroid/support/v4/view/af;

    check-cast p2, Landroid/support/v4/view/af;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/ac;->a(Landroid/support/v4/view/af;Landroid/support/v4/view/af;)I

    move-result v0

    return v0
.end method
