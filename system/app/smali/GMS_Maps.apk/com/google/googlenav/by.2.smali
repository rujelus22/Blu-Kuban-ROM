.class Lcom/google/googlenav/by;
.super Lax/bu;


# instance fields
.field final synthetic a:Lcom/google/googlenav/bw;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/bw;Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/android/ac;Lax/bq;)V
    .registers 5

    iput-object p1, p0, Lcom/google/googlenav/by;->a:Lcom/google/googlenav/bw;

    invoke-direct {p0, p2, p3, p4}, Lax/bu;-><init>(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/android/ac;Lax/bq;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/by;)Lax/bq;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/by;->d:Lax/bq;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/by;)Lax/bq;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/by;->d:Lax/bq;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/by;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    const/16 v0, 0x55

    const-string v1, "os"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "s=a"

    aput-object v4, v2, v3

    invoke-static {v2}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/by;->b:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v1, p0, Lcom/google/googlenav/by;->a:Lcom/google/googlenav/bw;

    invoke-static {v1}, Lcom/google/googlenav/bw;->a(Lcom/google/googlenav/bw;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/bz;

    invoke-direct {v2, p0}, Lcom/google/googlenav/bz;-><init>(Lcom/google/googlenav/by;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Lcom/google/googlenav/ui/wizard/bY;)V

    return-void
.end method
