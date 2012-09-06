.class public abstract Lcom/google/googlenav/ui/view/dialog/aq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/am;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/view/dialog/am;)V
    .registers 2
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/aq;->a:Lcom/google/googlenav/ui/view/dialog/am;

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

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aq;->b()V

    .line 49
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aq;->a:Lcom/google/googlenav/ui/view/dialog/am;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/am;->i()Landroid/widget/ViewSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 54
    return-void
.end method
