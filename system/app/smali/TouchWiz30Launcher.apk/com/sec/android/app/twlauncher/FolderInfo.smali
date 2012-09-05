.class Lcom/sec/android/app/twlauncher/FolderInfo;
.super Lcom/sec/android/app/twlauncher/ApplicationInfo;
.source "FolderInfo.java"


# instance fields
.field opened:Z

.field private owner:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z

    return-void
.end method


# virtual methods
.method public getOwner()I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lcom/sec/android/app/twlauncher/FolderInfo;->owner:I

    return v0
.end method

.method public isOpened()Z
    .registers 2

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z

    return v0
.end method

.method public setOpened(Z)V
    .registers 2
    .parameter "aOpened"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z

    .line 43
    return-void
.end method

.method public setOwner(I)V
    .registers 2
    .parameter "aOwner"

    .prologue
    .line 32
    iput p1, p0, Lcom/sec/android/app/twlauncher/FolderInfo;->owner:I

    .line 33
    return-void
.end method
