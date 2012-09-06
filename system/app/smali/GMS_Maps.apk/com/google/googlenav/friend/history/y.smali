.class Lcom/google/googlenav/friend/history/y;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/history/w;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/history/w;LY/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/googlenav/friend/history/y;->a:Lcom/google/googlenav/friend/history/w;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/googlenav/friend/history/y;->a:Lcom/google/googlenav/friend/history/w;

    invoke-static {v0}, Lcom/google/googlenav/friend/history/w;->a(Lcom/google/googlenav/friend/history/w;)Lcom/google/googlenav/friend/history/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/s;->a()V

    .line 155
    return-void
.end method
