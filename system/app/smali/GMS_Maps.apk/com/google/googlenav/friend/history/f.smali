.class public Lcom/google/googlenav/friend/history/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(ZLcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean p1, p0, Lcom/google/googlenav/friend/history/f;->a:Z

    .line 54
    iput-object p2, p0, Lcom/google/googlenav/friend/history/f;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 55
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/googlenav/friend/history/f;->a:Z

    return v0
.end method

.method public b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/googlenav/friend/history/f;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method
