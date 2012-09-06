.class public Lcom/google/googlenav/am;
.super Lcom/google/googlenav/ar;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 2
    .parameter

    .prologue
    .line 3872
    invoke-direct {p0, p1}, Lcom/google/googlenav/ar;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 3873
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3876
    invoke-virtual {p0}, Lcom/google/googlenav/am;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
