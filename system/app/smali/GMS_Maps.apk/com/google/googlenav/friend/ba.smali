.class final Lcom/google/googlenav/friend/ba;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic f:Lcom/google/googlenav/friend/be;


# direct methods
.method constructor <init>(LY/c;Ljava/lang/String;ZLcom/google/googlenav/friend/be;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p2, p0, Lcom/google/googlenav/friend/ba;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/googlenav/friend/ba;->b:Z

    iput-object p4, p0, Lcom/google/googlenav/friend/ba;->f:Lcom/google/googlenav/friend/be;

    invoke-direct {p0, p1}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 166
    iget-object v1, p0, Lcom/google/googlenav/friend/ba;->a:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/google/googlenav/friend/ba;->b:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_7
    invoke-static {v1, v0}, Lcom/google/googlenav/friend/aW;->b(Ljava/lang/String;I)V

    .line 167
    iget-object v0, p0, Lcom/google/googlenav/friend/ba;->f:Lcom/google/googlenav/friend/be;

    if-eqz v0, :cond_13

    .line 168
    iget-object v0, p0, Lcom/google/googlenav/friend/ba;->f:Lcom/google/googlenav/friend/be;

    invoke-interface {v0}, Lcom/google/googlenav/friend/be;->a()V

    .line 170
    :cond_13
    return-void

    .line 166
    :cond_14
    const/4 v0, 0x0

    goto :goto_7
.end method
