.class public abstract LaV/c;
.super LaV/f;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, LaV/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(LaV/r;)V
    .registers 4

    invoke-static {}, LaV/n;->a()LaV/n;

    move-result-object v0

    invoke-virtual {p0}, LaV/c;->c()I

    move-result v1

    invoke-virtual {v0, v1}, LaV/n;->b(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, LaV/n;->a(LaV/r;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1}, LaV/c;->b(Ljava/lang/String;)LaV/r;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, LaV/c;->a:Z

    invoke-virtual {p0, v0}, LaV/c;->a(LaV/r;)V

    return-void
.end method

.method protected abstract b(Ljava/lang/String;)LaV/r;
.end method
