.class Lcom/google/googlenav/ui/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaI/q;


# instance fields
.field final synthetic a:Lat/u;

.field final synthetic b:Lcom/google/googlenav/ui/v;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/v;Lat/u;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/google/googlenav/ui/Q;->b:Lcom/google/googlenav/ui/v;

    iput-object p2, p0, Lcom/google/googlenav/ui/Q;->a:Lat/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/google/googlenav/ui/Q;->a:Lat/u;

    invoke-virtual {v0}, Lat/u;->o()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method
