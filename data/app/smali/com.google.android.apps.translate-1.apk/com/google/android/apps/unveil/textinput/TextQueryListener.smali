.class public Lcom/google/android/apps/unveil/textinput/TextQueryListener;
.super Lcom/google/android/apps/unveil/protocol/QueryListener;
.source "TextQueryListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/textinput/TextQueryListener$Listener;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final boundingBoxView:Lcom/google/android/apps/unveil/textinput/BoundingBoxView;

.field private volatile canceled:Z

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/textinput/TextQueryListener$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private pictureSize:Lcom/google/android/apps/unveil/env/Size;

.field public final queryId:J

.field private final textMasker:Lcom/google/android/apps/unveil/textinput/TextMasker;

.field textResponseReceived:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public varargs constructor <init>(Lcom/google/android/apps/unveil/textinput/BoundingBoxView;Lcom/google/android/apps/unveil/textinput/TextMasker;J[Lcom/google/android/apps/unveil/textinput/TextQueryListener$Listener;)V
    .registers 8
    .parameter "boundingBoxView"
    .parameter "textMasker"
    .parameter "queryId"
    .parameter "listeners"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/QueryListener;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->canceled:Z

    .line 39
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->boundingBoxView:Lcom/google/android/apps/unveil/textinput/BoundingBoxView;

    .line 40
    iput-object p2, p0, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->textMasker:Lcom/google/android/apps/unveil/textinput/TextMasker;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->listeners:Ljava/util/List;

    .line 42
    iput-wide p3, p0, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->queryId:J

    .line 43
    return-void
.end method

.method private getTextResult(Ljava/lang/Iterable;)Lcom/google/android/apps/unveil/results/ResultItem;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/apps/unveil/results/ResultItem;",
            ">;)",
            "Lcom/google/android/apps/unveil/results/ResultItem;"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, results:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/google/android/apps/unveil/results/ResultItem;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/results/ResultItem;

    .line 117
    .local v1, r:Lcom/google/android/apps/unveil/results/ResultItem;
    invoke-static {v1}, Lcom/google/android/apps/unveil/textinput/ConfigurationConstants;->isTextResult(Lcom/google/android/apps/unveil/results/ResultItem;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 121
    .end local v1           #r:Lcom/google/android/apps/unveil/results/ResultItem;
    :goto_16
    return-object v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method private handleTextResponse(Lcom/google/android/apps/unveil/protocol/QueryResponse;)V
    .registers 9
    .parameter "queryResponse"

    .prologue
    const/4 v6, 0x0

    .line 80
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->textResponseReceived:Z

    .line 82
    const/4 v0, 0x1

    .line 83
    .local v0, gotText:Z
    iget-object v4, p0, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->textMasker:Lcom/google/android/apps/unveil/textinput/TextMasker;

    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->pictureSize:Lcom/google/android/apps/unveil/env/Size;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/unveil/textinput/TextMasker;->setQueryPictureSize(Lcom/google/android/apps/unveil/env/Size;)V

    .line 84
    iget-object v4, p0, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->boundingBoxView:Lcom/google/android/apps/unveil/textinput/BoundingBoxView;

    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->pictureSize:Lcom/google/android/apps/unveil/env/Size;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->setQueryPictureSize(Lcom/google/android/apps/unveil/env/Size;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->hasTextResult(Lcom/google/android/apps/unveil/protocol/QueryResponse;)Z

    move-result v4

    if-nez v4, :cond_70

    .line 86
    iget-object v4, p0, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->textMasker:Lcom/google/android/apps/unveil/textinput/TextMasker;

    invoke-virtual {v4, v6, v6}, Lcom/google/android/apps/unveil/textinput/TextMasker;->setWords(Ljava/util/List;Ljava/util/List;)V

    .line 87
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_3a

    .line 88
    iget-object v4, p0, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->listeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/unveil/textinput/TextQueryListener$Listener;

    .line 89
    .local v2, listener:Lcom/google/android/apps/unveil/textinput/TextQueryListener$Listener;
    invoke-interface {v2}, Lcom/google/android/apps/unveil/textinput/TextQueryListener$Listener;->noResults()V

    goto :goto_2a

    .line 92
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/google/android/apps/unveil/textinput/TextQueryListener$Listener;
    :cond_3a
    const/4 v0, 0x0

    .line 100
    :goto_3b
    iget-object v4, p0, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->boundingBoxView:Lcom/google/android/apps/unveil/textinput/BoundingBoxView;

    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->boundingBoxView:Lcom/google/android/apps/unveil/textinput/BoundingBoxView;

    invoke-virtual {v5}, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x10a

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 102
    iget-object v4, p0, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->boundingBoxView:Lcom/google/android/apps/unveil/textinput/BoundingBoxView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/apps/unveil/textinput/BoundingBoxView;->setVisibility(I)V

    .line 104
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_92

    if-eqz v0, :cond_92

    .line 105
    iget-object v4, p0, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->listeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_60
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_92

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/unveil/textinput/TextQueryListener$Listener;

    .line 106
    .restart local v2       #listener:Lcom/google/android/apps/unveil/textinput/TextQueryListener$Listener;
    invoke-interface {v2}, Lcom/google/android/apps/unveil/textinput/TextQueryListener$Listener;->onResult()V

    goto :goto_60

    .line 94
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/google/android/apps/unveil/textinput/TextQueryListener$Listener;
    :cond_70
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/protocol/QueryResponse;->getResults()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->getTextResult(Ljava/lang/Iterable;)Lcom/google/android/apps/unveil/results/ResultItem;

    move-result-object v3

    .line 96
    .local v3, textResult:Lcom/google/android/apps/unveil/results/ResultItem;
    iget-object v4, p0, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->textMasker:Lcom/google/android/apps/unveil/textinput/TextMasker;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/results/ResultItem;->getAnnotationResult()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getTextInfo()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->getWordsList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/results/ResultItem;->getAnnotationResult()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getUrlGroupsList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/unveil/textinput/TextMasker;->setWords(Ljava/util/List;Ljava/util/List;)V

    goto :goto_3b

    .line 109
    .end local v3           #textResult:Lcom/google/android/apps/unveil/results/ResultItem;
    :cond_92
    return-void
.end method

.method private hasTextResult(Lcom/google/android/apps/unveil/protocol/QueryResponse;)Z
    .registers 4
    .parameter "response"

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/protocol/QueryResponse;->getResults()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->getTextResult(Ljava/lang/Iterable;)Lcom/google/android/apps/unveil/results/ResultItem;

    move-result-object v0

    .line 76
    .local v0, textResult:Lcom/google/android/apps/unveil/results/ResultItem;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/results/ResultItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method


# virtual methods
.method public addListener(Lcom/google/android/apps/unveil/textinput/TextQueryListener$Listener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public cancel(Z)V
    .registers 2
    .parameter "canceled"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->canceled:Z

    .line 59
    return-void
.end method

.method public isCanceled()Z
    .registers 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->canceled:Z

    return v0
.end method

.method public onAuthenticationError()V
    .registers 6

    .prologue
    .line 134
    sget-object v2, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Authentication error."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v2, p0, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/textinput/TextQueryListener$Listener;

    .line 136
    .local v1, listener:Lcom/google/android/apps/unveil/textinput/TextQueryListener$Listener;
    const/16 v2, 0x193

    invoke-interface {v1, v2}, Lcom/google/android/apps/unveil/textinput/TextQueryListener$Listener;->onNetworkError(I)V

    goto :goto_10

    .line 138
    .end local v1           #listener:Lcom/google/android/apps/unveil/textinput/TextQueryListener$Listener;
    :cond_22
    return-void
.end method

.method public onNetworkError(I)V
    .registers 9
    .parameter "statusCode"

    .prologue
    .line 126
    sget-object v2, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Network error, status code is %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    iget-object v2, p0, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/textinput/TextQueryListener$Listener;

    .line 128
    .local v1, listener:Lcom/google/android/apps/unveil/textinput/TextQueryListener$Listener;
    invoke-interface {v1, p1}, Lcom/google/android/apps/unveil/textinput/TextQueryListener$Listener;->onNetworkError(I)V

    goto :goto_17

    .line 130
    .end local v1           #listener:Lcom/google/android/apps/unveil/textinput/TextQueryListener$Listener;
    :cond_27
    return-void
.end method

.method public onQueryResponse(Lcom/google/android/apps/unveil/protocol/QueryResponse;)V
    .registers 3
    .parameter "queryResponse"

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 72
    :goto_6
    return-void

    .line 71
    :cond_7
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->handleTextResponse(Lcom/google/android/apps/unveil/protocol/QueryResponse;)V

    goto :goto_6
.end method

.method public setPictureSize(Lcom/google/android/apps/unveil/env/Size;)V
    .registers 2
    .parameter "pictureSize"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->pictureSize:Lcom/google/android/apps/unveil/env/Size;

    .line 51
    return-void
.end method

.method public textResponseRecieved()Z
    .registers 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/textinput/TextQueryListener;->textResponseReceived:Z

    return v0
.end method
