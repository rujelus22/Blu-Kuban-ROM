.class LaY/aw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/ui/p;

.field final synthetic c:[Lcom/google/googlenav/au;

.field final synthetic d:LaY/au;


# direct methods
.method constructor <init>(LaY/au;ILcom/google/googlenav/ui/p;[Lcom/google/googlenav/au;)V
    .registers 5

    iput-object p1, p0, LaY/aw;->d:LaY/au;

    iput p2, p0, LaY/aw;->a:I

    iput-object p3, p0, LaY/aw;->b:Lcom/google/googlenav/ui/p;

    iput-object p4, p0, LaY/aw;->c:[Lcom/google/googlenav/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget v1, p0, LaY/aw;->a:I

    iget-object v0, p0, LaY/aw;->d:LaY/au;

    invoke-static {v0}, LaY/au;->b(LaY/au;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_b
    add-int/2addr v0, v1

    iget-object v1, p0, LaY/aw;->d:LaY/au;

    invoke-static {v1}, LaY/au;->b(LaY/au;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object v1, p0, LaY/aw;->b:Lcom/google/googlenav/ui/p;

    const/16 v2, 0x907

    iget-object v3, p0, LaY/aw;->d:LaY/au;

    invoke-static {v3}, LaY/au;->b(LaY/au;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    :goto_21
    return-void

    :cond_22
    const/4 v0, 0x0

    goto :goto_b

    :cond_24
    iget-object v1, p0, LaY/aw;->b:Lcom/google/googlenav/ui/p;

    const/16 v2, 0x908

    iget-object v3, p0, LaY/aw;->c:[Lcom/google/googlenav/au;

    invoke-interface {v1, v2, v0, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    goto :goto_21
.end method
