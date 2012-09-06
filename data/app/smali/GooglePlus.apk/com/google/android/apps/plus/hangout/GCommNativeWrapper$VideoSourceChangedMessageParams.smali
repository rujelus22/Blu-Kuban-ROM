.class public Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$VideoSourceChangedMessageParams;
.super Ljava/lang/Object;
.source "GCommNativeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoSourceChangedMessageParams"
.end annotation


# instance fields
.field private final requestID:I

.field private final source:Lcom/google/android/apps/plus/hangout/MeetingMember;

.field private final videoAvailable:Z


# direct methods
.method public constructor <init>(ILcom/google/android/apps/plus/hangout/MeetingMember;Z)V
    .registers 4
    .parameter "requestID"
    .parameter "source"
    .parameter "videoAvailable"

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput p1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$VideoSourceChangedMessageParams;->requestID:I

    .line 150
    iput-object p2, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$VideoSourceChangedMessageParams;->source:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 151
    iput-boolean p3, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$VideoSourceChangedMessageParams;->videoAvailable:Z

    .line 152
    return-void
.end method


# virtual methods
.method public getRequestID()I
    .registers 2

    .prologue
    .line 155
    iget v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$VideoSourceChangedMessageParams;->requestID:I

    return v0
.end method

.method public getSource()Lcom/google/android/apps/plus/hangout/MeetingMember;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$VideoSourceChangedMessageParams;->source:Lcom/google/android/apps/plus/hangout/MeetingMember;

    return-object v0
.end method

.method public isVideoAvailable()Z
    .registers 2

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$VideoSourceChangedMessageParams;->videoAvailable:Z

    return v0
.end method
