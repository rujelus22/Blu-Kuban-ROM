.class LaQ/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LaQ/p;


# direct methods
.method constructor <init>(LaQ/p;)V
    .registers 2

    iput-object p1, p0, LaQ/q;->a:LaQ/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, LaQ/q;->a:LaQ/p;

    invoke-static {v0}, LaQ/p;->b(LaQ/p;)LaQ/s;

    move-result-object v0

    iget-object v1, p0, LaQ/q;->a:LaQ/p;

    invoke-static {v1}, LaQ/p;->a(LaQ/p;)LaQ/m;

    move-result-object v1

    invoke-interface {v0, v1}, LaQ/s;->b(LaQ/m;)V

    return-void
.end method
