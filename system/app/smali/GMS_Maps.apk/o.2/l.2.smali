.class public Lo/L;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput p1, p0, Lo/L;->a:I

    .line 183
    iput-object p2, p0, Lo/L;->b:Ljava/lang/String;

    .line 184
    return-void
.end method

.method static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lo/L;
    .registers 4
    .parameter

    .prologue
    .line 190
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 191
    if-ltz v0, :cond_b

    const/16 v1, 0x9

    if-le v0, v1, :cond_c

    .line 192
    :cond_b
    const/4 v0, 0x0

    .line 194
    :cond_c
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 195
    new-instance v2, Lo/L;

    invoke-direct {v2, v0, v1}, Lo/L;-><init>(ILjava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 199
    iget v0, p0, Lo/L;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lo/L;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/L;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text:\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/L;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
