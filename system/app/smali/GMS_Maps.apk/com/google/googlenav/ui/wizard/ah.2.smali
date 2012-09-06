.class Lcom/google/googlenav/ui/wizard/aH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/iR;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/aJ;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/aE;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aE;Lcom/google/googlenav/ui/wizard/aJ;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aH;->b:Lcom/google/googlenav/ui/wizard/aE;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/aH;->a:Lcom/google/googlenav/ui/wizard/aJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aH;->a:Lcom/google/googlenav/ui/wizard/aJ;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/aJ;->b()V

    .line 103
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aH;->a:Lcom/google/googlenav/ui/wizard/aJ;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/aJ;->a()V

    .line 98
    return-void
.end method
