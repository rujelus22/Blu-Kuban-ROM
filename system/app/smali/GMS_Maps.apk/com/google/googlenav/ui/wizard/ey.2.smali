.class Lcom/google/googlenav/ui/wizard/eY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/bn;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/ui/wizard/eT;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eT;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eY;->b:Lcom/google/googlenav/ui/wizard/eT;

    iput p2, p0, Lcom/google/googlenav/ui/wizard/eY;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eY;->b:Lcom/google/googlenav/ui/wizard/eT;

    iget v1, p0, Lcom/google/googlenav/ui/wizard/eY;->a:I

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/eT;->a(Lcom/google/googlenav/ui/wizard/eT;I)V

    .line 324
    return-void
.end method

.method public b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 327
    return-void
.end method

.method public c(Z)V
    .registers 2
    .parameter

    .prologue
    .line 330
    return-void
.end method
