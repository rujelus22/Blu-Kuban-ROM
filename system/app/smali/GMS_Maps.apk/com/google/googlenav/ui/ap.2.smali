.class Lcom/google/googlenav/ui/ap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/StringBuilder;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/googlenav/ui/ak;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/ak;Ljava/lang/StringBuilder;ZLjava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/google/googlenav/ui/ap;->d:Lcom/google/googlenav/ui/ak;

    iput-object p2, p0, Lcom/google/googlenav/ui/ap;->a:Ljava/lang/StringBuilder;

    iput-boolean p3, p0, Lcom/google/googlenav/ui/ap;->b:Z

    iput-object p4, p0, Lcom/google/googlenav/ui/ap;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->d:Lcom/google/googlenav/ui/ak;

    invoke-static {v0}, Lcom/google/googlenav/ui/ak;->f(Lcom/google/googlenav/ui/ak;)Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    const/16 v1, 0x222

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/ap;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x220

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/googlenav/ui/ap;->b:Z

    if-eqz v4, :cond_31

    const/16 v4, 0x62

    :goto_1e
    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/google/googlenav/ui/ap;->b:Z

    if-eqz v6, :cond_34

    const/4 v6, 0x0

    :goto_28
    new-instance v7, Lcom/google/googlenav/ui/aq;

    invoke-direct {v7, p0}, Lcom/google/googlenav/ui/aq;-><init>(Lcom/google/googlenav/ui/ap;)V

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/aX;)V

    return-void

    :cond_31
    const/16 v4, 0x221

    goto :goto_1e

    :cond_34
    const/16 v6, 0x21d

    invoke-static {v6}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_28
.end method
