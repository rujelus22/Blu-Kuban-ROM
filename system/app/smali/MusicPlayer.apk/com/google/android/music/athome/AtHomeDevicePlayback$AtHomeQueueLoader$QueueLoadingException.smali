.class final Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;
.super Ljava/lang/Exception;
.source "AtHomeDevicePlayback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueueLoadingException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mErrorType:I

.field final synthetic this$1:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;


# direct methods
.method public constructor <init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "string"

    .prologue
    .line 134
    const/16 v0, 0x138c

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Ljava/lang/String;I)V

    .line 135
    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter "string"
    .parameter "errorType"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;->this$1:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    .line 124
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 125
    iput p3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;->mErrorType:I

    .line 126
    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Ljava/lang/String;ILjava/lang/Throwable;)V
    .registers 5
    .parameter
    .parameter "string"
    .parameter "errorType"
    .parameter "cause"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;->this$1:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    .line 129
    invoke-direct {p0, p2, p4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    iput p3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;->mErrorType:I

    .line 131
    return-void
.end method


# virtual methods
.method public getErrorType()I
    .registers 2

    .prologue
    .line 138
    iget v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;->mErrorType:I

    return v0
.end method
