.class public Lcom/google/tts/SoundResource;
.super Ljava/lang/Object;
.source "SoundResource.java"


# instance fields
.field public filename:Ljava/lang/String;

.field public resId:I

.field public sourcePackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "file"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/tts/SoundResource;->sourcePackageName:Ljava/lang/String;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/tts/SoundResource;->resId:I

    .line 40
    iput-object p1, p0, Lcom/google/tts/SoundResource;->filename:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter "packageName"
    .parameter "id"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/tts/SoundResource;->sourcePackageName:Ljava/lang/String;

    .line 32
    iput p2, p0, Lcom/google/tts/SoundResource;->resId:I

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/tts/SoundResource;->filename:Ljava/lang/String;

    .line 34
    return-void
.end method
