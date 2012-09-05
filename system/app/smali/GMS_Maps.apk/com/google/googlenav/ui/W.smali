.class Lcom/google/googlenav/ui/W;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/g;


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/googlenav/ui/D;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/D;ZILjava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/google/googlenav/ui/W;->d:Lcom/google/googlenav/ui/D;

    iput-boolean p2, p0, Lcom/google/googlenav/ui/W;->a:Z

    iput p3, p0, Lcom/google/googlenav/ui/W;->b:I

    iput-object p4, p0, Lcom/google/googlenav/ui/W;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lam/b;)V
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/ui/W;->d:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->a()V

    if-eqz p2, :cond_1a

    invoke-static {p2}, Lcom/google/googlenav/ah;->a(Lam/b;)Lcom/google/googlenav/ah;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/googlenav/ui/W;->a:Z

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ah;->d(Z)V

    iget-object v1, p0, Lcom/google/googlenav/ui/W;->d:Lcom/google/googlenav/ui/D;

    iget v2, p0, Lcom/google/googlenav/ui/W;->b:I

    iget-object v3, p0, Lcom/google/googlenav/ui/W;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/ah;ILjava/lang/String;)V

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/google/googlenav/ui/W;->d:Lcom/google/googlenav/ui/D;

    const/16 v1, 0x335

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    goto :goto_19
.end method
