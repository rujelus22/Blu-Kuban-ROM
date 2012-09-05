.class public Lcom/google/android/apps/uploader/googlemobile/debug/StderrLogger;
.super Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;-><init>()V

    return-void
.end method


# virtual methods
.method public flush()V
    .registers 2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    return-void
.end method

.method public log(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public logThrowable(Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 8

    invoke-virtual {p0, p3, p4, p5}, Lcom/google/android/apps/uploader/googlemobile/debug/StderrLogger;->isLoggable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-super/range {p0 .. p6}, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->logThrowable(Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;I)V

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    return-void
.end method
