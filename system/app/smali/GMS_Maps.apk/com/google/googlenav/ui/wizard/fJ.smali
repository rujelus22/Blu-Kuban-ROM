.class Lcom/google/googlenav/ui/wizard/fJ;
.super Ljava/lang/Object;

# interfaces
.implements LaS/d;


# instance fields
.field private final a:Lax/bq;

.field private final b:Lcom/google/googlenav/ui/wizard/fM;


# direct methods
.method public constructor <init>(Lax/bq;Lcom/google/googlenav/ui/wizard/fM;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fJ;->a:Lax/bq;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/fJ;->b:Lcom/google/googlenav/ui/wizard/fM;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .registers 4

    if-eqz p2, :cond_16

    invoke-static {}, Lcom/google/googlenav/bw;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Las/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fJ;->a:Lax/bq;

    invoke-virtual {v0, p1}, Lax/bq;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fJ;->b:Lcom/google/googlenav/ui/wizard/fM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fM;->c()V

    :cond_16
    return-void
.end method
