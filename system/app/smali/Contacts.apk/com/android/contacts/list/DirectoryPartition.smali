.class public final Lcom/android/contacts/list/DirectoryPartition;
.super Lcom/android/common/widget/CompositeCursorAdapter$Partition;
.source "DirectoryPartition.java"


# instance fields
.field private mDirectoryId:J

.field private mDirectoryType:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mPhotoSupported:Z

.field private mPriorityDirectory:Z

.field private mStatus:I


# direct methods
.method public constructor <init>(ZZ)V
    .registers 3
    .parameter "showIfEmpty"
    .parameter "hasHeader"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/common/widget/CompositeCursorAdapter$Partition;-><init>(ZZ)V

    .line 40
    return-void
.end method


# virtual methods
.method public getDirectoryId()J
    .registers 3

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/android/contacts/list/DirectoryPartition;->mDirectoryId:J

    return-wide v0
.end method

.method public getDirectoryType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/contacts/list/DirectoryPartition;->mDirectoryType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/contacts/list/DirectoryPartition;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/android/contacts/list/DirectoryPartition;->mStatus:I

    return v0
.end method

.method public isLoading()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 85
    iget v1, p0, Lcom/android/contacts/list/DirectoryPartition;->mStatus:I

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/android/contacts/list/DirectoryPartition;->mStatus:I

    if-ne v1, v0, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isPhotoSupported()Z
    .registers 2

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/contacts/list/DirectoryPartition;->mPhotoSupported:Z

    return v0
.end method

.method public isPriorityDirectory()Z
    .registers 2

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/contacts/list/DirectoryPartition;->mPriorityDirectory:Z

    return v0
.end method

.method public setDirectoryId(J)V
    .registers 3
    .parameter "directoryId"

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/android/contacts/list/DirectoryPartition;->mDirectoryId:J

    .line 51
    return-void
.end method

.method public setDirectoryType(Ljava/lang/String;)V
    .registers 2
    .parameter "directoryType"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/contacts/list/DirectoryPartition;->mDirectoryType:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .registers 2
    .parameter "displayName"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/contacts/list/DirectoryPartition;->mDisplayName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setPhotoSupported(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/contacts/list/DirectoryPartition;->mPhotoSupported:Z

    .line 108
    return-void
.end method

.method public setPriorityDirectory(Z)V
    .registers 2
    .parameter "priorityDirectory"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/contacts/list/DirectoryPartition;->mPriorityDirectory:Z

    .line 97
    return-void
.end method

.method public setStatus(I)V
    .registers 2
    .parameter "status"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/contacts/list/DirectoryPartition;->mStatus:I

    .line 82
    return-void
.end method
