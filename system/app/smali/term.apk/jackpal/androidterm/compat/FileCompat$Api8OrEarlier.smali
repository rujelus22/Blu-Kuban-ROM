.class Ljackpal/androidterm/compat/FileCompat$Api8OrEarlier;
.super Ljava/lang/Object;
.source "FileCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/compat/FileCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api8OrEarlier"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-string v0, "jackpal-androidterm4"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canExecute(Ljava/io/File;)Z
    .registers 2
    .parameter "file"

    .prologue
    .line 37
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljackpal/androidterm/compat/FileCompat$Api8OrEarlier;->testExecute(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static native testExecute(Ljava/lang/String;)Z
.end method
