.class public Lcom/google/android/finsky/activities/ContentFilterActivity;
.super Landroid/app/Activity;
.source "ContentFilterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/finsky/layout/ButtonBar$ClickListener;


# instance fields
.field private mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

.field private final mCheckables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckboxesView:Landroid/widget/LinearLayout;

.field private mLevel:Lcom/google/android/finsky/config/ContentLevel;

.field private mMoreInfoView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mCheckables:Ljava/util/List;

    return-void
.end method

.method public static getLabel(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "level"

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 132
    .local v0, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_3a

    .line 146
    const/4 v1, 0x0

    :goto_8
    return-object v1

    .line 134
    :pswitch_9
    const v1, 0x7f0701b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 136
    :pswitch_11
    const v1, 0x7f0701b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 138
    :pswitch_19
    const v1, 0x7f0701b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 140
    :pswitch_21
    const v1, 0x7f0701b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 142
    :pswitch_29
    const v1, 0x7f0701b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 144
    :pswitch_31
    const v1, 0x7f0701b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 132
    nop

    :pswitch_data_3a
    .packed-switch -0x1
        :pswitch_9
        :pswitch_11
        :pswitch_19
        :pswitch_21
        :pswitch_29
        :pswitch_31
    .end packed-switch
.end method

.method private setupCheckbox(Landroid/view/LayoutInflater;Lcom/google/android/finsky/config/ContentLevel;II)V
    .registers 11
    .parameter "layoutInflater"
    .parameter "level"
    .parameter "checkboxId"
    .parameter "stringResourceId"

    .prologue
    .line 71
    const v3, 0x1090010

    iget-object v4, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mCheckboxesView:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 73
    .local v1, row:Landroid/view/View;
    const v3, 0x1020014

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 74
    .local v2, rowText:Landroid/widget/TextView;
    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(I)V

    .line 75
    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v1

    .line 78
    check-cast v0, Landroid/widget/Checkable;

    .line 79
    .local v0, checkable:Landroid/widget/Checkable;
    iget-object v3, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:Lcom/google/android/finsky/config/ContentLevel;

    invoke-virtual {v3, p2}, Lcom/google/android/finsky/config/ContentLevel;->encompasses(Lcom/google/android/finsky/config/ContentLevel;)Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 82
    invoke-virtual {v1, p3}, Landroid/view/View;->setId(I)V

    .line 83
    iget-object v3, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mCheckables:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v3, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mCheckboxesView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 85
    return-void
.end method

.method private setupViews()V
    .registers 7

    .prologue
    .line 88
    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mCheckables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 89
    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mCheckboxesView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 91
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 92
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget-object v2, Lcom/google/android/finsky/config/ContentLevel;->EVERYONE:Lcom/google/android/finsky/config/ContentLevel;

    const v3, 0x7f080002

    const v4, 0x7f0701b2

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setupCheckbox(Landroid/view/LayoutInflater;Lcom/google/android/finsky/config/ContentLevel;II)V

    .line 94
    sget-object v2, Lcom/google/android/finsky/config/ContentLevel;->LOW_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    const v3, 0x7f080003

    const v4, 0x7f0701b3

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setupCheckbox(Landroid/view/LayoutInflater;Lcom/google/android/finsky/config/ContentLevel;II)V

    .line 96
    sget-object v2, Lcom/google/android/finsky/config/ContentLevel;->MEDIUM_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    const v3, 0x7f080004

    const v4, 0x7f0701b4

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setupCheckbox(Landroid/view/LayoutInflater;Lcom/google/android/finsky/config/ContentLevel;II)V

    .line 98
    sget-object v2, Lcom/google/android/finsky/config/ContentLevel;->HIGH_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    const v3, 0x7f080005

    const v4, 0x7f0701b5

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setupCheckbox(Landroid/view/LayoutInflater;Lcom/google/android/finsky/config/ContentLevel;II)V

    .line 100
    sget-object v2, Lcom/google/android/finsky/config/ContentLevel;->SHOW_ALL:Lcom/google/android/finsky/config/ContentLevel;

    const v3, 0x7f080006

    const v4, 0x7f0701b6

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setupCheckbox(Landroid/view/LayoutInflater;Lcom/google/android/finsky/config/ContentLevel;II)V

    .line 104
    const-string v2, "%s <a href=\'%s\'>%s</a>"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f0701b7

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/ContentFilterActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/google/android/finsky/config/G;->contentFilterInfoUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const v5, 0x7f0701b8

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/ContentFilterActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, moreInfoText:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mMoreInfoView:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mMoreInfoView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 111
    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const v3, 0x7f0701ba

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonTitle(I)V

    .line 112
    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const v3, 0x7f0701bb

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/ButtonBar;->setNegativeButtonTitle(I)V

    .line 113
    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {v2, p0}, Lcom/google/android/finsky/layout/ButtonBar;->setClickListener(Lcom/google/android/finsky/layout/ButtonBar$ClickListener;)V

    .line 114
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "view"

    .prologue
    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/config/ContentLevel;

    iput-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:Lcom/google/android/finsky/config/ContentLevel;

    .line 168
    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mCheckables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, checkableRow:Landroid/view/View;
    move-object v2, v0

    .line 169
    check-cast v2, Landroid/widget/Checkable;

    iget-object v4, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:Lcom/google/android/finsky/config/ContentLevel;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/config/ContentLevel;

    invoke-virtual {v4, v3}, Lcom/google/android/finsky/config/ContentLevel;->encompasses(Lcom/google/android/finsky/config/ContentLevel;)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_e

    .line 172
    .end local v0           #checkableRow:Landroid/view/View;
    :cond_2d
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    const-string v3, "settings"

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contentFilter?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:Lcom/google/android/finsky/config/ContentLevel;

    invoke-virtual {v6}, Lcom/google/android/finsky/config/ContentLevel;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f04002a

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setContentView(I)V

    .line 54
    if-nez p1, :cond_3a

    .line 55
    invoke-static {p0}, Lcom/google/android/finsky/config/ContentLevel;->importFromSettings(Landroid/content/Context;)Lcom/google/android/finsky/config/ContentLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:Lcom/google/android/finsky/config/ContentLevel;

    .line 61
    :goto_11
    const v0, 0x7f08007f

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mCheckboxesView:Landroid/widget/LinearLayout;

    .line 62
    const v0, 0x7f080080

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mMoreInfoView:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/ButtonBar;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    .line 65
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setupViews()V

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setResult(I)V

    .line 67
    return-void

    .line 57
    :cond_3a
    const-string v0, "level"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/finsky/config/ContentLevel;->convertFromLegacyValue(I)Lcom/google/android/finsky/config/ContentLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:Lcom/google/android/finsky/config/ContentLevel;

    goto :goto_11
.end method

.method public onNegativeButtonClick()V
    .registers 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->finish()V

    .line 163
    return-void
.end method

.method public onPositiveButtonClick()V
    .registers 5

    .prologue
    .line 151
    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->contentFilterLevel:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 152
    .local v0, currentFilterLevel:I
    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:Lcom/google/android/finsky/config/ContentLevel;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/ContentLevel;->getValue()I

    move-result v1

    .line 153
    .local v1, selectedFilterLevel:I
    if-eq v0, v1, :cond_21

    .line 154
    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->contentFilterLevel:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 155
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setResult(I)V

    .line 157
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->finish()V

    .line 158
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 119
    const-string v0, "level"

    iget-object v1, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:Lcom/google/android/finsky/config/ContentLevel;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/ContentLevel;->getValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    return-void
.end method
