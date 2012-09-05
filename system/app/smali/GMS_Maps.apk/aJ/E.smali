.class LaJ/E;
.super Lap/b;


# instance fields
.field final synthetic a:I

.field final synthetic e:I

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:LaJ/D;


# direct methods
.method constructor <init>(LaJ/D;Lap/c;IILjava/lang/String;)V
    .registers 6

    iput-object p1, p0, LaJ/E;->g:LaJ/D;

    iput p3, p0, LaJ/E;->a:I

    iput p4, p0, LaJ/E;->e:I

    iput-object p5, p0, LaJ/E;->f:Ljava/lang/String;

    invoke-direct {p0, p2}, Lap/b;-><init>(Lap/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, LaJ/E;->g:LaJ/D;

    iget v1, p0, LaJ/E;->a:I

    iget v2, p0, LaJ/E;->e:I

    iget-object v3, p0, LaJ/E;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, LaJ/D;->a(LaJ/D;IILjava/lang/String;)V

    return-void
.end method
