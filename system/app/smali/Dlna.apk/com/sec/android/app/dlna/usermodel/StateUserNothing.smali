.class public Lcom/sec/android/app/dlna/usermodel/StateUserNothing;
.super Ljava/lang/Object;
.source "StateUserNothing.java"

# interfaces
.implements Lcom/sec/android/app/dlna/usermodel/IUserControl;


# instance fields
.field final mType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/dlna/usermodel/StateUserNothing;->mType:I

    return-void
.end method


# virtual methods
.method public getPosition()I
    .registers 2

    .prologue
    .line 11
    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 34
    const/4 v0, -0x1

    return v0
.end method

.method public requestPlayOrPause(Lcom/sec/android/app/dlna/model/PlaylistItem;)V
    .registers 2
    .parameter "item"

    .prologue
    .line 22
    return-void
.end method

.method public requestSeek(I)V
    .registers 2
    .parameter "seekTime"

    .prologue
    .line 19
    return-void
.end method

.method public requestStop()V
    .registers 1

    .prologue
    .line 25
    return-void
.end method

.method public requestVolumeDown()V
    .registers 1

    .prologue
    .line 28
    return-void
.end method

.method public requestVolumeUp()V
    .registers 1

    .prologue
    .line 31
    return-void
.end method
