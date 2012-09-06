.class public Lcom/google/android/apps/googlevoice/util/logging/SensitiveGLog;
.super Ljava/lang/Object;
.source "SensitiveGLog.java"

# interfaces
.implements Lcom/google/android/apps/common/log/GLog;


# instance fields
.field private final underlyingLog:Lcom/google/android/apps/common/log/GLog;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/common/log/GLog;)V
    .registers 2
    .parameter "underlyingLog"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/util/logging/SensitiveGLog;->underlyingLog:Lcom/google/android/apps/common/log/GLog;

    .line 19
    return-void
.end method

.method private filter(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "message"

    .prologue
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 23
    const-string p1, "<string containing password>"

    .line 25
    .end local p1
    :cond_e
    return-object p1
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/util/logging/SensitiveGLog;->underlyingLog:Lcom/google/android/apps/common/log/GLog;

    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/util/logging/SensitiveGLog;->filter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/util/logging/SensitiveGLog;->underlyingLog:Lcom/google/android/apps/common/log/GLog;

    invoke-interface {v0, p1}, Lcom/google/android/apps/common/log/GLog;->e(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "message"
    .end parameter
    .parameter "e"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/util/logging/SensitiveGLog;->underlyingLog:Lcom/google/android/apps/common/log/GLog;

    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/util/logging/SensitiveGLog;->filter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/android/apps/common/log/GLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/util/logging/SensitiveGLog;->underlyingLog:Lcom/google/android/apps/common/log/GLog;

    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/util/logging/SensitiveGLog;->filter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->i(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/util/logging/SensitiveGLog;->underlyingLog:Lcom/google/android/apps/common/log/GLog;

    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/util/logging/SensitiveGLog;->filter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->v(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/util/logging/SensitiveGLog;->underlyingLog:Lcom/google/android/apps/common/log/GLog;

    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/util/logging/SensitiveGLog;->filter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->w(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "message"
    .end parameter
    .parameter "e"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/util/logging/SensitiveGLog;->underlyingLog:Lcom/google/android/apps/common/log/GLog;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/common/log/GLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    return-void
.end method
