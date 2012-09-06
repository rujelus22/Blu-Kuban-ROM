.class Lcom/google/googlenav/ui/view/android/ay;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/google/googlenav/ui/view/android/az;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 285
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 290
    if-eqz p2, :cond_c

    .line 291
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/ay;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/az;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/view/android/az;->a(Landroid/view/View;)V

    .line 297
    :goto_b
    return-object p2

    .line 294
    :cond_c
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/ay;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/az;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ay;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/az;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    .line 295
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_b
.end method
