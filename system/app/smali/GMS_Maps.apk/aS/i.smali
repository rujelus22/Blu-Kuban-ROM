.class LaS/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/aw;

.field final synthetic b:LaS/e;


# direct methods
.method constructor <init>(LaS/e;Lcom/google/googlenav/aw;)V
    .registers 3

    iput-object p1, p0, LaS/i;->b:LaS/e;

    iput-object p2, p0, LaS/i;->a:Lcom/google/googlenav/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, LaS/i;->b:LaS/e;

    invoke-static {v0}, LaS/e;->c(LaS/e;)Lcom/google/googlenav/ui/wizard/fu;

    move-result-object v0

    iget-object v1, p0, LaS/i;->a:Lcom/google/googlenav/aw;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/fu;->a(Lcom/google/googlenav/aw;)V

    return-void
.end method
