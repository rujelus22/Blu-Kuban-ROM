.class final Lcom/google/android/music/ringtone/soundfile/CheapAMR$1;
.super Ljava/lang/Object;
.source "CheapAMR.java"

# interfaces
.implements Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/ringtone/soundfile/CheapAMR;->getFactory()Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;
    .registers 2

    .prologue
    .line 40
    new-instance v0, Lcom/google/android/music/ringtone/soundfile/CheapAMR;

    invoke-direct {v0}, Lcom/google/android/music/ringtone/soundfile/CheapAMR;-><init>()V

    return-object v0
.end method

.method public getSupportedExtensions()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "3gpp"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "3gp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "amr"

    aput-object v2, v0, v1

    return-object v0
.end method
