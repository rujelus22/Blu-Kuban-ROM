.class Lcom/google/googlenav/ui/wizard/he;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/aT;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gY;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gY;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/he;->a:Lcom/google/googlenav/ui/wizard/gY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/aS;)V
    .registers 5

    invoke-virtual {p1}, Lcom/google/googlenav/aS;->i()I

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x0

    move-object v1, v0

    :goto_8
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/he;->a:Lcom/google/googlenav/ui/wizard/gY;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/gY;->a(Lcom/google/googlenav/ui/wizard/gY;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/he;->a:Lcom/google/googlenav/ui/wizard/gY;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gY;->f:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lbd/av;

    invoke-virtual {v0, v1}, Lbd/av;->a(Ljava/lang/String;)V

    return-void

    :cond_17
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/aS;->a(I)Lcom/google/googlenav/aU;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/googlenav/aU;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/aU;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_8
.end method
