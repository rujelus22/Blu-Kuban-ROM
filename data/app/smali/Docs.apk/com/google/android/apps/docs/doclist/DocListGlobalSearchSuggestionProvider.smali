.class public Lcom/google/android/apps/docs/doclist/DocListGlobalSearchSuggestionProvider;
.super Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;
.source "DocListGlobalSearchSuggestionProvider.java"


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-string v0, "com.google.android.apps.docs.doclist.search_suggest"

    sput-object v0, Lcom/google/android/apps/docs/doclist/DocListGlobalSearchSuggestionProvider;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    sget-object v0, Lcom/google/android/apps/docs/doclist/DocListGlobalSearchSuggestionProvider;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method
