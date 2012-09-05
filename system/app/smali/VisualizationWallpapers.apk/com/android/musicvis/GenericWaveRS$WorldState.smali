.class public Lcom/android/musicvis/GenericWaveRS$WorldState;
.super Ljava/lang/Object;
.source "GenericWaveRS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/musicvis/GenericWaveRS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "WorldState"
.end annotation


# instance fields
.field public idle:I

.field public waveCounter:I

.field public width:I

.field public yRotation:F


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
