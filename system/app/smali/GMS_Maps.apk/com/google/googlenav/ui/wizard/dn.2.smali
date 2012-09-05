.class Lcom/google/googlenav/ui/wizard/dn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dm;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dm;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dn;->a:Lcom/google/googlenav/ui/wizard/dm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dn;->a:Lcom/google/googlenav/ui/wizard/dm;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dm;->a(Lcom/google/googlenav/ui/wizard/dm;)Lcom/google/googlenav/ui/wizard/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/dq;->a()V

    return-void
.end method
