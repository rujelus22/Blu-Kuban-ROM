.class Lcom/google/googlenav/ui/wizard/fK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/bh;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fH;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/fH;)V
    .registers 2
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fK;->a:Lcom/google/googlenav/ui/wizard/fH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/fH;Lcom/google/googlenav/ui/wizard/fI;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/fK;-><init>(Lcom/google/googlenav/ui/wizard/fH;)V

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 5
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fK;->a:Lcom/google/googlenav/ui/wizard/fH;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fH;->a(Lcom/google/googlenav/ui/wizard/fH;)Lcom/google/googlenav/ui/wizard/fJ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/fJ;->a(Ljava/util/List;)V

    .line 162
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/List;Lcom/google/googlenav/common/io/protocol/ProtoBuf;J)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fK;->a:Lcom/google/googlenav/ui/wizard/fH;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fH;->a(Lcom/google/googlenav/ui/wizard/fH;)Lcom/google/googlenav/ui/wizard/fJ;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/googlenav/ui/wizard/fJ;->a(Ljava/util/List;)V

    .line 156
    return-void
.end method
