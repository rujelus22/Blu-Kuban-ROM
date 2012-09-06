.class LIz;
.super Ljava/lang/Object;
.source "HoneycombActionBarHelper.java"

# interfaces
.implements Landroid/widget/SearchView$OnSuggestionListener;


# instance fields
.field final synthetic a:LIu;

.field final synthetic a:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(LIu;Landroid/view/MenuItem;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, LIz;->a:LIu;

    iput-object p2, p0, LIz;->a:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuggestionClick(I)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 301
    iget-object v1, p0, LIz;->a:LIu;

    invoke-static {v1}, LIu;->a(LIu;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->getSuggestionsAdapter()Landroid/widget/CursorAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 302
    if-eqz v2, :cond_2f

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 303
    const-string v1, "suggest_intent_action"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 304
    const/4 v1, 0x0

    .line 305
    if-ltz v3, :cond_24

    .line 306
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 310
    :cond_24
    if-eqz v1, :cond_30

    const-string v3, "android.intent.action.SEARCH"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 311
    const/4 v0, 0x0

    .line 319
    :cond_2f
    :goto_2f
    return v0

    .line 314
    :cond_30
    const-string v1, "suggest_intent_query"

    invoke-static {v2, v1}, LLV;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 315
    iget-object v2, p0, LIz;->a:LIu;

    iget-object v3, p0, LIz;->a:Landroid/view/MenuItem;

    invoke-static {v2, v1, v3}, LIu;->a(LIu;Ljava/lang/String;Landroid/view/MenuItem;)V

    goto :goto_2f
.end method

.method public onSuggestionSelect(I)Z
    .registers 3
    .parameter

    .prologue
    .line 325
    const/4 v0, 0x0

    return v0
.end method
