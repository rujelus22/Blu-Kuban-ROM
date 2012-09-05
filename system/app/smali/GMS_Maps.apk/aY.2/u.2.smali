.class LaY/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/S;


# instance fields
.field final synthetic a:LaY/t;


# direct methods
.method constructor <init>(LaY/t;)V
    .registers 2

    iput-object p1, p0, LaY/u;->a:LaY/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 7

    if-nez p1, :cond_1f

    iget-object v0, p0, LaY/u;->a:LaY/t;

    iget-object v0, v0, LaY/t;->b:Lcom/google/googlenav/ui/D;

    const/16 v1, 0x213

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, LaY/u;->a:LaY/t;

    invoke-virtual {v4}, LaY/t;->aM()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    :cond_1f
    return-void
.end method
