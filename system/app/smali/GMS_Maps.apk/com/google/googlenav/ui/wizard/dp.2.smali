.class public Lcom/google/googlenav/ui/wizard/dP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/bh;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dp;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/dp;)V
    .registers 2
    .parameter

    .prologue
    .line 1576
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dP;->a:Lcom/google/googlenav/ui/wizard/dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 5
    .parameter

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dP;->a:Lcom/google/googlenav/ui/wizard/dp;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/dp;->b(I)V

    .line 1590
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/List;Lcom/google/googlenav/common/io/protocol/ProtoBuf;J)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dP;->a:Lcom/google/googlenav/ui/wizard/dp;

    invoke-static {v0, p1}, Lcom/google/googlenav/ui/wizard/dp;->b(Lcom/google/googlenav/ui/wizard/dp;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1582
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dP;->a:Lcom/google/googlenav/ui/wizard/dp;

    invoke-static {v0, p2}, Lcom/google/googlenav/ui/wizard/dp;->a(Lcom/google/googlenav/ui/wizard/dp;Ljava/util/List;)Ljava/util/List;

    .line 1583
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dP;->a:Lcom/google/googlenav/ui/wizard/dp;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/dp;->b(I)V

    .line 1584
    return-void
.end method
