.class Lcom/google/googlenav/ui/wizard/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/iR;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ba;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ba;)V
    .registers 2
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bf;->a:Lcom/google/googlenav/ui/wizard/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 229
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bf;->a:Lcom/google/googlenav/ui/wizard/ba;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ba;->a:Lcom/google/googlenav/ui/wizard/aY;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/aY;->b(Lcom/google/googlenav/ui/wizard/aY;)Lcom/google/googlenav/ui/wizard/aZ;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/aZ;->b()V

    .line 224
    return-void
.end method
