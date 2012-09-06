.class public interface abstract Lcom/google/android/apps/translatedecoder/decoder/Combiner;
.super Ljava/lang/Object;
.source "Combiner.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/apps/translatedecoder/decoder/Transition;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract combine(Ljava/util/List;Lcom/google/android/apps/translatedecoder/decoder/Transition;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;",
            ">;TT;I)V"
        }
    .end annotation
.end method

.method public abstract combine(Ljava/util/List;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;",
            ">;",
            "Ljava/util/List",
            "<TT;>;I)V"
        }
    .end annotation
.end method

.method public abstract createGoalNode(Ljava/util/List;Lcom/google/android/apps/translatedecoder/decoder/Transition;I)Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;",
            ">;",
            "Lcom/google/android/apps/translatedecoder/decoder/Transition;",
            "I)",
            "Lcom/google/android/apps/translatedecoder/decoder/LatticeNode;"
        }
    .end annotation
.end method
