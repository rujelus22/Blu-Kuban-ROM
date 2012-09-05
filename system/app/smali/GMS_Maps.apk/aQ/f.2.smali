.class LaQ/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LaQ/e;


# direct methods
.method constructor <init>(LaQ/e;)V
    .registers 2

    iput-object p1, p0, LaQ/f;->a:LaQ/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, LaQ/f;->a:LaQ/e;

    invoke-static {v0}, LaQ/e;->a(LaQ/e;)Lcom/google/googlenav/ui/wizard/ez;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/ez;->p()V

    return-void
.end method
