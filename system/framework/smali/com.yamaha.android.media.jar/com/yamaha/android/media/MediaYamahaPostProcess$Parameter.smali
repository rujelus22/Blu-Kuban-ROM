.class public Lcom/yamaha/android/media/MediaYamahaPostProcess$Parameter;
.super Ljava/lang/Object;
.source "MediaYamahaPostProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yamaha/android/media/MediaYamahaPostProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameter"
.end annotation


# static fields
.field public static final SIZE:I = 0x238


# instance fields
.field public mBluetoothSCO:[B

.field public mDock:[B

.field public mEarpiece:[B

.field public mHeadphone:[B

.field public mSpeaker:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/yamaha/android/media/MediaYamahaPostProcess$Parameter;->mSpeaker:[B

    .line 53
    iput-object v0, p0, Lcom/yamaha/android/media/MediaYamahaPostProcess$Parameter;->mHeadphone:[B

    .line 54
    iput-object v0, p0, Lcom/yamaha/android/media/MediaYamahaPostProcess$Parameter;->mEarpiece:[B

    .line 55
    iput-object v0, p0, Lcom/yamaha/android/media/MediaYamahaPostProcess$Parameter;->mBluetoothSCO:[B

    .line 56
    iput-object v0, p0, Lcom/yamaha/android/media/MediaYamahaPostProcess$Parameter;->mDock:[B

    .line 57
    return-void
.end method
