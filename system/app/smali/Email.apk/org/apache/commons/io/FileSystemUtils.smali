.class public Lorg/apache/commons/io/FileSystemUtils;
.super Ljava/lang/Object;
.source "FileSystemUtils.java"


# static fields
.field private static final INSTANCE:Lorg/apache/commons/io/FileSystemUtils;

.field private static final OS:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, -0x1

    .line 52
    new-instance v3, Lorg/apache/commons/io/FileSystemUtils;

    invoke-direct {v3}, Lorg/apache/commons/io/FileSystemUtils;-><init>()V

    sput-object v3, Lorg/apache/commons/io/FileSystemUtils;->INSTANCE:Lorg/apache/commons/io/FileSystemUtils;

    .line 68
    const/4 v1, 0x0

    .line 70
    .local v1, os:I
    :try_start_9
    const-string v3, "os.name"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, osName:Ljava/lang/String;
    if-nez v2, :cond_1e

    .line 72
    new-instance v3, Ljava/io/IOException;

    const-string v4, "os.name not found"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_19

    .line 96
    .end local v2           #osName:Ljava/lang/String;
    :catch_19
    move-exception v0

    .line 97
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, -0x1

    .line 99
    .end local v0           #ex:Ljava/lang/Exception;
    :goto_1b
    sput v1, Lorg/apache/commons/io/FileSystemUtils;->OS:I

    .line 100
    return-void

    .line 74
    .restart local v2       #osName:Ljava/lang/String;
    :cond_1e
    :try_start_1e
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 76
    const-string v3, "windows"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_2c

    .line 77
    const/4 v1, 0x1

    goto :goto_1b

    .line 78
    :cond_2c
    const-string v3, "linux"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_7c

    const-string v3, "sun os"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_7c

    const-string v3, "sunos"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_7c

    const-string v3, "solaris"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_7c

    const-string v3, "mpe/ix"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_7c

    const-string v3, "freebsd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_7c

    const-string v3, "irix"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_7c

    const-string v3, "digital unix"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_7c

    const-string v3, "unix"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_7c

    const-string v3, "mac os x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_7e

    .line 88
    :cond_7c
    const/4 v1, 0x2

    goto :goto_1b

    .line 89
    :cond_7e
    const-string v3, "hp-ux"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_8e

    const-string v3, "aix"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_8b} :catch_19

    move-result v3

    if-eq v3, v4, :cond_90

    .line 91
    :cond_8e
    const/4 v1, 0x3

    goto :goto_1b

    .line 93
    :cond_90
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method
