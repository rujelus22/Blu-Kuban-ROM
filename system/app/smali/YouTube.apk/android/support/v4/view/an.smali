.class final Landroid/support/v4/view/an;
.super Landroid/support/v4/view/am;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 186
    invoke-direct {p0}, Landroid/support/v4/view/am;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 197
    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 198
    return-void
.end method

.method public final b(Landroid/view/View;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 217
    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 218
    return-void
.end method

.method public final c(Landroid/view/View;)I
    .registers 3
    .parameter

    .prologue
    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    return v0
.end method
