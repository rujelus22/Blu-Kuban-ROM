.class public Lcom/google/googlenav/an;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3720
    iput-object p1, p0, Lcom/google/googlenav/an;->a:Ljava/lang/String;

    .line 3721
    iput-object p2, p0, Lcom/google/googlenav/an;->b:Ljava/lang/String;

    .line 3722
    iput-object p3, p0, Lcom/google/googlenav/an;->c:Ljava/lang/String;

    .line 3723
    iput p4, p0, Lcom/google/googlenav/an;->d:I

    .line 3724
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/an;
    .registers 7
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x2

    .line 3727
    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 3728
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v1

    .line 3730
    invoke-static {p0, v5}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v2

    .line 3732
    invoke-static {v0, v3}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v3

    .line 3734
    const/4 v4, 0x0

    invoke-static {v0, v5, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    .line 3736
    new-instance v4, Lcom/google/googlenav/an;

    invoke-direct {v4, v3, v1, v2, v0}, Lcom/google/googlenav/an;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v4
.end method
