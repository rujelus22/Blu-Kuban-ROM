.class Lcom/google/tts/TTSService$SoundResource;
.super Ljava/lang/Object;
.source "TTSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tts/TTSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundResource"
.end annotation


# instance fields
.field public mFilename:Ljava/lang/String;

.field public mResId:I

.field public mSourcePackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "file"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object v0, p0, Lcom/google/tts/TTSService$SoundResource;->mSourcePackageName:Ljava/lang/String;

    .line 168
    iput v1, p0, Lcom/google/tts/TTSService$SoundResource;->mResId:I

    .line 170
    iput-object v0, p0, Lcom/google/tts/TTSService$SoundResource;->mFilename:Ljava/lang/String;

    .line 179
    iput-object v0, p0, Lcom/google/tts/TTSService$SoundResource;->mSourcePackageName:Ljava/lang/String;

    .line 180
    iput v1, p0, Lcom/google/tts/TTSService$SoundResource;->mResId:I

    .line 181
    iput-object p1, p0, Lcom/google/tts/TTSService$SoundResource;->mFilename:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .parameter "packageName"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object v1, p0, Lcom/google/tts/TTSService$SoundResource;->mSourcePackageName:Ljava/lang/String;

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/tts/TTSService$SoundResource;->mResId:I

    .line 170
    iput-object v1, p0, Lcom/google/tts/TTSService$SoundResource;->mFilename:Ljava/lang/String;

    .line 173
    iput-object p1, p0, Lcom/google/tts/TTSService$SoundResource;->mSourcePackageName:Ljava/lang/String;

    .line 174
    iput p2, p0, Lcom/google/tts/TTSService$SoundResource;->mResId:I

    .line 175
    iput-object v1, p0, Lcom/google/tts/TTSService$SoundResource;->mFilename:Ljava/lang/String;

    .line 176
    return-void
.end method
