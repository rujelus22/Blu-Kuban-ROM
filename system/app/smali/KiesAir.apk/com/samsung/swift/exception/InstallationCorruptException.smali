.class public Lcom/samsung/swift/exception/InstallationCorruptException;
.super Lcom/samsung/swift/exception/SwiftException;
.source "InstallationCorruptException.java"


# static fields
.field private static final serialVersionUID:J = 0xe44d4a06c83e7edL


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 103
    const-string v0, "The installation is corrupt. Please uninstall and reinstall!"

    invoke-direct {p0, v0}, Lcom/samsung/swift/exception/SwiftException;-><init>(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3
    .parameter "parent"

    .prologue
    .line 109
    const-string v0, "The installation is corrupt. Please uninstall and reinstall!"

    invoke-direct {p0, v0, p1}, Lcom/samsung/swift/exception/SwiftException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    return-void
.end method
