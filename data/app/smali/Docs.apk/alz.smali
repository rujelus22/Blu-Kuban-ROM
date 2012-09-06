.class public final Lalz;
.super Ljava/lang/Object;
.source "Closeables.java"


# static fields
.field static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-class v0, Lalz;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lalz;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 5
    .parameter

    .prologue
    .line 99
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, v0}, Lalz;->a(Ljava/io/Closeable;Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_5

    .line 103
    :goto_4
    return-void

    .line 100
    :catch_5
    move-exception v0

    .line 101
    sget-object v1, Lalz;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "IOException should not have been thrown."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public static a(Ljava/io/Closeable;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 76
    if-nez p0, :cond_3

    .line 89
    :goto_2
    return-void

    .line 80
    :cond_3
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    .line 81
    :catch_7
    move-exception v0

    .line 82
    if-eqz p1, :cond_14

    .line 83
    sget-object v1, Lalz;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "IOException thrown while closing Closeable."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 86
    :cond_14
    throw v0
.end method
