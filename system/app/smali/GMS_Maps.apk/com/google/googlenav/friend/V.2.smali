.class public Lcom/google/googlenav/friend/V;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(ZLcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-boolean p1, p0, Lcom/google/googlenav/friend/V;->a:Z

    .line 133
    iput-object p2, p0, Lcom/google/googlenav/friend/V;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 134
    return-void
.end method
