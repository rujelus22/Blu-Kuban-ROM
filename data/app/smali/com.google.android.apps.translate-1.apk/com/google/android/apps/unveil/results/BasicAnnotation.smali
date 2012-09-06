.class public Lcom/google/android/apps/unveil/results/BasicAnnotation;
.super Ljava/lang/Object;
.source "BasicAnnotation.java"


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private numComfirmations:I

.field private result:Lcom/google/android/apps/unveil/results/ResultItem;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/results/BasicAnnotation;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/unveil/results/ResultItem;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/apps/unveil/results/BasicAnnotation;->result:Lcom/google/android/apps/unveil/results/ResultItem;

    .line 24
    return-void
.end method


# virtual methods
.method protected getDebugText()Ljava/util/Vector;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 44
    .local v0, lines:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/results/BasicAnnotation;->result:Lcom/google/android/apps/unveil/results/ResultItem;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/results/ResultItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# confirms: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/unveil/results/BasicAnnotation;->numComfirmations:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResultId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/results/BasicAnnotation;->getResultId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 47
    return-object v0
.end method

.method public getResult()Lcom/google/android/apps/unveil/results/ResultItem;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/BasicAnnotation;->result:Lcom/google/android/apps/unveil/results/ResultItem;

    return-object v0
.end method

.method public getResultId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/BasicAnnotation;->result:Lcom/google/android/apps/unveil/results/ResultItem;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/results/ResultItem;->getAnnotationResult()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getResultId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/BasicAnnotation;->result:Lcom/google/android/apps/unveil/results/ResultItem;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/results/ResultItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateResultItem(Lcom/google/android/apps/unveil/results/ResultItem;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/android/apps/unveil/results/BasicAnnotation;->result:Lcom/google/android/apps/unveil/results/ResultItem;

    .line 28
    iget v0, p0, Lcom/google/android/apps/unveil/results/BasicAnnotation;->numComfirmations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/unveil/results/BasicAnnotation;->numComfirmations:I

    .line 29
    return-void
.end method
