.class Lcom/google/android/apps/reader/app/PageInfoTask$InterruptParserException;
.super Ljava/lang/RuntimeException;
.source "PageInfoTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/app/PageInfoTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InterruptParserException"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/reader/app/PageInfoTask$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/PageInfoTask$InterruptParserException;-><init>()V

    return-void
.end method
