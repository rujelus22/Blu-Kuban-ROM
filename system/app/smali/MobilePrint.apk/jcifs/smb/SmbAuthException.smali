.class public Ljcifs/smb/SmbAuthException;
.super Ljcifs/smb/SmbException;
.source "SmbAuthException.java"


# direct methods
.method constructor <init>(I)V
    .registers 3
    .parameter "errcode"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljcifs/smb/SmbException;-><init>(ILjava/lang/Throwable;)V

    .line 32
    return-void
.end method
