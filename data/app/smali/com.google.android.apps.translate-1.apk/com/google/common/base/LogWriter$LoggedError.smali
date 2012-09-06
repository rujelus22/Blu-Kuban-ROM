.class Lcom/google/common/base/LogWriter$LoggedError;
.super Ljava/lang/Throwable;
.source "LogWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/LogWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoggedError"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    return-void
.end method
