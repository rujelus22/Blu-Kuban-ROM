.class final Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$CancelledException;
.super Ljava/lang/Exception;
.source "AtHomeDevicePlayback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CancelledException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$1:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;


# direct methods
.method private constructor <init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;)V
    .registers 2
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$CancelledException;->this$1:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Lcom/google/android/music/athome/AtHomeDevicePlayback$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$CancelledException;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;)V

    return-void
.end method
