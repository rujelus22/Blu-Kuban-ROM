.class LaV/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/w;


# instance fields
.field final synthetic a:I

.field final synthetic b:LaV/r;


# direct methods
.method constructor <init>(LaV/r;I)V
    .registers 3

    iput-object p1, p0, LaV/s;->b:LaV/r;

    iput p2, p0, LaV/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LaV/q;)Z
    .registers 4

    invoke-virtual {p1}, LaV/q;->a()I

    move-result v0

    iget v1, p0, LaV/s;->a:I

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, LaV/q;

    invoke-virtual {p0, p1}, LaV/s;->a(LaV/q;)Z

    move-result v0

    return v0
.end method
