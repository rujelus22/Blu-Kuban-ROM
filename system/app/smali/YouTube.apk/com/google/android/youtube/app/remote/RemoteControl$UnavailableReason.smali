.class public final enum Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

.field public static final enum LIMITED_SYNDICATION:Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

.field public static final enum PRIVATE:Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

.field public static final enum REGION:Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

.field public static final enum UNSPECIFIED:Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;


# instance fields
.field private final stringId:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 226
    new-instance v0, Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

    const-string v1, "REGION"

    const v2, 0x7f0b0229

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;->REGION:Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

    .line 227
    new-instance v0, Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

    const-string v1, "PRIVATE"

    const v2, 0x7f0b022a

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;->PRIVATE:Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

    .line 228
    new-instance v0, Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

    const-string v1, "LIMITED_SYNDICATION"

    const v2, 0x7f0b022b

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;->LIMITED_SYNDICATION:Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

    .line 229
    new-instance v0, Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

    const-string v1, "UNSPECIFIED"

    const v2, 0x7f0b0228

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;->UNSPECIFIED:Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

    .line 225
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;->REGION:Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;->PRIVATE:Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;->LIMITED_SYNDICATION:Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;->UNSPECIFIED:Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;->$VALUES:[Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 233
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 234
    iput p3, p0, Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;->stringId:I

    .line 235
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;
    .registers 2
    .parameter

    .prologue
    .line 225
    const-class v0, Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;
    .registers 1

    .prologue
    .line 225
    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;->$VALUES:[Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

    invoke-virtual {v0}, [Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;

    return-object v0
.end method


# virtual methods
.method public final getStringId()I
    .registers 2

    .prologue
    .line 238
    iget v0, p0, Lcom/google/android/youtube/app/remote/RemoteControl$UnavailableReason;->stringId:I

    return v0
.end method
