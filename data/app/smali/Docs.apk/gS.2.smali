.class public LgS;
.super Lpx;
.source "HomeScreenActivity.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/HomeScreenActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/docs/app/HomeScreenActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, LgS;->a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

    invoke-direct {p0}, Lpx;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/docs/app/HomeScreenActivity;LgK;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 183
    invoke-direct {p0, p1}, LgS;-><init>(Lcom/google/android/apps/docs/app/HomeScreenActivity;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x7

    const/4 v2, 0x0

    .line 191
    iget-object v0, p0, LgS;->a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhq;

    array-length v3, v0

    move v1, v2

    :goto_e
    if-ge v1, v3, :cond_8a

    aget-object v4, v0, v1

    .line 194
    sget-object v5, Lhs;->b:Lhs;

    invoke-virtual {v4, v5}, Lhq;->a(Lhs;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 191
    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 198
    :cond_1d
    new-instance v5, LgP;

    invoke-virtual {v4}, Lhq;->a()Lnk;

    move-result-object v6

    invoke-virtual {v4}, Lhq;->b()I

    move-result v7

    invoke-virtual {v4}, Lhq;->a()I

    move-result v8

    invoke-virtual {v4}, Lhq;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v7, v8, v4}, LgP;-><init>(Lnk;IILjava/lang/String;)V

    .line 202
    new-instance v4, Landroid/widget/Button;

    iget-object v6, p0, LgS;->a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

    const/4 v7, 0x0

    sget v8, LcZ;->QuickActionsMenu_IconEntry:I

    invoke-direct {v4, v6, v7, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 205
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 206
    iget-object v6, v5, LgP;->a:Lnk;

    invoke-static {v6}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a(Lnk;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setId(I)V

    .line 207
    iget-object v6, p0, LgS;->a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

    iget v7, v5, LgP;->a:I

    invoke-virtual {v6, v7}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 208
    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 212
    const/4 v6, 0x2

    const/high16 v7, 0x4130

    invoke-virtual {v4, v6, v7}, Landroid/widget/Button;->setTextSize(IF)V

    .line 213
    iget-object v6, p0, LgS;->a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

    invoke-virtual {v6}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, LcR;->quick_action_text_color_selector:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 214
    sget v6, LcR;->state_selector_background:I

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 215
    const/16 v6, 0x46

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setMinWidth(I)V

    .line 216
    invoke-virtual {v4}, Landroid/widget/Button;->getPaddingTop()I

    move-result v6

    invoke-virtual {v4}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v4, v9, v6, v9, v7}, Landroid/widget/Button;->setPadding(IIII)V

    .line 217
    iget v5, v5, LgP;->b:I

    invoke-virtual {v4, v2, v5, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 218
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setGravity(I)V

    .line 219
    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1a

    .line 221
    :cond_8a
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, LgS;->a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->onClick(Landroid/view/View;)V

    .line 187
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, LgS;->a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a(Lcom/google/android/apps/docs/app/HomeScreenActivity;)Z

    move-result v0

    return v0
.end method
