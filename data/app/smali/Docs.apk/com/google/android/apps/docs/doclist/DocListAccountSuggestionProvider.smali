.class public Lcom/google/android/apps/docs/doclist/DocListAccountSuggestionProvider;
.super Landroid/content/SearchRecentSuggestionsProvider;
.source "DocListAccountSuggestionProvider.java"


# static fields
.field private static final a:Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;

.field public static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17
    const-string v0, "com.google.android.apps.docs.doclist.account_suggest"

    sput-object v0, Lcom/google/android/apps/docs/doclist/DocListAccountSuggestionProvider;->a:Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;

    sget-object v1, Lcom/google/android/apps/docs/doclist/DocListAccountSuggestionProvider;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/docs/doclist/DocListAccountSuggestionProvider;->a:Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/SearchRecentSuggestionsProvider;-><init>()V

    .line 26
    sget-object v0, Lcom/google/android/apps/docs/doclist/DocListAccountSuggestionProvider;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/docs/doclist/DocListAccountSuggestionProvider;->setupSuggestions(Ljava/lang/String;I)V

    .line 27
    return-void
.end method

.method public static a(LnL;)V
    .registers 2
    .parameter

    .prologue
    .line 55
    sget-object v0, Lcom/google/android/apps/docs/doclist/DocListAccountSuggestionProvider;->a:Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->a(LnL;)V

    .line 56
    return-void
.end method


# virtual methods
.method public onCreate()Z
    .registers 4

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/apps/docs/doclist/DocListAccountSuggestionProvider;->a:Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/DocListAccountSuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 34
    invoke-super {p0}, Landroid/content/SearchRecentSuggestionsProvider;->onCreate()Z

    move-result v0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    .line 44
    array-length v0, p4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    const/4 v0, 0x0

    aget-object v0, p4, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 45
    sget-object v0, Lcom/google/android/apps/docs/doclist/DocListAccountSuggestionProvider;->a:Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 47
    :goto_18
    return-object v0

    :cond_19
    invoke-super/range {p0 .. p5}, Landroid/content/SearchRecentSuggestionsProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_18
.end method
