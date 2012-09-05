.class LaQ/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ez;

.field final synthetic b:LaQ/a;


# direct methods
.method constructor <init>(LaQ/a;Lcom/google/googlenav/ui/wizard/ez;)V
    .registers 3

    iput-object p1, p0, LaQ/c;->b:LaQ/a;

    iput-object p2, p0, LaQ/c;->a:Lcom/google/googlenav/ui/wizard/ez;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/C;

    iget-object v1, p0, LaQ/c;->a:Lcom/google/googlenav/ui/wizard/ez;

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/wizard/ez;->b(Lcom/google/googlenav/ui/wizard/C;)V

    const/4 v0, 0x1

    return v0
.end method
