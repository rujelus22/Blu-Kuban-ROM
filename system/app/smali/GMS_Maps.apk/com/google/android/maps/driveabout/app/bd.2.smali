.class Lcom/google/android/maps/driveabout/app/bD;
.super Lac/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/bw;

.field private final b:Lcom/google/android/maps/driveabout/app/by;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/app/bw;Lcom/google/android/maps/driveabout/app/by;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 924
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bD;->a:Lcom/google/android/maps/driveabout/app/bw;

    invoke-direct {p0}, Lac/a;-><init>()V

    .line 925
    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/bD;->b:Lcom/google/android/maps/driveabout/app/by;

    .line 926
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 930
    const/16 v0, 0x2e

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 935
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/fz;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 936
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bD;->b:Lcom/google/android/maps/driveabout/app/by;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/by;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 937
    invoke-virtual {v0, v4, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 939
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 942
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 945
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bD;->a:Lcom/google/android/maps/driveabout/app/bw;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/bw;->a(Lcom/google/android/maps/driveabout/app/bw;)Ln/aL;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 946
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bD;->a:Lcom/google/android/maps/driveabout/app/bw;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/bw;->a(Lcom/google/android/maps/driveabout/app/bw;)Ln/aL;

    move-result-object v2

    invoke-static {v2}, Lt/e;->a(Ln/aL;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 950
    :cond_34
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 951
    const/16 v1, 0x15

    invoke-virtual {v0, v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 952
    invoke-virtual {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getDataSize()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 953
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 954
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 958
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/ga;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 960
    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 962
    invoke-virtual {v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 965
    if-nez v1, :cond_27

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 967
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bD;->b:Lcom/google/android/maps/driveabout/app/by;

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/by;->a(Lcom/google/android/maps/driveabout/app/by;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 969
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bD;->a:Lcom/google/android/maps/driveabout/app/bw;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/bw;->b(Lcom/google/android/maps/driveabout/app/bw;)V

    .line 974
    :goto_26
    return v4

    .line 971
    :cond_27
    const-string v0, "LayerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/bD;->b:Lcom/google/android/maps/driveabout/app/by;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/by;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is missing LayerInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26
.end method
