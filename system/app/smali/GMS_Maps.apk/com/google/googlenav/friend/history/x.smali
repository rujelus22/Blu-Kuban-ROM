.class Lcom/google/googlenav/friend/history/x;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/history/b;

.field final synthetic b:Lcom/google/googlenav/friend/history/w;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/history/w;LY/c;Lcom/google/googlenav/friend/history/b;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/googlenav/friend/history/x;->b:Lcom/google/googlenav/friend/history/w;

    iput-object p3, p0, Lcom/google/googlenav/friend/history/x;->a:Lcom/google/googlenav/friend/history/b;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/googlenav/friend/history/x;->b:Lcom/google/googlenav/friend/history/w;

    invoke-static {v0}, Lcom/google/googlenav/friend/history/w;->a(Lcom/google/googlenav/friend/history/w;)Lcom/google/googlenav/friend/history/s;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/history/x;->a:Lcom/google/googlenav/friend/history/b;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/history/s;->a(Lcom/google/googlenav/friend/history/b;)V

    .line 144
    return-void
.end method
