.class Lcom/x/google/common/io/protocol/ProtoBufType$TypeInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/google/common/io/protocol/ProtoBufType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TypeInfo"
.end annotation


# instance fields
.field private data:Ljava/lang/Object;

.field private type:I


# direct methods
.method constructor <init>(ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/x/google/common/io/protocol/ProtoBufType$TypeInfo;->type:I

    iput-object p2, p0, Lcom/x/google/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/x/google/common/io/protocol/ProtoBufType$TypeInfo;)I
    .registers 2

    iget v0, p0, Lcom/x/google/common/io/protocol/ProtoBufType$TypeInfo;->type:I

    return v0
.end method

.method static synthetic access$100(Lcom/x/google/common/io/protocol/ProtoBufType$TypeInfo;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/x/google/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_b

    instance-of v2, p1, Lcom/x/google/common/io/protocol/ProtoBufType$TypeInfo;

    if-nez v2, :cond_d

    :cond_b
    move v0, v1

    goto :goto_4

    :cond_d
    check-cast p1, Lcom/x/google/common/io/protocol/ProtoBufType$TypeInfo;

    iget v2, p0, Lcom/x/google/common/io/protocol/ProtoBufType$TypeInfo;->type:I

    iget v3, p1, Lcom/x/google/common/io/protocol/ProtoBufType$TypeInfo;->type:I

    if-ne v2, v3, :cond_29

    iget-object v2, p0, Lcom/x/google/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    iget-object v3, p1, Lcom/x/google/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/x/google/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/x/google/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    iget-object v3, p1, Lcom/x/google/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_29
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/x/google/common/io/protocol/ProtoBufType$TypeInfo;->type:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TypeInfo{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/x/google/common/io/protocol/ProtoBufType$TypeInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/x/google/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
