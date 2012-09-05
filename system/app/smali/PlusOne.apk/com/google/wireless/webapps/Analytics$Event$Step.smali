.class public final Lcom/google/wireless/webapps/Analytics$Event$Step;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Analytics.java"

# interfaces
.implements Lcom/google/wireless/webapps/Analytics$Event$StepOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/webapps/Analytics$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Step"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/webapps/Analytics$Event$Step;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private endTimeMsec_:J

.field private endTime_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private startTimeMsec_:J

.field private startTime_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1633
    new-instance v0, Lcom/google/wireless/webapps/Analytics$Event$Step;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/webapps/Analytics$Event$Step;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/webapps/Analytics$Event$Step;->defaultInstance:Lcom/google/wireless/webapps/Analytics$Event$Step;

    .line 1634
    sget-object v0, Lcom/google/wireless/webapps/Analytics$Event$Step;->defaultInstance:Lcom/google/wireless/webapps/Analytics$Event$Step;

    invoke-direct {v0}, Lcom/google/wireless/webapps/Analytics$Event$Step;->initFields()V

    .line 1635
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1120
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1213
    iput-byte v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->memoizedIsInitialized:B

    .line 1242
    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->memoizedSerializedSize:I

    .line 1121
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;Lcom/google/wireless/webapps/Analytics$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1115
    invoke-direct {p0, p1}, Lcom/google/wireless/webapps/Analytics$Event$Step;-><init>(Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1122
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1213
    iput-byte v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->memoizedIsInitialized:B

    .line 1242
    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->memoizedSerializedSize:I

    .line 1122
    return-void
.end method

.method static synthetic access$1402(Lcom/google/wireless/webapps/Analytics$Event$Step;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/wireless/webapps/Analytics$Event$Step;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1115
    iput-wide p1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->startTime_:J

    return-wide p1
.end method

.method static synthetic access$1602(Lcom/google/wireless/webapps/Analytics$Event$Step;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1115
    iput-wide p1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->endTime_:J

    return-wide p1
.end method

.method static synthetic access$1702(Lcom/google/wireless/webapps/Analytics$Event$Step;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1115
    iput-wide p1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->startTimeMsec_:J

    return-wide p1
.end method

.method static synthetic access$1802(Lcom/google/wireless/webapps/Analytics$Event$Step;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1115
    iput-wide p1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->endTimeMsec_:J

    return-wide p1
.end method

.method static synthetic access$1902(Lcom/google/wireless/webapps/Analytics$Event$Step;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1115
    iput p1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/webapps/Analytics$Event$Step;
    .registers 1

    .prologue
    .line 1126
    sget-object v0, Lcom/google/wireless/webapps/Analytics$Event$Step;->defaultInstance:Lcom/google/wireless/webapps/Analytics$Event$Step;

    return-object v0
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1155
    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->name_:Ljava/lang/Object;

    .line 1156
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1157
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1159
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->name_:Ljava/lang/Object;

    .line 1162
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private initFields()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 1207
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->name_:Ljava/lang/Object;

    .line 1208
    iput-wide v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->startTime_:J

    .line 1209
    iput-wide v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->endTime_:J

    .line 1210
    iput-wide v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->startTimeMsec_:J

    .line 1211
    iput-wide v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->endTimeMsec_:J

    .line 1212
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;
    .registers 1

    .prologue
    .line 1346
    #calls: Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->create()Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->access$1200()Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1115
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$Event$Step;->getDefaultInstanceForType()Lcom/google/wireless/webapps/Analytics$Event$Step;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/webapps/Analytics$Event$Step;
    .registers 2

    .prologue
    .line 1130
    sget-object v0, Lcom/google/wireless/webapps/Analytics$Event$Step;->defaultInstance:Lcom/google/wireless/webapps/Analytics$Event$Step;

    return-object v0
.end method

.method public getEndTime()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1183
    iget-wide v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->endTime_:J

    return-wide v0
.end method

.method public getEndTimeMsec()J
    .registers 3

    .prologue
    .line 1203
    iget-wide v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->endTimeMsec_:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1141
    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->name_:Ljava/lang/Object;

    .line 1142
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1143
    check-cast v1, Ljava/lang/String;

    .line 1151
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1145
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1147
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1148
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1149
    iput-object v2, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1151
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1244
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->memoizedSerializedSize:I

    .line 1245
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 1269
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 1247
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 1248
    iget v2, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 1249
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$Event$Step;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1252
    :cond_1a
    iget v2, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_27

    .line 1253
    iget-wide v2, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->startTime_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1256
    :cond_27
    iget v2, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_35

    .line 1257
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->endTime_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1260
    :cond_35
    iget v2, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_44

    .line 1261
    iget-wide v2, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->startTimeMsec_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1264
    :cond_44
    iget v2, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_54

    .line 1265
    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->endTimeMsec_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1268
    :cond_54
    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->memoizedSerializedSize:I

    move v1, v0

    .line 1269
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getStartTime()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1173
    iget-wide v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->startTime_:J

    return-wide v0
.end method

.method public getStartTimeMsec()J
    .registers 3

    .prologue
    .line 1193
    iget-wide v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->startTimeMsec_:J

    return-wide v0
.end method

.method public hasEndTime()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1180
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasEndTimeMsec()Z
    .registers 3

    .prologue
    .line 1200
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasName()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1138
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasStartTime()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1170
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasStartTimeMsec()Z
    .registers 3

    .prologue
    .line 1190
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 1215
    iget-byte v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->memoizedIsInitialized:B

    .line 1216
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 1219
    :goto_8
    return v1

    .line 1216
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 1218
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1276
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1224
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$Event$Step;->getSerializedSize()I

    .line 1225
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 1226
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$Event$Step;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1228
    :cond_13
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1e

    .line 1229
    iget-wide v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->startTime_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1231
    :cond_1e
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2a

    .line 1232
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->endTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1234
    :cond_2a
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_37

    .line 1235
    iget-wide v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->startTimeMsec_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1237
    :cond_37
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_45

    .line 1238
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step;->endTimeMsec_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1240
    :cond_45
    return-void
.end method
