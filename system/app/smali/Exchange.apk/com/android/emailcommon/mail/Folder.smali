.class public abstract Lcom/android/emailcommon/mail/Folder;
.super Ljava/lang/Object;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;,
        Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;,
        Lcom/android/emailcommon/mail/Folder$FolderRole;,
        Lcom/android/emailcommon/mail/Folder$FolderType;,
        Lcom/android/emailcommon/mail/Folder$OpenMode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    return-void
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isOpen()Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/emailcommon/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
