.class public Lcom/sec/android/app/FileTransferClient/Data/SessionState;
.super Ljava/lang/Object;
.source "SessionState.java"


# instance fields
.field public bSuccess:Z

.field public errorType:I

.field public notSendFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public sendingFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public sessionID:Ljava/lang/String;

.field public sessionState:I

.field public targetDevice:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->bSuccess:Z

    .line 11
    const/16 v0, 0x834

    iput v0, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sessionState:I

    .line 12
    const/16 v0, 0x9c4

    iput v0, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->errorType:I

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sessionID:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->targetDevice:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sendingFiles:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->notSendFiles:Ljava/util/ArrayList;

    return-void
.end method
