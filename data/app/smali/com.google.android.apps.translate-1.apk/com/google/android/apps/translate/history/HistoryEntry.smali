.class public Lcom/google/android/apps/translate/history/HistoryEntry;
.super Ljava/lang/Object;
.source "HistoryEntry.java"


# instance fields
.field public entry:Lcom/google/android/apps/translate/history/Entry;

.field public isFavorite:Z


# direct methods
.method public constructor <init>(Lcom/google/android/apps/translate/history/Entry;Z)V
    .registers 3
    .parameter "entry"
    .parameter "isFavorite"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/android/apps/translate/history/HistoryEntry;->entry:Lcom/google/android/apps/translate/history/Entry;

    .line 21
    iput-boolean p2, p0, Lcom/google/android/apps/translate/history/HistoryEntry;->isFavorite:Z

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/translate/history/HistoryEntry;)V
    .registers 3
    .parameter "historyEntry"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iget-object v0, p1, Lcom/google/android/apps/translate/history/HistoryEntry;->entry:Lcom/google/android/apps/translate/history/Entry;

    iput-object v0, p0, Lcom/google/android/apps/translate/history/HistoryEntry;->entry:Lcom/google/android/apps/translate/history/Entry;

    .line 29
    iget-boolean v0, p1, Lcom/google/android/apps/translate/history/HistoryEntry;->isFavorite:Z

    iput-boolean v0, p0, Lcom/google/android/apps/translate/history/HistoryEntry;->isFavorite:Z

    .line 30
    return-void
.end method

.method public static getNullHistoryEntry()Lcom/google/android/apps/translate/history/HistoryEntry;
    .registers 7

    .prologue
    const/4 v6, 0x0

    .line 36
    new-instance v0, Lcom/google/android/apps/translate/history/Entry;

    const-string v2, "null"

    const-string v3, "null"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/apps/translate/history/Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .local v0, entry:Lcom/google/android/apps/translate/history/Entry;
    new-instance v1, Lcom/google/android/apps/translate/history/HistoryEntry;

    invoke-direct {v1, v0, v6}, Lcom/google/android/apps/translate/history/HistoryEntry;-><init>(Lcom/google/android/apps/translate/history/Entry;Z)V

    .line 43
    .local v1, nullEntry:Lcom/google/android/apps/translate/history/HistoryEntry;
    iput-object v0, v1, Lcom/google/android/apps/translate/history/HistoryEntry;->entry:Lcom/google/android/apps/translate/history/Entry;

    .line 44
    iput-boolean v6, v1, Lcom/google/android/apps/translate/history/HistoryEntry;->isFavorite:Z

    .line 45
    return-object v1
.end method


# virtual methods
.method public isNullEntry()Z
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/translate/history/HistoryEntry;->entry:Lcom/google/android/apps/translate/history/Entry;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/Entry;->getFromLanguageShortName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
