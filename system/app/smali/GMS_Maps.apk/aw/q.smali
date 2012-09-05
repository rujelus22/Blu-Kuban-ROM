.class public Law/q;
.super Ljava/lang/Object;

# interfaces
.implements Law/e;


# instance fields
.field private final a:Lcom/google/googlenav/ui/D;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/D;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Law/q;->a:Lcom/google/googlenav/ui/D;

    return-void
.end method

.method static synthetic a(Law/q;)Lcom/google/googlenav/ui/D;
    .registers 2

    iget-object v0, p0, Law/q;->a:Lcom/google/googlenav/ui/D;

    return-object v0
.end method


# virtual methods
.method public a(Law/a;Law/f;)Law/d;
    .registers 7

    new-instance v0, Law/o;

    iget-object v1, p0, Law/q;->a:Lcom/google/googlenav/ui/D;

    new-instance v2, Law/r;

    invoke-direct {v2, p0, p1, p2}, Law/r;-><init>(Law/q;Law/a;Law/f;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Law/o;-><init>(Lcom/google/googlenav/ui/D;Law/f;Law/p;)V

    return-object v0
.end method
