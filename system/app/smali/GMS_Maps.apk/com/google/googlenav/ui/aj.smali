.class public Lcom/google/googlenav/ui/aj;
.super Ljava/lang/Object;


# instance fields
.field private a:Lah/f;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lah/f;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/aj;->a:Lah/f;

    return-void
.end method

.method public b()Lah/f;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/aj;->a:Lah/f;

    return-object v0
.end method
