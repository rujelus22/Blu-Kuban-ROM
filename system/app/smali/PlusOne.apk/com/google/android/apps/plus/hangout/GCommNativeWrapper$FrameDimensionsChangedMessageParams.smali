.class public Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$FrameDimensionsChangedMessageParams;
.super Ljava/lang/Object;
.source "GCommNativeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameDimensionsChangedMessageParams"
.end annotation


# instance fields
.field private final dimensions:Lcom/google/android/apps/plus/hangout/RectangleDimensions;

.field private final requestID:I


# direct methods
.method public constructor <init>(ILcom/google/android/apps/plus/hangout/RectangleDimensions;)V
    .registers 3
    .parameter "requestID"
    .parameter "dimensions"

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput p1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$FrameDimensionsChangedMessageParams;->requestID:I

    .line 155
    iput-object p2, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$FrameDimensionsChangedMessageParams;->dimensions:Lcom/google/android/apps/plus/hangout/RectangleDimensions;

    .line 156
    return-void
.end method


# virtual methods
.method public getDimensions()Lcom/google/android/apps/plus/hangout/RectangleDimensions;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$FrameDimensionsChangedMessageParams;->dimensions:Lcom/google/android/apps/plus/hangout/RectangleDimensions;

    return-object v0
.end method

.method public getRequestID()I
    .registers 2

    .prologue
    .line 159
    iget v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$FrameDimensionsChangedMessageParams;->requestID:I

    return v0
.end method
