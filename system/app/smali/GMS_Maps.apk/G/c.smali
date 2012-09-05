.class public LG/c;
.super LF/b;


# instance fields
.field private final a:LG/m;


# direct methods
.method public constructor <init>(LG/m;)V
    .registers 4

    const-string v0, "location_recorder"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LF/b;-><init>(Ljava/lang/String;LF/T;)V

    iput-object p1, p0, LG/c;->a:LG/m;

    return-void
.end method


# virtual methods
.method public a(LF/R;)V
    .registers 3

    iget-object v0, p0, LG/c;->a:LG/m;

    invoke-virtual {v0, p1}, LG/m;->a(LF/R;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, LG/c;->a:LG/m;

    invoke-virtual {v0, p2}, LG/m;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, LG/c;->a:LG/m;

    invoke-virtual {v0, p2, p3}, LG/m;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, LG/c;->a:LG/m;

    invoke-virtual {v0, p2}, LG/m;->a(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .registers 2

    invoke-super {p0}, LF/b;->f()V

    iget-object v0, p0, LG/c;->a:LG/m;

    invoke-virtual {v0}, LG/m;->a()V

    return-void
.end method
