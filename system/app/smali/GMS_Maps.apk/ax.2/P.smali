.class Lax/P;
.super Ljava/lang/Object;

# interfaces
.implements Lax/aK;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lax/x;


# direct methods
.method constructor <init>(Lax/x;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lax/P;->b:Lax/x;

    iput-object p2, p0, Lax/P;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    iget-object v0, p0, Lax/P;->b:Lax/x;

    invoke-static {v0}, Lax/x;->c(Lax/x;)Lcom/google/googlenav/ui/D;

    move-result-object v0

    const/16 v1, 0x163

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lax/P;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .registers 6

    iget-object v0, p0, Lax/P;->b:Lax/x;

    invoke-static {v0}, Lax/x;->c(Lax/x;)Lcom/google/googlenav/ui/D;

    move-result-object v0

    const/16 v1, 0x15f

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lax/P;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    return-void
.end method
