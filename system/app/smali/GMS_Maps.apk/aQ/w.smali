.class LaQ/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LaQ/v;


# direct methods
.method constructor <init>(LaQ/v;)V
    .registers 2

    iput-object p1, p0, LaQ/w;->a:LaQ/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    const v0, 0x5245464d

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/I;

    invoke-virtual {v0}, LaQ/I;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    const/16 v2, 0x70

    const-string v3, "p"

    invoke-static {v2, v3, v1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_16
    iget-object v1, p0, LaQ/w;->a:LaQ/v;

    invoke-static {v1}, LaQ/v;->a(LaQ/v;)Lcom/google/googlenav/ui/wizard/ez;

    move-result-object v1

    invoke-virtual {v0}, LaQ/I;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/google/googlenav/ui/wizard/ez;->a(Ljava/lang/String;Ljava/lang/String;LaQ/I;)V

    return-void
.end method
