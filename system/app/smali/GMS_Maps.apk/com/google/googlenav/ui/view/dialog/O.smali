.class public abstract Lcom/google/googlenav/ui/view/dialog/O;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/K;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/view/dialog/K;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/O;->a:Lcom/google/googlenav/ui/view/dialog/K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public c()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/O;->b()V

    return-void
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/O;->a:Lcom/google/googlenav/ui/view/dialog/K;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/K;->i()Landroid/widget/ViewSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showNext()V

    return-void
.end method
