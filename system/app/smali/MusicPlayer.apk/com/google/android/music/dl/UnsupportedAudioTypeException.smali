.class public Lcom/google/android/music/dl/UnsupportedAudioTypeException;
.super Ljava/io/IOException;
.source "UnsupportedAudioTypeException.java"


# instance fields
.field private final mAudioType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "audioType"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/google/android/music/dl/UnsupportedAudioTypeException;->mAudioType:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getAudioType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/music/dl/UnsupportedAudioTypeException;->mAudioType:Ljava/lang/String;

    return-object v0
.end method
