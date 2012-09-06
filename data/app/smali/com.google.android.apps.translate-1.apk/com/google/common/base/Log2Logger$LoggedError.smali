.class Lcom/google/common/base/Log2Logger$LoggedError;
.super Ljava/lang/Throwable;
.source "Log2Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Log2Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoggedError"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/Log2Logger$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/google/common/base/Log2Logger$LoggedError;-><init>()V

    return-void
.end method
