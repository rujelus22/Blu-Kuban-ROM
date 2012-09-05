.class Lcom/google/googlenav/ui/wizard/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lax/bn;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ad;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/ad;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ai;->a:Lcom/google/googlenav/ui/wizard/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/ad;Lcom/google/googlenav/ui/wizard/ae;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/ai;-><init>(Lcom/google/googlenav/ui/wizard/ad;)V

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ai;->a:Lcom/google/googlenav/ui/wizard/ad;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ad;->a(Lcom/google/googlenav/ui/wizard/ad;)Lcom/google/googlenav/ui/wizard/ah;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/ah;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Lam/b;Ljava/util/List;Lam/b;J)V
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ai;->a:Lcom/google/googlenav/ui/wizard/ad;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ad;->a(Lcom/google/googlenav/ui/wizard/ad;)Lcom/google/googlenav/ui/wizard/ah;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/googlenav/ui/wizard/ah;->a(Ljava/util/List;)V

    return-void
.end method
