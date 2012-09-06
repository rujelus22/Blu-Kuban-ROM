.class Lcom/google/android/maps/driveabout/app/bB;
.super Lac/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/bw;

.field private final b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/bw;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 991
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bB;->a:Lcom/google/android/maps/driveabout/app/bw;

    invoke-direct {p0}, Lac/a;-><init>()V

    .line 992
    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/bB;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 993
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 997
    const/16 v0, 0x39

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x3

    .line 1002
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/dA;->k:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 1004
    const-string v1, "__LAYERS"

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1005
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bB;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v1, :cond_33

    .line 1007
    const/4 v1, 0x2

    :try_start_12
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bB;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1009
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bB;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1011
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bB;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_33} :catch_40

    .line 1018
    :cond_33
    :goto_33
    invoke-virtual {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getDataSize()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1019
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 1020
    return-void

    .line 1013
    :catch_40
    move-exception v1

    goto :goto_33
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1024
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/dA;->l:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 1027
    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    if-nez v1, :cond_1d

    .line 1029
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bB;->a:Lcom/google/android/maps/driveabout/app/bw;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/bw;->c(Lcom/google/android/maps/driveabout/app/bw;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "DA_LayerInfo"

    invoke-static {v1, v0, v2}, Lh/a;->a(Landroid/content/Context;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;)Z

    .line 1030
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bB;->a:Lcom/google/android/maps/driveabout/app/bw;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/bw;->a(Lcom/google/android/maps/driveabout/app/bw;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1032
    :cond_1d
    return v3
.end method
