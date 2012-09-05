.class public Lcom/samsung/swift/util/ShellScript;
.super Lcom/samsung/swift/util/ProcessRunner;
.source "ShellScript.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/samsung/swift/util/ProcessRunner;-><init>()V

    return-void
.end method


# virtual methods
.method public setPath(Ljava/io/File;)Lcom/samsung/swift/util/ShellScript;
    .registers 5
    .parameter "path"

    .prologue
    .line 90
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/bin/sh"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-v"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/swift/util/ShellScript;->setCommandLine([Ljava/lang/String;)Lcom/samsung/swift/util/ProcessRunner;

    .line 91
    return-object p0
.end method
