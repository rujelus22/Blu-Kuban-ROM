.class Lcom/google/googlenav/ui/wizard/dP;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dS;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:[B

.field final synthetic d:Z

.field final synthetic e:Lcom/google/googlenav/ui/wizard/dO;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dO;Lcom/google/googlenav/ui/wizard/dS;Ljava/lang/String;[BZ)V
    .registers 6

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dP;->e:Lcom/google/googlenav/ui/wizard/dO;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/dP;->a:Lcom/google/googlenav/ui/wizard/dS;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/dP;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/dP;->c:[B

    iput-boolean p5, p0, Lcom/google/googlenav/ui/wizard/dP;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dP;->a:Lcom/google/googlenav/ui/wizard/dS;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/dS;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dP;->e:Lcom/google/googlenav/ui/wizard/dO;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dO;->a(Lcom/google/googlenav/ui/wizard/dO;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dP;->a:Lcom/google/googlenav/ui/wizard/dS;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/dS;->a()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dP;->e:Lcom/google/googlenav/ui/wizard/dO;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dP;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/dP;->c:[B

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/dO;->a(Lcom/google/googlenav/ui/wizard/dO;Ljava/lang/String;[B)Lbb/m;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/dP;->e:Lcom/google/googlenav/ui/wizard/dO;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/dO;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/hM;->A()Lcom/google/googlenav/android/ac;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/wizard/dQ;

    invoke-direct {v3, p0, v0}, Lcom/google/googlenav/ui/wizard/dQ;-><init>(Lcom/google/googlenav/ui/wizard/dP;Lbb/m;)V

    invoke-virtual {v2, v3, v1}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_31} :catch_32

    goto :goto_8

    :catch_32
    move-exception v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/dP;->e:Lcom/google/googlenav/ui/wizard/dO;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/dO;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/hM;->A()Lcom/google/googlenav/android/ac;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/wizard/dR;

    invoke-direct {v3, p0, v0}, Lcom/google/googlenav/ui/wizard/dR;-><init>(Lcom/google/googlenav/ui/wizard/dP;Ljava/io/IOException;)V

    invoke-virtual {v2, v3, v1}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    goto :goto_8
.end method
