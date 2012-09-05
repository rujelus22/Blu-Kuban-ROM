.class final Lax/bg;
.super Lap/b;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:Lax/bi;


# direct methods
.method constructor <init>(Lap/c;Ljava/lang/String;ZLax/bi;)V
    .registers 5

    iput-object p2, p0, Lax/bg;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lax/bg;->e:Z

    iput-object p4, p0, Lax/bg;->f:Lax/bi;

    invoke-direct {p0, p1}, Lap/b;-><init>(Lap/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lax/bg;->a:Ljava/lang/String;

    iget-boolean v0, p0, Lax/bg;->e:Z

    if-eqz v0, :cond_15

    move v0, v1

    :goto_9
    invoke-static {v3, v0}, Lax/be;->a(Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lax/bg;->f:Lax/bi;

    if-eqz v0, :cond_17

    :goto_11
    invoke-interface {v3, v1}, Lax/bi;->a(Z)V

    return-void

    :cond_15
    move v0, v2

    goto :goto_9

    :cond_17
    move v1, v2

    goto :goto_11
.end method
