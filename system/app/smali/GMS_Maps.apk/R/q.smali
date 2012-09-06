.class public Lr/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field public final b:J


# direct methods
.method constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;J)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iput-object v0, p0, Lr/q;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 128
    iput-wide p2, p0, Lr/q;->b:J

    .line 129
    return-void
.end method
