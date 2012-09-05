.class Lcom/google/googlenav/ui/wizard/dR;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/IOException;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/dP;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dP;Ljava/io/IOException;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dR;->b:Lcom/google/googlenav/ui/wizard/dP;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/dR;->a:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dR;->b:Lcom/google/googlenav/ui/wizard/dP;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dP;->e:Lcom/google/googlenav/ui/wizard/dO;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dO;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dR;->b:Lcom/google/googlenav/ui/wizard/dP;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dP;->e:Lcom/google/googlenav/ui/wizard/dO;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dO;->b(Lcom/google/googlenav/ui/wizard/dO;)Lcom/google/googlenav/L;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dR;->a:Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    return-void
.end method
