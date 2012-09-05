.class Lcom/google/googlenav/ui/V;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/g;


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/google/googlenav/ui/D;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/D;ZI)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/V;->c:Lcom/google/googlenav/ui/D;

    iput-boolean p2, p0, Lcom/google/googlenav/ui/V;->a:Z

    iput p3, p0, Lcom/google/googlenav/ui/V;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lam/b;)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/V;->c:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->a()V

    if-eqz p2, :cond_18

    invoke-static {p2}, Lcom/google/googlenav/ah;->a(Lam/b;)Lcom/google/googlenav/ah;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/googlenav/ui/V;->a:Z

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ah;->d(Z)V

    iget-object v1, p0, Lcom/google/googlenav/ui/V;->c:Lcom/google/googlenav/ui/D;

    iget v2, p0, Lcom/google/googlenav/ui/V;->b:I

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/ah;I)V

    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/google/googlenav/ui/V;->c:Lcom/google/googlenav/ui/D;

    const/16 v1, 0x335

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    goto :goto_17
.end method
