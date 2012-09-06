.class public Lcom/google/android/apps/googlevoice/util/logging/NullBackedUpCircularLog;
.super Ljava/lang/Object;
.source "NullBackedUpCircularLog.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addEntry(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 15
    return-void
.end method

.method public clear()V
    .registers 1

    .prologue
    .line 19
    return-void
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 32
    return-void
.end method

.method public getContents()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    const-string v0, ""

    return-object v0
.end method

.method public writeTo(Ljava/io/PrintWriter;)V
    .registers 2
    .parameter "pw"

    .prologue
    .line 28
    return-void
.end method
