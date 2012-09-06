.class public Lcom/google/googlenav/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3404
    iput-object p1, p0, Lcom/google/googlenav/ak;->a:Ljava/lang/String;

    .line 3405
    iput-object p2, p0, Lcom/google/googlenav/ak;->b:Ljava/lang/String;

    .line 3406
    iput p3, p0, Lcom/google/googlenav/ak;->c:I

    .line 3407
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ak;
    .registers 5
    .parameter

    .prologue
    .line 3410
    new-instance v0, Lcom/google/googlenav/ak;

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {p0, v3}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/ak;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method
