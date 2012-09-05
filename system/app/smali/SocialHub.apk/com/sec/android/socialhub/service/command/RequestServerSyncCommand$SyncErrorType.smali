.class public Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand$SyncErrorType;
.super Ljava/lang/Object;
.source "RequestServerSyncCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncErrorType"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 471
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrString(I)Ljava/lang/String;
    .registers 2
    .parameter "errCode"

    .prologue
    const/4 v0, 0x0

    .line 481
    sparse-switch p0, :sswitch_data_8

    .line 493
    :goto_4
    :sswitch_4
    return-object v0

    .line 490
    :sswitch_5
    const-string v0, "Email Exception"

    goto :goto_4

    .line 481
    :sswitch_data_8
    .sparse-switch
        0x1 -> :sswitch_4
        0xa -> :sswitch_4
        0xb -> :sswitch_4
        0xc -> :sswitch_4
        0xd -> :sswitch_5
    .end sparse-switch
.end method
