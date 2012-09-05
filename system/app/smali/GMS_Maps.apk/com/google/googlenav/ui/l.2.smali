.class Lcom/google/googlenav/ui/l;
.super Ljava/lang/Object;

# interfaces
.implements Lax/bj;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/f;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/f;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/l;->a:Lcom/google/googlenav/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/googlenav/ui/l;->a:Lcom/google/googlenav/ui/f;

    if-ne p1, v2, :cond_1d

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_7
    invoke-static {v1, v0}, Lcom/google/googlenav/ui/f;->a(Lcom/google/googlenav/ui/f;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/googlenav/ui/l;->a:Lcom/google/googlenav/ui/f;

    invoke-static {v0}, Lcom/google/googlenav/ui/f;->a(Lcom/google/googlenav/ui/f;)Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ae()Lcom/google/googlenav/android/ac;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/m;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/m;-><init>(Lcom/google/googlenav/ui/l;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void

    :cond_1d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7
.end method
