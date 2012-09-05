.class LaD/k;
.super Ljava/lang/Object;

# interfaces
.implements Lay/q;


# instance fields
.field final synthetic a:Lay/q;

.field final synthetic b:LaD/j;


# direct methods
.method constructor <init>(LaD/j;Lay/q;)V
    .registers 3

    iput-object p1, p0, LaD/k;->b:LaD/j;

    iput-object p2, p0, LaD/k;->a:Lay/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aa_()V
    .registers 3

    iget-object v0, p0, LaD/k;->a:Lay/q;

    if-eqz v0, :cond_9

    iget-object v0, p0, LaD/k;->a:Lay/q;

    invoke-interface {v0}, Lay/q;->aa_()V

    :cond_9
    iget-object v0, p0, LaD/k;->b:LaD/j;

    invoke-static {v0}, LaD/j;->a(LaD/j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, LaD/k;->b:LaD/j;

    iget-object v1, p0, LaD/k;->a:Lay/q;

    invoke-virtual {v0, v1}, LaD/j;->a(Lay/q;)I

    :cond_1c
    return-void
.end method
