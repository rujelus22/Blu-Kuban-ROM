.class public Lcom/google/android/location/data/WifiScan;
.super Ljava/lang/Object;
.source "WifiScan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/location/data/WifiScan$Device;
    }
.end annotation


# instance fields
.field public final deliveryTime:J

.field private final devices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/location/data/WifiScan$Device;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(JLjava/util/ArrayList;)V
    .registers 4
    .parameter "deliveryTime"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/location/data/WifiScan$Device;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p3, devices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/location/data/WifiScan$Device;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-wide p1, p0, Lcom/google/android/location/data/WifiScan;->deliveryTime:J

    .line 102
    iput-object p3, p0, Lcom/google/android/location/data/WifiScan;->devices:Ljava/util/ArrayList;

    .line 103
    return-void
.end method

.method public static append(Ljava/lang/StringBuilder;Lcom/google/android/location/data/WifiScan;)V
    .registers 6
    .parameter "sb"
    .parameter "wifiScan"

    .prologue
    .line 133
    if-nez p1, :cond_8

    .line 134
    const-string v2, "null"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :goto_7
    return-void

    .line 137
    :cond_8
    const-string v2, "WifiScan [deliveryTime="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-wide v2, p1, Lcom/google/android/location/data/WifiScan;->deliveryTime:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 139
    const-string v2, ", devices=["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v2, p1, Lcom/google/android/location/data/WifiScan;->devices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/data/WifiScan$Device;

    .line 141
    .local v0, device:Lcom/google/android/location/data/WifiScan$Device;
    invoke-static {p0, v0}, Lcom/google/android/location/data/WifiScan$Device;->append(Ljava/lang/StringBuilder;Lcom/google/android/location/data/WifiScan$Device;)V

    .line 142
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 144
    .end local v0           #device:Lcom/google/android/location/data/WifiScan$Device;
    :cond_32
    const-string v2, "]]"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7
.end method

.method public static dump(Ljava/io/PrintWriter;Lcom/google/android/location/data/WifiScan;)V
    .registers 6
    .parameter "out"
    .parameter "wifiScan"

    .prologue
    .line 148
    if-nez p1, :cond_8

    .line 149
    const-string v2, "null"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 160
    :goto_7
    return-void

    .line 152
    :cond_8
    const-string v2, "WifiScan [deliveryTime="

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 153
    iget-wide v2, p1, Lcom/google/android/location/data/WifiScan;->deliveryTime:J

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 154
    const-string v2, ", devices=["

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 155
    iget-object v2, p1, Lcom/google/android/location/data/WifiScan;->devices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/data/WifiScan$Device;

    .line 156
    .local v0, device:Lcom/google/android/location/data/WifiScan$Device;
    invoke-static {p0, v0}, Lcom/google/android/location/data/WifiScan$Device;->dump(Ljava/io/PrintWriter;Lcom/google/android/location/data/WifiScan$Device;)V

    .line 157
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1d

    .line 159
    .end local v0           #device:Lcom/google/android/location/data/WifiScan$Device;
    :cond_32
    const-string v2, "]]"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7
.end method


# virtual methods
.method public final createWifiProfile(J)Lcom/google/common/io/protocol/ProtoBuf;
    .registers 9
    .parameter "bootTime"

    .prologue
    .line 112
    iget-object v3, p0, Lcom/google/android/location/data/WifiScan;->devices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_a

    .line 113
    const/4 v2, 0x0

    .line 124
    :cond_9
    return-object v2

    .line 116
    :cond_a
    new-instance v2, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/google/android/location/protocol/LocserverMessageTypes;->GWIFI_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 117
    .local v2, wifiProfile:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/google/android/location/data/WifiScan;->deliveryTime:J

    add-long/2addr v4, p1

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 119
    const/16 v3, 0x19

    iget-object v4, p0, Lcom/google/android/location/data/WifiScan;->devices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 120
    .local v1, limit:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_25
    if-ge v0, v1, :cond_9

    .line 121
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/google/android/location/data/WifiScan;->devices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/location/data/WifiScan$Device;

    invoke-virtual {v3}, Lcom/google/android/location/data/WifiScan$Device;->createProto()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_25
.end method

.method public final getDevice(I)Lcom/google/android/location/data/WifiScan$Device;
    .registers 3
    .parameter "i"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/location/data/WifiScan;->devices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/data/WifiScan$Device;

    return-object v0
.end method

.method public final numDevices()I
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/location/data/WifiScan;->devices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiScan [deliveryTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/location/data/WifiScan;->deliveryTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", devices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/data/WifiScan;->devices:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
