.class public Lad/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 2181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2182
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lad/g;->a:Ljava/lang/String;

    .line 2184
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_15
    iput-object v0, p0, Lad/g;->b:Ljava/lang/String;

    .line 2187
    return-void

    .line 2184
    :cond_18
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2195
    iget-object v0, p0, Lad/g;->a:Ljava/lang/String;

    return-object v0
.end method
