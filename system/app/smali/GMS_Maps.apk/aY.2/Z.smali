.class LaY/Z;
.super Lap/b;


# instance fields
.field final synthetic a:LaY/i;

.field final synthetic e:LaY/Y;


# direct methods
.method constructor <init>(LaY/Y;Lap/c;LaY/i;)V
    .registers 4

    iput-object p1, p0, LaY/Z;->e:LaY/Y;

    iput-object p3, p0, LaY/Z;->a:LaY/i;

    invoke-direct {p0, p2}, Lap/b;-><init>(Lap/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, LaY/Z;->a:LaY/i;

    invoke-virtual {v0}, LaY/i;->aR()V

    return-void
.end method
