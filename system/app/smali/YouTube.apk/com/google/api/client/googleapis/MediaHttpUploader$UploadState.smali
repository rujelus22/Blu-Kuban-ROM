.class public final enum Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

.field public static final enum INITIATION_COMPLETE:Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

.field public static final enum INITIATION_STARTED:Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

.field public static final enum MEDIA_COMPLETE:Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

.field public static final enum MEDIA_IN_PROGRESS:Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

.field public static final enum NOT_STARTED:Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

    const-string v1, "NOT_STARTED"

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;->NOT_STARTED:Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

    .line 55
    new-instance v0, Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

    const-string v1, "INITIATION_STARTED"

    invoke-direct {v0, v1, v3}, Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;->INITIATION_STARTED:Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

    .line 58
    new-instance v0, Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

    const-string v1, "INITIATION_COMPLETE"

    invoke-direct {v0, v1, v4}, Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;->INITIATION_COMPLETE:Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

    .line 61
    new-instance v0, Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

    const-string v1, "MEDIA_IN_PROGRESS"

    invoke-direct {v0, v1, v5}, Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;->MEDIA_IN_PROGRESS:Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

    .line 64
    new-instance v0, Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

    const-string v1, "MEDIA_COMPLETE"

    invoke-direct {v0, v1, v6}, Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;->MEDIA_COMPLETE:Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

    .line 50
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

    sget-object v1, Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;->NOT_STARTED:Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;->INITIATION_STARTED:Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;->INITIATION_COMPLETE:Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;->MEDIA_IN_PROGRESS:Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;->MEDIA_COMPLETE:Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;->$VALUES:[Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;
    .registers 2
    .parameter

    .prologue
    .line 50
    const-class v0, Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

    return-object v0
.end method

.method public static values()[Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;->$VALUES:[Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

    invoke-virtual {v0}, [Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/client/googleapis/MediaHttpUploader$UploadState;

    return-object v0
.end method
