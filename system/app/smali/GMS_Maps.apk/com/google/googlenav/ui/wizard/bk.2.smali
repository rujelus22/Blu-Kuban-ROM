.class Lcom/google/googlenav/ui/wizard/bk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/bS;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/bi;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/bi;Lcom/google/googlenav/bS;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bk;->b:Lcom/google/googlenav/ui/wizard/bi;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/bk;->a:Lcom/google/googlenav/bS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bk;->b:Lcom/google/googlenav/ui/wizard/bi;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bi;->a:Lcom/google/googlenav/ui/wizard/bf;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bk;->a:Lcom/google/googlenav/bS;

    invoke-virtual {v1}, Lcom/google/googlenav/bS;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/bf;->a(Ljava/lang/String;)V

    return-void
.end method
