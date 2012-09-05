.class public Lcom/google/googlenav/ar;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/googlenav/ap;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lam/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ar;->b:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ar;->c:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ar;->a:Lcom/google/googlenav/ap;

    :goto_1b
    return-void

    :cond_1c
    new-instance v1, Lcom/google/googlenav/ap;

    invoke-direct {v1, v0}, Lcom/google/googlenav/ap;-><init>(Lam/b;)V

    iput-object v1, p0, Lcom/google/googlenav/ar;->a:Lcom/google/googlenav/ap;

    goto :goto_1b
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ap;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ar;->a:Lcom/google/googlenav/ap;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ar;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ar;->c:Ljava/lang/String;

    return-object v0
.end method
