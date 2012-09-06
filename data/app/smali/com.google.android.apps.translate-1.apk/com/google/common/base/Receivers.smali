.class public final Lcom/google/common/base/Receivers;
.super Ljava/lang/Object;
.source "Receivers.java"


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final IGNORING_RECEIVER:Lcom/google/common/base/Receiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Receiver",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    new-instance v0, Lcom/google/common/base/Receivers$1;

    invoke-direct {v0}, Lcom/google/common/base/Receivers$1;-><init>()V

    sput-object v0, Lcom/google/common/base/Receivers;->IGNORING_RECEIVER:Lcom/google/common/base/Receiver;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collect(Ljava/util/Collection;)Lcom/google/common/base/Receiver;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<-TT;>;)",
            "Lcom/google/common/base/Receiver",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<-TT;>;"
    new-instance v0, Lcom/google/common/base/Receivers$2;

    invoke-direct {v0, p0}, Lcom/google/common/base/Receivers$2;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static compose(Ljava/lang/Iterable;)Lcom/google/common/base/Receiver;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/common/base/Receiver",
            "<TT;>;>;)",
            "Lcom/google/common/base/Receiver",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, receivers:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/google/common/base/Receiver<TT;>;>;"
    new-instance v0, Lcom/google/common/base/Receivers$4;

    invoke-direct {v0, p0}, Lcom/google/common/base/Receivers$4;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static varargs compose([Lcom/google/common/base/Receiver;)Lcom/google/common/base/Receiver;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/common/base/Receiver",
            "<-TT;>;)",
            "Lcom/google/common/base/Receiver",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, receivers:[Lcom/google/common/base/Receiver;,"[Lcom/google/common/base/Receiver<-TT;>;"
    new-instance v0, Lcom/google/common/base/Receivers$3;

    invoke-direct {v0, p0}, Lcom/google/common/base/Receivers$3;-><init>([Lcom/google/common/base/Receiver;)V

    return-object v0
.end method

.method public static ignore()Lcom/google/common/base/Receiver;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/Receiver",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lcom/google/common/base/Receivers;->IGNORING_RECEIVER:Lcom/google/common/base/Receiver;

    return-object v0
.end method
