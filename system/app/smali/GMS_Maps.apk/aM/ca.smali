.class LaM/ca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/aX;


# instance fields
.field final synthetic a:LaM/bU;


# direct methods
.method constructor <init>(LaM/bU;)V
    .registers 2
    .parameter

    .prologue
    .line 630
    iput-object p1, p0, LaM/ca;->a:LaM/bU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ai;Lcom/google/googlenav/aW;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 633
    invoke-virtual {p2}, Lcom/google/googlenav/aW;->S()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/googlenav/aW;->T()I

    move-result v1

    invoke-static {p1, v0, v1}, Lad/y;->a(Lcom/google/googlenav/ai;II)Lad/y;

    move-result-object v0

    .line 635
    iget-object v1, p0, LaM/ca;->a:LaM/bU;

    iget-object v2, p0, LaM/ca;->a:LaM/bU;

    invoke-virtual {v2}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/Y;->b()Lad/y;

    move-result-object v2

    iget-object v3, p0, LaM/ca;->a:LaM/bU;

    invoke-virtual {v3}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/Y;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, LaM/bU;->a(Lad/y;Lad/y;Ljava/lang/String;)V

    .line 637
    return-void
.end method
