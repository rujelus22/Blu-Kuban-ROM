.class Lcom/google/googlenav/ui/wizard/dV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/L;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dR;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/dR;)V
    .registers 2
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dV;->a:Lcom/google/googlenav/ui/wizard/dR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/dR;Lcom/google/googlenav/ui/wizard/dS;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/dV;-><init>(Lcom/google/googlenav/ui/wizard/dR;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/friend/i;)V
    .registers 5
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dV;->a:Lcom/google/googlenav/ui/wizard/dR;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dR;->b(Lcom/google/googlenav/ui/wizard/dR;)Lcom/google/googlenav/h;

    move-result-object v1

    .line 216
    if-eqz v1, :cond_23

    .line 217
    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/friend/i;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v2

    .line 219
    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/friend/i;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    .line 220
    if-nez v0, :cond_24

    const/4 v0, 0x1

    :goto_1b
    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/h;->a(ZZ)V

    .line 222
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dV;->a:Lcom/google/googlenav/ui/wizard/dR;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/dR;->b(Lcom/google/googlenav/h;)V

    .line 224
    :cond_23
    return-void

    .line 220
    :cond_24
    const/4 v0, 0x0

    goto :goto_1b
.end method
