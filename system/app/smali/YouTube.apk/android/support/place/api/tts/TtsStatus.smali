.class Landroid/support/place/api/tts/TtsStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/rpc/Flattenable;


# static fields
.field public static RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;


# instance fields
.field public string:Ljava/lang/String;

.field public timestamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    new-instance v0, Landroid/support/place/api/tts/TtsStatus$1;

    invoke-direct {v0}, Landroid/support/place/api/tts/TtsStatus$1;-><init>()V

    sput-object v0, Landroid/support/place/api/tts/TtsStatus;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "string"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/api/tts/TtsStatus;->string:Ljava/lang/String;

    .line 16
    const-string v0, "timestamp"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/place/api/tts/TtsStatus;->timestamp:J

    .line 17
    return-void
.end method


# virtual methods
.method public writeToRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 5
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Landroid/support/place/api/tts/TtsStatus;->string:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 21
    const-string v0, "string"

    iget-object v1, p0, Landroid/support/place/api/tts/TtsStatus;->string:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_b
    const-string v0, "timestamp"

    iget-wide v1, p0, Landroid/support/place/api/tts/TtsStatus;->timestamp:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 24
    return-void
.end method
