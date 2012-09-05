.class abstract Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;
.super Ljava/lang/Object;
.source "RecentSuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/providers/RecentSuggestionsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AsyncSuggestionAuthority"
.end annotation


# instance fields
.field protected final COLUMNS:[Ljava/lang/String;

.field protected final mQuery:Ljava/lang/String;

.field private final mResults:Landroid/database/MatrixCursor;

.field final synthetic this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter "query"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->COLUMNS:[Ljava/lang/String;

    .line 65
    new-instance v0, Landroid/database/MatrixCursor;

    iget-object v1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->mResults:Landroid/database/MatrixCursor;

    .line 69
    iput-object p2, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->mQuery:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method protected addRow(IILjava/lang/String;)V
    .registers 7
    .parameter "id"
    .parameter "iconResourceId"
    .parameter "name"

    .prologue
    .line 118
    iget-object v1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    new-array v0, v1, [Ljava/lang/Object;

    .line 119
    .local v0, row:[Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 120
    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 121
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 122
    const/4 v1, 0x3

    aput-object p3, v0, v1

    .line 123
    iget-object v1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->mResults:Landroid/database/MatrixCursor;

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public gatherSuggestions()Landroid/database/Cursor;
    .registers 4

    .prologue
    .line 94
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 96
    .local v1, sem:Ljava/util/concurrent/Semaphore;
    new-instance v2, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority$1;-><init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->makeRequest(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V

    .line 109
    :try_start_e
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_14

    .line 114
    iget-object v2, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->mResults:Landroid/database/MatrixCursor;

    :goto_13
    return-object v2

    .line 110
    :catch_14
    move-exception v0

    .line 111
    .local v0, e:Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->mResults:Landroid/database/MatrixCursor;

    goto :goto_13
.end method

.method protected abstract makeRequest(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V
.end method
