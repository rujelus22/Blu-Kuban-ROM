.class Lbd/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lbd/an;


# direct methods
.method constructor <init>(Lbd/an;)V
    .registers 2

    iput-object p1, p0, Lbd/ao;->a:Lbd/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lbd/ao;->a:Lbd/an;

    invoke-virtual {v0}, Lbd/an;->i()V

    iget-object v0, p0, Lbd/ao;->a:Lbd/an;

    invoke-static {v0}, Lbd/an;->a(Lbd/an;)Lcom/google/googlenav/L;

    move-result-object v0

    const/16 v1, 0x277

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    return-void
.end method
