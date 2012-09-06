.class public Lcom/google/android/apps/unveil/history/SearchHistoryQuery$SearchableItemsQuery;
.super Lcom/google/android/apps/unveil/history/SearchHistoryQuery$AllItemsQuery;
.source "SearchHistoryQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/history/SearchHistoryQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchableItemsQuery"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/android/apps/unveil/history/SearchHistoryQuery$AllItemsQuery;-><init>()V

    return-void
.end method


# virtual methods
.method public queryString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/apps/unveil/history/SearchHistoryQuery$AllItemsQuery;->queryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&searchable=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
