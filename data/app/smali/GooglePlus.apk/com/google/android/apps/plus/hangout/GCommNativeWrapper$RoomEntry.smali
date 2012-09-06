.class Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$RoomEntry;
.super Ljava/lang/Object;
.source "GCommNativeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RoomEntry"
.end annotation


# instance fields
.field private final displayRoomName:Ljava/lang/String;

.field private final lastEnterTime:Ljava/util/Date;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "displayRoomName"
    .parameter "lastEnterTime"

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$RoomEntry;->displayRoomName:Ljava/lang/String;

    .line 193
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$RoomEntry;->lastEnterTime:Ljava/util/Date;

    .line 194
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$RoomEntry;->displayRoomName:Ljava/lang/String;

    return-object v0
.end method
