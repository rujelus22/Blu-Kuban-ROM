.class public final Lcom/google/android/plus1/proto/PlusOneProtos$Operation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PlusOneProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/plus1/proto/PlusOneProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/android/plus1/proto/PlusOneProtos$Operation;


# instance fields
.field private abuseToken_:Ljava/lang/String;

.field private hasAbuseToken:Z

.field private hasType:Z

.field private hasUri:Z

.field private hasValue:Z

.field private memoizedSerializedSize:I

.field private type_:I

.field private uri_:Ljava/lang/String;

.field private value_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1472
    new-instance v0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;-><init>(Z)V

    sput-object v0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->defaultInstance:Lcom/google/android/plus1/proto/PlusOneProtos$Operation;

    .line 1473
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos;->internalForceInit()V

    .line 1474
    sget-object v0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->defaultInstance:Lcom/google/android/plus1/proto/PlusOneProtos$Operation;

    invoke-direct {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->initFields()V

    .line 1475
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1108
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1125
    iput v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->type_:I

    .line 1132
    iput-boolean v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->value_:Z

    .line 1139
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->uri_:Ljava/lang/String;

    .line 1146
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->abuseToken_:Ljava/lang/String;

    .line 1173
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->memoizedSerializedSize:I

    .line 1109
    invoke-direct {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->initFields()V

    .line 1110
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/plus1/proto/PlusOneProtos$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1105
    invoke-direct {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, 0x0

    .line 1111
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1125
    iput v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->type_:I

    .line 1132
    iput-boolean v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->value_:Z

    .line 1139
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->uri_:Ljava/lang/String;

    .line 1146
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->abuseToken_:Ljava/lang/String;

    .line 1173
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->memoizedSerializedSize:I

    .line 1111
    return-void
.end method

.method static synthetic access$3102(Lcom/google/android/plus1/proto/PlusOneProtos$Operation;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1105
    iput-boolean p1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->hasType:Z

    return p1
.end method

.method static synthetic access$3202(Lcom/google/android/plus1/proto/PlusOneProtos$Operation;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1105
    iput p1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->type_:I

    return p1
.end method

.method static synthetic access$3302(Lcom/google/android/plus1/proto/PlusOneProtos$Operation;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1105
    iput-boolean p1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->hasValue:Z

    return p1
.end method

.method static synthetic access$3402(Lcom/google/android/plus1/proto/PlusOneProtos$Operation;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1105
    iput-boolean p1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->value_:Z

    return p1
.end method

.method static synthetic access$3502(Lcom/google/android/plus1/proto/PlusOneProtos$Operation;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1105
    iput-boolean p1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->hasUri:Z

    return p1
.end method

.method static synthetic access$3602(Lcom/google/android/plus1/proto/PlusOneProtos$Operation;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->uri_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/google/android/plus1/proto/PlusOneProtos$Operation;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1105
    iput-boolean p1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->hasAbuseToken:Z

    return p1
.end method

.method static synthetic access$3802(Lcom/google/android/plus1/proto/PlusOneProtos$Operation;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->abuseToken_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/android/plus1/proto/PlusOneProtos$Operation;
    .registers 1

    .prologue
    .line 1115
    sget-object v0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->defaultInstance:Lcom/google/android/plus1/proto/PlusOneProtos$Operation;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 1151
    return-void
.end method

.method public static newBuilder()Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;
    .registers 1

    .prologue
    .line 1266
    #calls: Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->create()Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->access$2900()Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAbuseToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->abuseToken_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 1175
    iget v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->memoizedSerializedSize:I

    .line 1176
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 1196
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 1178
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 1179
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->hasType()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1180
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->getType()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1183
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1184
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->getValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1187
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->hasUri()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1188
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1191
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->hasAbuseToken()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1192
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->getAbuseToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1195
    :cond_48
    iput v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->memoizedSerializedSize:I

    move v1, v0

    .line 1196
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 1127
    iget v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->type_:I

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->uri_:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Z
    .registers 2

    .prologue
    .line 1134
    iget-boolean v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->value_:Z

    return v0
.end method

.method public hasAbuseToken()Z
    .registers 2

    .prologue
    .line 1147
    iget-boolean v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->hasAbuseToken:Z

    return v0
.end method

.method public hasType()Z
    .registers 2

    .prologue
    .line 1126
    iget-boolean v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->hasType:Z

    return v0
.end method

.method public hasUri()Z
    .registers 2

    .prologue
    .line 1140
    iget-boolean v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->hasUri:Z

    return v0
.end method

.method public hasValue()Z
    .registers 2

    .prologue
    .line 1133
    iget-boolean v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->hasValue:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 1153
    const/4 v0, 0x1

    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1158
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->getSerializedSize()I

    .line 1159
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->hasType()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1160
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1162
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1163
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->getValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1165
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->hasUri()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1166
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1168
    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->hasAbuseToken()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1169
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->getAbuseToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1171
    :cond_3b
    return-void
.end method
