.class public Lcom/google/android/apps/unveil/history/SearchHistoryQuery$AllItemsQuery;
.super Lcom/google/android/apps/unveil/history/SearchHistoryQuery$QuerySpec;
.source "SearchHistoryQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/history/SearchHistoryQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllItemsQuery"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/apps/unveil/history/SearchHistoryQuery$QuerySpec;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2
    .parameter "prefersHttps"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/history/SearchHistoryQuery$QuerySpec;-><init>(Z)V

    .line 60
    return-void
.end method


# virtual methods
.method public isQueryForAllItems()Z
    .registers 2

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public queryString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    const-string v0, "q="

    return-object v0
.end method

.method public toPresentationString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    const-string v0, "All Items"

    return-object v0
.end method
