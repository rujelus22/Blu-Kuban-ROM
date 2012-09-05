.class LaX/d;
.super Ljava/lang/Object;

# interfaces
.implements LaX/f;


# instance fields
.field final synthetic a:LaX/f;

.field final synthetic b:Lcom/google/googlenav/android/ac;

.field final synthetic c:LaX/a;


# direct methods
.method constructor <init>(LaX/a;LaX/f;Lcom/google/googlenav/android/ac;)V
    .registers 4

    iput-object p1, p0, LaX/d;->c:LaX/a;

    iput-object p2, p0, LaX/d;->a:LaX/f;

    iput-object p3, p0, LaX/d;->b:Lcom/google/googlenav/android/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lax/bz;)V
    .registers 5

    iget-object v0, p0, LaX/d;->c:LaX/a;

    invoke-virtual {v0, p1}, LaX/a;->a(Lax/bz;)V

    iget-object v0, p0, LaX/d;->c:LaX/a;

    iget-object v1, p0, LaX/d;->a:LaX/f;

    iget-object v2, p0, LaX/d;->b:Lcom/google/googlenav/android/ac;

    invoke-static {v0, p1, v1, v2}, LaX/a;->a(LaX/a;Lax/bz;LaX/f;Lcom/google/googlenav/android/ac;)V

    return-void
.end method
