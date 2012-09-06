.class public LapR;
.super Ljava/lang/Object;
.source "UniqueAnnotations.java"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, LapR;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static a()Ljava/lang/annotation/Annotation;
    .registers 1

    .prologue
    .line 39
    sget-object v0, LapR;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, LapR;->a(I)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method static a(I)Ljava/lang/annotation/Annotation;
    .registers 2
    .parameter

    .prologue
    .line 43
    new-instance v0, LapS;

    invoke-direct {v0, p0}, LapS;-><init>(I)V

    return-object v0
.end method
