.class LaY/O;
.super Ljava/lang/Object;

# interfaces
.implements Lay/q;


# instance fields
.field final synthetic a:LaY/N;


# direct methods
.method constructor <init>(LaY/N;)V
    .registers 2

    iput-object p1, p0, LaY/O;->a:LaY/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aa_()V
    .registers 2

    iget-object v0, p0, LaY/O;->a:LaY/N;

    iget-object v0, v0, LaY/N;->a:LaY/K;

    invoke-virtual {v0}, LaY/K;->aa_()V

    return-void
.end method
