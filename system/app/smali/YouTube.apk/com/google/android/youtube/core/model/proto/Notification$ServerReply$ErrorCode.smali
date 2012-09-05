.class public final enum Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

.field public static final enum BAD_TOKEN:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

.field public static final enum SERVER_ERROR:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

.field private static internalValueMap:Lcom/google/protobuf/i;


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1816
    new-instance v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    const-string v1, "BAD_TOKEN"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->BAD_TOKEN:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    .line 1817
    new-instance v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    const-string v1, "SERVER_ERROR"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->SERVER_ERROR:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    .line 1814
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    sget-object v1, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->BAD_TOKEN:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->SERVER_ERROR:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->$VALUES:[Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    .line 1836
    new-instance v0, Lcom/google/android/youtube/core/model/proto/p;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/p;-><init>()V

    sput-object v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->internalValueMap:Lcom/google/protobuf/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1846
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1847
    iput p3, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->index:I

    .line 1848
    iput p4, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->value:I

    .line 1849
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/i;
    .registers 1

    .prologue
    .line 1833
    sget-object v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->internalValueMap:Lcom/google/protobuf/i;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;
    .registers 2
    .parameter

    .prologue
    .line 1824
    packed-switch p0, :pswitch_data_c

    .line 1827
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 1825
    :pswitch_5
    sget-object v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->BAD_TOKEN:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    goto :goto_4

    .line 1826
    :pswitch_8
    sget-object v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->SERVER_ERROR:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    goto :goto_4

    .line 1824
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;
    .registers 2
    .parameter

    .prologue
    .line 1814
    const-class v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;
    .registers 1

    .prologue
    .line 1814
    sget-object v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->$VALUES:[Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 1821
    iget v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->value:I

    return v0
.end method
