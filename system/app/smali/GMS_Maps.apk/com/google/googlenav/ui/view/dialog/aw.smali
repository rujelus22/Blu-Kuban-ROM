.class Lcom/google/googlenav/ui/view/dialog/aw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/au;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/au;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/aw;->a:Lcom/google/googlenav/ui/view/dialog/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aw;->a:Lcom/google/googlenav/ui/view/dialog/au;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/au;->a:Lcom/google/googlenav/ui/wizard/hp;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hp;->h()V

    return-void
.end method
