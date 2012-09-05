.class Lcom/google/googlenav/bp;
.super Lax/bu;


# instance fields
.field final synthetic a:Lcom/google/googlenav/bl;

.field private final e:Lcom/google/googlenav/bn;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/bl;Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/android/ac;Lax/bq;Lcom/google/googlenav/bn;)V
    .registers 6

    iput-object p1, p0, Lcom/google/googlenav/bp;->a:Lcom/google/googlenav/bl;

    invoke-direct {p0, p2, p3, p4}, Lax/bu;-><init>(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/android/ac;Lax/bq;)V

    iput-object p5, p0, Lcom/google/googlenav/bp;->e:Lcom/google/googlenav/bn;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/bp;)Lax/bq;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bp;->d:Lax/bq;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/bp;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    iget-object v0, p0, Lcom/google/googlenav/bp;->b:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v1, p0, Lcom/google/googlenav/bp;->e:Lcom/google/googlenav/bn;

    iget-object v2, p0, Lcom/google/googlenav/bp;->a:Lcom/google/googlenav/bl;

    invoke-static {v2}, Lcom/google/googlenav/bl;->a(Lcom/google/googlenav/bl;)Lcom/google/googlenav/bo;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/bq;

    invoke-direct {v3, p0}, Lcom/google/googlenav/bq;-><init>(Lcom/google/googlenav/bp;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/bn;Lcom/google/googlenav/bo;Lcom/google/googlenav/ui/wizard/hu;)V

    return-void
.end method
