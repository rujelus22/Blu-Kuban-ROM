.class public Lcom/google/android/apps/unveil/history/SearchHistoryQuery$StringQuery;
.super Lcom/google/android/apps/unveil/history/SearchHistoryQuery$QuerySpec;
.source "SearchHistoryQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/history/SearchHistoryQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringQuery"
.end annotation


# instance fields
.field private final query:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "query"

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/history/SearchHistoryQuery$QuerySpec;-><init>(Z)V

    .line 105
    iput-object p1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryQuery$StringQuery;->query:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .parameter "query"
    .parameter "prefersHttps"

    .prologue
    .line 109
    invoke-direct {p0, p2}, Lcom/google/android/apps/unveil/history/SearchHistoryQuery$QuerySpec;-><init>(Z)V

    .line 110
    iput-object p1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryQuery$StringQuery;->query:Ljava/lang/String;

    .line 111
    return-void
.end method


# virtual methods
.method public isQueryForAllItems()Z
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryQuery$StringQuery;->query:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public queryString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryQuery$StringQuery;->query:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPresentationString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryQuery$StringQuery;->query:Ljava/lang/String;

    return-object v0
.end method
