.class Lcom/google/googlenav/ui/wizard/hO;
.super Ljava/lang/Object;

# interfaces
.implements Lat/d;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/hM;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hO;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public X()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->p()V

    return-void
.end method
