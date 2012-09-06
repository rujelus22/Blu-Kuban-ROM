.class Lcom/google/googlenav/ui/wizard/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/bh;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ag;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/ag;)V
    .registers 2
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/al;->a:Lcom/google/googlenav/ui/wizard/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/ag;Lcom/google/googlenav/ui/wizard/ah;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/al;-><init>(Lcom/google/googlenav/ui/wizard/ag;)V

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 5
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/al;->a:Lcom/google/googlenav/ui/wizard/ag;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ag;->a(Lcom/google/googlenav/ui/wizard/ag;)Lcom/google/googlenav/ui/wizard/ak;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/ak;->a(Ljava/util/List;)V

    .line 281
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/List;Lcom/google/googlenav/common/io/protocol/ProtoBuf;J)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/al;->a:Lcom/google/googlenav/ui/wizard/ag;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ag;->a(Lcom/google/googlenav/ui/wizard/ag;)Lcom/google/googlenav/ui/wizard/ak;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/googlenav/ui/wizard/ak;->a(Ljava/util/List;)V

    .line 275
    return-void
.end method
