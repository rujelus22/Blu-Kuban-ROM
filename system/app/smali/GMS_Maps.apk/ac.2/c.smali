.class LaC/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gi;

.field final synthetic b:LaC/a;


# direct methods
.method constructor <init>(LaC/a;Lcom/google/googlenav/ui/wizard/gi;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, LaC/c;->b:LaC/a;

    iput-object p2, p0, LaC/c;->a:Lcom/google/googlenav/ui/wizard/gi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 4
    .parameter

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/F;

    .line 93
    iget-object v1, p0, LaC/c;->a:Lcom/google/googlenav/ui/wizard/gi;

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/wizard/gi;->b(Lcom/google/googlenav/ui/wizard/F;)V

    .line 94
    const/4 v0, 0x1

    return v0
.end method
