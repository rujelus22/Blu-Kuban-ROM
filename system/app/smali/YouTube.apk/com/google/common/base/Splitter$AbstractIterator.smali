.class abstract Lcom/google/common/base/Splitter$AbstractIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Lcom/google/common/base/Splitter$AbstractIterator$State;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    sget-object v0, Lcom/google/common/base/Splitter$AbstractIterator$State;->NOT_READY:Lcom/google/common/base/Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/Splitter$AbstractIterator;->a:Lcom/google/common/base/Splitter$AbstractIterator$State;

    .line 408
    return-void
.end method
