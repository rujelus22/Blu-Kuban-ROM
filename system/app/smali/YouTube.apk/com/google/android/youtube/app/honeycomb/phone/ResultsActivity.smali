.class public Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;
.super Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/google/android/youtube/app/ui/as;


# instance fields
.field private A:Lcom/google/android/youtube/app/ui/eh;

.field private B:Lcom/google/android/youtube/app/ui/k;

.field private C:Landroid/widget/Spinner;

.field private D:Landroid/widget/Spinner;

.field private E:Lcom/google/android/youtube/app/ui/aq;

.field private F:Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

.field private G:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

.field private H:Landroid/view/View;

.field private I:Lcom/google/android/youtube/core/ui/PagedListView;

.field private J:Lcom/google/android/youtube/core/ui/PagedListView;

.field private K:Landroid/provider/SearchRecentSuggestions;

.field private L:Z

.field private M:Landroid/view/inputmethod/InputMethodManager;

.field private m:Landroid/content/res/Resources;

.field private n:Lcom/google/android/youtube/core/async/GDataRequestFactory;

.field private o:Lcom/google/android/youtube/core/b/ae;

.field private p:Landroid/content/SharedPreferences;

.field private q:Lcom/google/android/youtube/core/async/ar;

.field private r:Lcom/google/android/youtube/core/async/ar;

.field private s:Lcom/google/android/youtube/core/b/ag;

.field private t:Lcom/google/android/youtube/core/b/ai;

.field private u:Lcom/google/android/youtube/core/d;

.field private v:Lcom/google/android/youtube/core/j;

.field private w:Lcom/google/android/youtube/app/c/g;

.field private x:Lcom/google/android/youtube/app/ui/br;

.field private y:Lcom/google/android/youtube/app/ui/br;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;-><init>()V

    .line 61
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .registers 13

    .prologue
    const v5, 0x7f0a0056

    const/4 v6, 0x0

    .line 166
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;->VIDEO:Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->F:Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    .line 167
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->D:Landroid/widget/Spinner;

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->C:Landroid/widget/Spinner;

    sget-object v1, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;->VIDEO:Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 169
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->J:Lcom/google/android/youtube/core/ui/PagedListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/PagedListView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->I:Lcom/google/android/youtube/core/ui/PagedListView;

    invoke-virtual {v0, v6}, Lcom/google/android/youtube/core/ui/PagedListView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->E:Lcom/google/android/youtube/app/ui/aq;

    if-nez v0, :cond_b9

    .line 173
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->G:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    if-nez v0, :cond_30

    .line 174
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->ALL_TIME:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->G:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    .line 176
    :cond_30
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->G:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->D:Landroid/widget/Spinner;

    const v2, 0x7f04002d

    invoke-static {p0, p0, v0, v1, v2}, Lcom/google/android/youtube/app/ui/aq;->a(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/as;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;Landroid/widget/Spinner;I)Lcom/google/android/youtube/app/ui/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->E:Lcom/google/android/youtube/app/ui/aq;

    .line 182
    :goto_3d
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->s:Lcom/google/android/youtube/core/b/ag;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->t:Lcom/google/android/youtube/core/b/ai;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->v:Lcom/google/android/youtube/core/j;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->w:Lcom/google/android/youtube/app/c/g;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/youtube/app/adapter/bb;->a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/core/j;Lcom/google/android/youtube/app/c/g;)Lcom/google/android/youtube/app/adapter/ba;

    move-result-object v0

    .line 185
    new-instance v1, Lcom/google/android/youtube/app/honeycomb/ui/a;

    invoke-direct {v1, p0, v0}, Lcom/google/android/youtube/app/honeycomb/ui/a;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/a/a;)V

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->x:Lcom/google/android/youtube/app/ui/br;

    .line 186
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->x:Lcom/google/android/youtube/app/ui/br;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->m:Landroid/content/res/Resources;

    const v2, 0x7f0a004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/br;->b(I)V

    .line 188
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->x:Lcom/google/android/youtube/app/ui/br;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->m:Landroid/content/res/Resources;

    const v2, 0x7f0a0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->m:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->m:Landroid/content/res/Resources;

    const v4, 0x7f0a0055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->m:Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/app/ui/br;->a(IIII)V

    .line 193
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->j()V

    .line 195
    new-instance v0, Lcom/google/android/youtube/app/ui/eh;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->I:Lcom/google/android/youtube/core/ui/PagedListView;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->x:Lcom/google/android/youtube/app/ui/br;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->q:Lcom/google/android/youtube/core/async/ar;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->u:Lcom/google/android/youtube/core/d;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v7

    sget-object v9, Lcom/google/android/youtube/app/m;->I:Lcom/google/android/youtube/core/b/aj;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->v()Lcom/google/android/youtube/core/Analytics;

    move-result-object v10

    sget-object v11, Lcom/google/android/youtube/core/Analytics$VideoCategory;->SearchResults:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    move-object v1, p0

    move v8, v6

    invoke-direct/range {v0 .. v11}, Lcom/google/android/youtube/app/ui/eh;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;ZLcom/google/android/youtube/app/a;ZLcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->A:Lcom/google/android/youtube/app/ui/eh;

    .line 208
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->A:Lcom/google/android/youtube/app/ui/eh;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->n:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->z:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->G:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/eh;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 209
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->i()V

    .line 210
    return-void

    .line 179
    :cond_b9
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->E:Lcom/google/android/youtube/app/ui/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/aq;->b()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->G:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    goto/16 :goto_3d
.end method

.method private h()V
    .registers 10

    .prologue
    const v5, 0x7f0a0056

    const/16 v2, 0x8

    const/4 v6, 0x0

    .line 213
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->D:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->C:Landroid/widget/Spinner;

    sget-object v1, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;->CHANNEL:Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 215
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->J:Lcom/google/android/youtube/core/ui/PagedListView;

    invoke-virtual {v0, v6}, Lcom/google/android/youtube/core/ui/PagedListView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->I:Lcom/google/android/youtube/core/ui/PagedListView;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/ui/PagedListView;->setVisibility(I)V

    .line 217
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;->CHANNEL:Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->F:Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    .line 219
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->o:Lcom/google/android/youtube/core/b/ae;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->s:Lcom/google/android/youtube/core/b/ag;

    invoke-static {p0, v0, v1}, Lcom/google/android/youtube/app/adapter/bb;->a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;)Lcom/google/android/youtube/app/adapter/ba;

    move-result-object v0

    .line 222
    new-instance v1, Lcom/google/android/youtube/app/honeycomb/ui/a;

    invoke-direct {v1, p0, v0}, Lcom/google/android/youtube/app/honeycomb/ui/a;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/a/a;)V

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->y:Lcom/google/android/youtube/app/ui/br;

    .line 223
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->y:Lcom/google/android/youtube/app/ui/br;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->m:Landroid/content/res/Resources;

    const v2, 0x7f0a004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/br;->b(I)V

    .line 225
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->y:Lcom/google/android/youtube/app/ui/br;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->m:Landroid/content/res/Resources;

    const v2, 0x7f0a0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->m:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->m:Landroid/content/res/Resources;

    const v4, 0x7f0a0055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->m:Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/app/ui/br;->a(IIII)V

    .line 230
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->j()V

    .line 232
    new-instance v0, Lcom/google/android/youtube/app/ui/k;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->J:Lcom/google/android/youtube/core/ui/PagedListView;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->y:Lcom/google/android/youtube/app/ui/br;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->r:Lcom/google/android/youtube/core/async/ar;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->u:Lcom/google/android/youtube/core/d;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->v()Lcom/google/android/youtube/core/Analytics;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/youtube/app/ui/k;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;ZLcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/Analytics;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->B:Lcom/google/android/youtube/app/ui/k;

    .line 243
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->B:Lcom/google/android/youtube/app/ui/k;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->n:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/k;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 244
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->i()V

    .line 245
    return-void
.end method

.method private i()V
    .registers 4

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->M:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 284
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 285
    return-void
.end method

.method private j()V
    .registers 4

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->x:Lcom/google/android/youtube/app/ui/br;

    if-eqz v0, :cond_12

    .line 334
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->x:Lcom/google/android/youtube/app/ui/br;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->m:Landroid/content/res/Resources;

    const v2, 0x7f0d000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/br;->a(I)V

    .line 336
    :cond_12
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->y:Lcom/google/android/youtube/app/ui/br;

    if-eqz v0, :cond_24

    .line 337
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->y:Lcom/google/android/youtube/app/ui/br;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->m:Landroid/content/res/Resources;

    const v2, 0x7f0d0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/br;->a(I)V

    .line 340
    :cond_24
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/youtube/app/YouTubeApplication;)V
    .registers 3
    .parameter

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->a(Lcom/google/android/youtube/app/YouTubeApplication;)V

    .line 123
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->m:Landroid/content/res/Resources;

    .line 124
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->O()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->p:Landroid/content/SharedPreferences;

    .line 125
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->o:Lcom/google/android/youtube/core/b/ae;

    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->o:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->n:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    .line 127
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/core/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->s:Lcom/google/android/youtube/core/b/ag;

    .line 128
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->n()Lcom/google/android/youtube/core/b/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->t:Lcom/google/android/youtube/core/b/ai;

    .line 129
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->u:Lcom/google/android/youtube/core/d;

    .line 130
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/ae;->c()Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->q:Lcom/google/android/youtube/core/async/ar;

    .line 131
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/ae;->d()Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->r:Lcom/google/android/youtube/core/async/ar;

    .line 132
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->g()Landroid/provider/SearchRecentSuggestions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->K:Landroid/provider/SearchRecentSuggestions;

    .line 133
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->Y()Lcom/google/android/youtube/core/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->v:Lcom/google/android/youtube/core/j;

    .line 134
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->o()Lcom/google/android/youtube/app/c/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->w:Lcom/google/android/youtube/app/c/g;

    .line 135
    return-void
.end method

.method public final synthetic a(Ljava/lang/Enum;)V
    .registers 5
    .parameter

    .prologue
    .line 58
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->v()Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "TimeFilter"

    invoke-virtual {p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->G:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->g()V

    return-void
.end method

.method protected final b(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 299
    packed-switch p1, :pswitch_data_c

    .line 303
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 301
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->E:Lcom/google/android/youtube/app/ui/aq;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/aq;->a()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 299
    :pswitch_data_c
    .packed-switch 0x3fa
        :pswitch_5
    .end packed-switch
.end method

.method protected final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 323
    const-string v0, "yt_results"

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter

    .prologue
    .line 328
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 329
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->j()V

    .line 330
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    const v0, 0x7f04006b

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->setContentView(I)V

    .line 141
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->u()Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->CUSTOM:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;)V

    .line 143
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->getApplication()Landroid/app/Application;

    .line 145
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->M:Landroid/view/inputmethod/InputMethodManager;

    .line 146
    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->D:Landroid/widget/Spinner;

    .line 147
    const v0, 0x7f08002a

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/ui/PagedListView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->I:Lcom/google/android/youtube/core/ui/PagedListView;

    .line 148
    const v0, 0x7f080047

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/ui/PagedListView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->J:Lcom/google/android/youtube/core/ui/PagedListView;

    .line 149
    const v0, 0x7f080073

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->H:Landroid/view/View;

    .line 151
    const v0, 0x7f0800cb

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->C:Landroid/widget/Spinner;

    .line 152
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v0, 0x7f04002d

    invoke-direct {v1, p0, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 153
    invoke-static {}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;->values()[Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_62
    if-ge v0, v3, :cond_72

    aget-object v4, v2, v0

    .line 154
    iget v4, v4, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;->nameRes:I

    invoke-virtual {p0, v4}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    .line 156
    :cond_72
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->C:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 157
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->C:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 159
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->x()Lcom/google/android/youtube/app/honeycomb/phone/au;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/au;->a(Z)V

    .line 162
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 163
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter

    .prologue
    .line 289
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 290
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->u()Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    move-result-object v1

    .line 291
    iget-boolean v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->L:Z

    if-nez v2, :cond_12

    .line 292
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->z:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Ljava/lang/String;Z)V

    .line 294
    :cond_12
    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 343
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;->VIDEO:Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;->ordinal()I

    move-result v0

    if-ne v0, p3, :cond_c

    .line 344
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->g()V

    .line 348
    :cond_b
    :goto_b
    return-void

    .line 345
    :cond_c
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;->CHANNEL:Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;->ordinal()I

    move-result v0

    if-ne v0, p3, :cond_b

    .line 346
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->h()V

    goto :goto_b
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 249
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->i()V

    .line 251
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->z:Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->z:Ljava/lang/String;

    const-string v1, "is:channel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 253
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->z:Ljava/lang/String;

    const-string v1, "is:channel"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->z:Ljava/lang/String;

    .line 254
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;->CHANNEL:Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->F:Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    .line 256
    :cond_2e
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->z:Ljava/lang/String;

    const-string v1, "is:video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 257
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->z:Ljava/lang/String;

    const-string v1, "is:video"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->z:Ljava/lang/String;

    .line 258
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;->VIDEO:Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->F:Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    .line 260
    :cond_4c
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->F:Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    if-nez v0, :cond_8d

    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;->VIDEO:Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    :goto_52
    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->F:Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    .line 262
    const-string v0, "hide_query"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->L:Z

    .line 264
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->L:Z

    if-nez v0, :cond_71

    .line 265
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->K:Landroid/provider/SearchRecentSuggestions;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->z:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->u()Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Ljava/lang/String;Z)V

    .line 269
    :cond_71
    const-string v0, "selected_time_filter"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->G:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    .line 270
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->G:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    if-nez v0, :cond_83

    .line 271
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->ALL_TIME:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->G:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    .line 274
    :cond_83
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->F:Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    sget-object v1, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;->CHANNEL:Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    if-ne v0, v1, :cond_90

    .line 275
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->h()V

    .line 279
    :cond_8c
    :goto_8c
    return-void

    .line 260
    :cond_8d
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->F:Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    goto :goto_52

    .line 276
    :cond_90
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->F:Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    sget-object v1, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;->VIDEO:Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    if-ne v0, v1, :cond_8c

    .line 277
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity;->g()V

    goto :goto_8c
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter

    .prologue
    .line 352
    return-void
.end method
