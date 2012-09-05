.class public Lcom/google/android/youtube/core/suggest/SuggestionProvider$SuggestionData;
.super Ljava/lang/Object;
.source "SuggestionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/suggest/SuggestionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuggestionData"
.end annotation


# instance fields
.field public index:Ljava/lang/String;

.field public numberOfResults:Ljava/lang/String;

.field public suggestion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "suggestion"
    .parameter "numberOfResults"
    .parameter "index"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider$SuggestionData;->suggestion:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider$SuggestionData;->numberOfResults:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcom/google/android/youtube/core/suggest/SuggestionProvider$SuggestionData;->index:Ljava/lang/String;

    .line 73
    return-void
.end method
