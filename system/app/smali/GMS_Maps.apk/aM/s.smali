.class LaM/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lax/r;

.field final synthetic b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field final synthetic c:LaM/m;


# direct methods
.method constructor <init>(LaM/m;Lax/r;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1703
    iput-object p1, p0, LaM/s;->c:LaM/m;

    iput-object p2, p0, LaM/s;->a:Lax/r;

    iput-object p3, p0, LaM/s;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1707
    iget-object v0, p0, LaM/s;->a:Lax/r;

    iget-object v1, p0, LaM/s;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v1}, Lax/E;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lax/E;

    move-result-object v1

    invoke-interface {v0, v1}, Lax/r;->a(Lax/E;)V

    .line 1708
    return-void
.end method
