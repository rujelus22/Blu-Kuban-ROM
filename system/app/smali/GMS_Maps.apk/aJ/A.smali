.class LaJ/A;
.super Lap/b;


# instance fields
.field final synthetic a:LaJ/I;

.field final synthetic e:LaJ/z;


# direct methods
.method constructor <init>(LaJ/z;Lap/c;LaJ/I;)V
    .registers 4

    iput-object p1, p0, LaJ/A;->e:LaJ/z;

    iput-object p3, p0, LaJ/A;->a:LaJ/I;

    invoke-direct {p0, p2}, Lap/b;-><init>(Lap/c;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    iget-object v0, p0, LaJ/A;->e:LaJ/z;

    iget-object v1, p0, LaJ/A;->a:LaJ/I;

    invoke-static {v0, v1}, LaJ/z;->a(LaJ/z;LaJ/I;)V

    return-void
.end method
