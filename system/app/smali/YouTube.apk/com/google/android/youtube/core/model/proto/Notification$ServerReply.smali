.class public final Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;
.super Lcom/google/protobuf/f;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;


# instance fields
.field private b:Z

.field private c:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2094
    new-instance v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;-><init>()V

    sput-object v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->a:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    .line 2095
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification;->a()V

    .line 2096
    sget-object v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->a:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;

    sget-object v1, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->BAD_TOKEN:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    iput-object v1, v0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->c:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    .line 2097
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1803
    invoke-direct {p0}, Lcom/google/protobuf/f;-><init>()V

    .line 1876
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->d:I

    .line 1803
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter

    .prologue
    .line 1870
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->j()I

    .line 1871
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->b:Z

    if-eqz v0, :cond_15

    .line 1872
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->c:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->getNumber()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->a(II)V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->c(I)V

    .line 1874
    :cond_15
    return-void
.end method

.method public final j()I
    .registers 3

    .prologue
    .line 1878
    iget v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->d:I

    .line 1879
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 1887
    :goto_5
    return v0

    .line 1881
    :cond_6
    const/4 v0, 0x0

    .line 1882
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->b:Z

    if-eqz v1, :cond_1d

    .line 1883
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->c:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->getNumber()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->b(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->d(I)I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x0

    .line 1886
    :cond_1d
    iput v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply;->d:I

    goto :goto_5
.end method
