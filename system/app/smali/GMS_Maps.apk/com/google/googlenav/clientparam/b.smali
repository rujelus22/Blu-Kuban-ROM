.class public final Lcom/google/googlenav/clientparam/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/b;->a:Z

    .line 36
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/b;->b:Z

    .line 37
    return-void
.end method

.method public static a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 54
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ClientParameters;->g:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    return-object v0
.end method
