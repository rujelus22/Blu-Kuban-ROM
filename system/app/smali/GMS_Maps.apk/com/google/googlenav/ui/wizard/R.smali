.class Lcom/google/googlenav/ui/wizard/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/m;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/q;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/q;)V
    .registers 2
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/r;->a:Lcom/google/googlenav/ui/wizard/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/r;->a:Lcom/google/googlenav/ui/wizard/q;

    invoke-static {v0, p2, p1}, Lcom/google/googlenav/ui/wizard/q;->a(Lcom/google/googlenav/ui/wizard/q;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)V

    .line 225
    return-void
.end method
