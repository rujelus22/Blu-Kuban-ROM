.class Lax/p;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field final synthetic f:Lax/o;


# direct methods
.method constructor <init>(Lax/o;LY/c;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lax/p;->f:Lax/o;

    iput-object p3, p0, Lax/p;->a:Ljava/lang/String;

    iput-object p4, p0, Lax/p;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 128
    iget-object v0, p0, Lax/p;->f:Lax/o;

    iget-object v1, p0, Lax/p;->a:Ljava/lang/String;

    iget-object v2, p0, Lax/p;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1, v2}, Lax/o;->b(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    .line 129
    return-void
.end method
