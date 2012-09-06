.class final Lcom/google/googlenav/friend/aY;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic f:Lcom/google/googlenav/friend/bc;


# direct methods
.method constructor <init>(LY/c;Ljava/lang/String;ZLcom/google/googlenav/friend/bc;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p2, p0, Lcom/google/googlenav/friend/aY;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/googlenav/friend/aY;->b:Z

    iput-object p4, p0, Lcom/google/googlenav/friend/aY;->f:Lcom/google/googlenav/friend/bc;

    invoke-direct {p0, p1}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 126
    iget-object v3, p0, Lcom/google/googlenav/friend/aY;->a:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/google/googlenav/friend/aY;->b:Z

    if-eqz v0, :cond_15

    move v0, v1

    :goto_9
    invoke-static {v3, v0}, Lcom/google/googlenav/friend/aW;->a(Ljava/lang/String;I)I

    move-result v0

    .line 127
    iget-object v3, p0, Lcom/google/googlenav/friend/aY;->f:Lcom/google/googlenav/friend/bc;

    if-eqz v0, :cond_17

    :goto_11
    invoke-interface {v3, v1}, Lcom/google/googlenav/friend/bc;->a(Z)V

    .line 128
    return-void

    :cond_15
    move v0, v2

    .line 126
    goto :goto_9

    :cond_17
    move v1, v2

    .line 127
    goto :goto_11
.end method
