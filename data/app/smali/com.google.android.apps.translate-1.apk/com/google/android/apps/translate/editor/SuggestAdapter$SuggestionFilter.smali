.class public interface abstract Lcom/google/android/apps/translate/editor/SuggestAdapter$SuggestionFilter;
.super Ljava/lang/Object;
.source "SuggestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/editor/SuggestAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SuggestionFilter"
.end annotation


# virtual methods
.method public abstract filter(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/history/Entry;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/history/Entry;",
            ">;"
        }
    .end annotation
.end method
