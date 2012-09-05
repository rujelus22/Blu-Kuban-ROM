.class public Lcom/sprint/w/installer/SearchSuggestProvider;
.super Landroid/content/SearchRecentSuggestionsProvider;
.source "SearchSuggestProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sprint.w.installer.SuggestProvider"

.field public static final MODE:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/SearchRecentSuggestionsProvider;-><init>()V

    .line 13
    const-string v0, "com.sprint.w.installer.SuggestProvider"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sprint/w/installer/SearchSuggestProvider;->setupSuggestions(Ljava/lang/String;I)V

    .line 14
    return-void
.end method
