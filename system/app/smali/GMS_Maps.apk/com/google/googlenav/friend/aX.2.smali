.class final Lcom/google/googlenav/friend/aX;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic f:Lcom/google/googlenav/friend/bd;


# direct methods
.method constructor <init>(LY/c;Ljava/lang/String;ILcom/google/googlenav/friend/bd;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p2, p0, Lcom/google/googlenav/friend/aX;->a:Ljava/lang/String;

    iput p3, p0, Lcom/google/googlenav/friend/aX;->b:I

    iput-object p4, p0, Lcom/google/googlenav/friend/aX;->f:Lcom/google/googlenav/friend/bd;

    invoke-direct {p0, p1}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/googlenav/friend/aX;->a:Ljava/lang/String;

    iget v1, p0, Lcom/google/googlenav/friend/aX;->b:I

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/aW;->a(Ljava/lang/String;I)I

    move-result v0

    .line 107
    iget-object v1, p0, Lcom/google/googlenav/friend/aX;->f:Lcom/google/googlenav/friend/bd;

    invoke-interface {v1, v0}, Lcom/google/googlenav/friend/bd;->a(I)V

    .line 108
    return-void
.end method
