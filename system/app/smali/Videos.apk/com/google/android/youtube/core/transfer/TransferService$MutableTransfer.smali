.class public final Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;
.super Ljava/lang/Object;
.source "TransferService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/transfer/TransferService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "MutableTransfer"
.end annotation


# instance fields
.field public bytesTotal:J

.field public bytesTransfered:J

.field public filePath:Ljava/lang/String;

.field public inputExtras:Landroid/os/Bundle;

.field public networkUri:Ljava/lang/String;

.field public outputExtras:Landroid/os/Bundle;

.field public status:Lcom/google/android/youtube/core/transfer/Transfer$Status;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 4
    .parameter "transfer"

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iget-object v0, p1, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->filePath:Ljava/lang/String;

    .line 152
    iget-object v0, p1, Lcom/google/android/youtube/core/transfer/Transfer;->networkUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->networkUri:Ljava/lang/String;

    .line 153
    iget-object v0, p1, Lcom/google/android/youtube/core/transfer/Transfer;->status:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->status:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 154
    iget-wide v0, p1, Lcom/google/android/youtube/core/transfer/Transfer;->bytesTransfered:J

    iput-wide v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->bytesTransfered:J

    .line 155
    iget-wide v0, p1, Lcom/google/android/youtube/core/transfer/Transfer;->bytesTotal:J

    iput-wide v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->bytesTotal:J

    .line 156
    iget-object v0, p1, Lcom/google/android/youtube/core/transfer/Transfer;->inputExtras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->inputExtras:Landroid/os/Bundle;

    .line 157
    iget-object v0, p1, Lcom/google/android/youtube/core/transfer/Transfer;->outputExtras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->outputExtras:Landroid/os/Bundle;

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .parameter "filePath"
    .parameter "networkUri"
    .parameter "inputExtras"

    .prologue
    const-wide/16 v1, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const-string v0, "filePath may not be empty"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->filePath:Ljava/lang/String;

    .line 141
    const-string v0, "networkUri may not be empty"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->networkUri:Ljava/lang/String;

    .line 142
    const-string v0, "inputExtras may not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->inputExtras:Landroid/os/Bundle;

    .line 143
    sget-object v0, Lcom/google/android/youtube/core/transfer/Transfer$Status;->PENDING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->status:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 144
    iput-wide v1, p0, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->bytesTransfered:J

    .line 145
    iput-wide v1, p0, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->bytesTotal:J

    .line 146
    iput-object p3, p0, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->inputExtras:Landroid/os/Bundle;

    .line 147
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->outputExtras:Landroid/os/Bundle;

    .line 148
    return-void
.end method


# virtual methods
.method public getImmutable()Lcom/google/android/youtube/core/transfer/Transfer;
    .registers 11

    .prologue
    .line 161
    new-instance v0, Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->filePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->networkUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->status:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iget-wide v4, p0, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->bytesTransfered:J

    iget-wide v6, p0, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->bytesTotal:J

    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->inputExtras:Landroid/os/Bundle;

    iget-object v9, p0, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->outputExtras:Landroid/os/Bundle;

    invoke-direct/range {v0 .. v9}, Lcom/google/android/youtube/core/transfer/Transfer;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/transfer/Transfer$Status;JJLandroid/os/Bundle;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public isActive()Z
    .registers 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->status:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v1, Lcom/google/android/youtube/core/transfer/Transfer$Status;->COMPLETED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->status:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v1, Lcom/google/android/youtube/core/transfer/Transfer$Status;->FAILED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
