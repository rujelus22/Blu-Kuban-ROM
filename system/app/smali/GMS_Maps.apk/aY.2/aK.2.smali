.class LaY/aK;
.super Lap/b;


# instance fields
.field final synthetic a:LaY/aG;


# direct methods
.method constructor <init>(LaY/aG;Lap/c;)V
    .registers 3

    iput-object p1, p0, LaY/aK;->a:LaY/aG;

    invoke-direct {p0, p2}, Lap/b;-><init>(Lap/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, LaY/aK;->a:LaY/aG;

    invoke-virtual {v0}, LaY/aG;->e()V

    iget-object v0, p0, LaY/aK;->a:LaY/aG;

    invoke-virtual {v0}, LaY/aG;->i()V

    return-void
.end method
