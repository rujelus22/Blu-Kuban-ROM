.class public interface abstract Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$SuggestionProviderListener;
.super Ljava/lang/Object;
.source "SuggestionProviderExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SuggestionProviderListener"
.end annotation


# virtual methods
.method public abstract onSuggestionsAvailable(Ljava/util/ArrayList;ILjava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/typedrequests/provider/Suggestion;",
            ">;I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method
