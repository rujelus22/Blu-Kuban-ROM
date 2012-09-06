.class Lcom/google/googlenav/ui/wizard/dz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/iR;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dp;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dp;)V
    .registers 2
    .parameter

    .prologue
    .line 626
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dz;->a:Lcom/google/googlenav/ui/wizard/dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dz;->a:Lcom/google/googlenav/ui/wizard/dp;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/dp;->b(I)V

    .line 636
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 630
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dz;->a:Lcom/google/googlenav/ui/wizard/dp;

    invoke-static {v0, p1}, Lcom/google/googlenav/ui/wizard/dp;->a(Lcom/google/googlenav/ui/wizard/dp;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 631
    return-void
.end method
