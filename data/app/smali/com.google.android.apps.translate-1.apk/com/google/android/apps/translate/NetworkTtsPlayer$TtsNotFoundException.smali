.class public Lcom/google/android/apps/translate/NetworkTtsPlayer$TtsNotFoundException;
.super Ljava/io/IOException;
.source "NetworkTtsPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/NetworkTtsPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TtsNotFoundException"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    return-void
.end method
