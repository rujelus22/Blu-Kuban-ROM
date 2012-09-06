.class Lad/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field final synthetic b:Lad/o;


# direct methods
.method constructor <init>(Lad/o;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lad/p;->b:Lad/o;

    iput-object p2, p0, Lad/p;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lad/p;->b:Lad/o;

    iget-object v1, p0, Lad/p;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0, v1}, Lad/o;->a(Lad/o;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 145
    return-void
.end method
