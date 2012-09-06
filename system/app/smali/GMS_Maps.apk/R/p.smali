.class Lr/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field final c:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;J)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lr/p;->a:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lr/p;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 108
    iput-wide p3, p0, Lr/p;->c:J

    .line 109
    return-void
.end method
