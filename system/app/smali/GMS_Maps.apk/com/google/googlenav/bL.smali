.class Lcom/google/googlenav/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac/d;


# instance fields
.field final synthetic a:Lcom/google/googlenav/bj;


# direct methods
.method constructor <init>(Lcom/google/googlenav/bj;)V
    .registers 2
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/google/googlenav/bl;->a:Lcom/google/googlenav/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Z()V
    .registers 3

    .prologue
    .line 166
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/bl;->a:Lcom/google/googlenav/bj;

    invoke-virtual {v0, v1}, Las/f;->c(Las/g;)V

    .line 167
    return-void
.end method
