.class final Lcom/google/googlenav/friend/aZ;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic f:Lcom/google/googlenav/friend/be;


# direct methods
.method constructor <init>(LY/c;Ljava/lang/String;ILcom/google/googlenav/friend/be;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p2, p0, Lcom/google/googlenav/friend/aZ;->a:Ljava/lang/String;

    iput p3, p0, Lcom/google/googlenav/friend/aZ;->b:I

    iput-object p4, p0, Lcom/google/googlenav/friend/aZ;->f:Lcom/google/googlenav/friend/be;

    invoke-direct {p0, p1}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/googlenav/friend/aZ;->a:Ljava/lang/String;

    iget v1, p0, Lcom/google/googlenav/friend/aZ;->b:I

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/aW;->b(Ljava/lang/String;I)V

    .line 145
    iget-object v0, p0, Lcom/google/googlenav/friend/aZ;->f:Lcom/google/googlenav/friend/be;

    if-eqz v0, :cond_10

    .line 146
    iget-object v0, p0, Lcom/google/googlenav/friend/aZ;->f:Lcom/google/googlenav/friend/be;

    invoke-interface {v0}, Lcom/google/googlenav/friend/be;->a()V

    .line 148
    :cond_10
    return-void
.end method
