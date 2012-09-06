.class public final Lcom/google/googlenav/clientparam/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 26
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/clientparam/j;->a:Ljava/lang/String;

    .line 30
    :goto_10
    return-void

    .line 28
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/clientparam/j;->a:Ljava/lang/String;

    goto :goto_10
.end method

.method public static b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 44
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ClientParameters;->k:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/googlenav/clientparam/j;->a:Ljava/lang/String;

    return-object v0
.end method
