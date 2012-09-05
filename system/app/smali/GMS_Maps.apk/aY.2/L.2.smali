.class LaY/L;
.super Ljava/lang/Object;

# interfaces
.implements Lax/bj;


# instance fields
.field final synthetic a:LaY/K;


# direct methods
.method constructor <init>(LaY/K;)V
    .registers 2

    iput-object p1, p0, LaY/L;->a:LaY/K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_5
    const/4 v1, 0x0

    iget-object v2, p0, LaY/L;->a:LaY/K;

    invoke-static {v2}, LaY/K;->a(LaY/K;)LaX/g;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, LaX/g;->a(Ljava/lang/Boolean;Z)V

    return-void

    :cond_10
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_5
.end method
