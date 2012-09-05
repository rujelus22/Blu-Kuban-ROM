.class public Lcom/google/android/finsky/activities/ContentFilterActivity;
.super Landroid/app/Activity;
.source "ContentFilterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mCheckboxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckboxesView:Landroid/widget/LinearLayout;

.field private mLevel:Lcom/google/android/finsky/config/ContentLevel;

.field private mMoreInfoView:Landroid/widget/TextView;

.field private mOkButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mCheckboxes:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/ContentFilterActivity;)Lcom/google/android/finsky/config/ContentLevel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:Lcom/google/android/finsky/config/ContentLevel;

    return-object v0
.end method

.method public static getLabel(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "level"

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 131
    .local v0, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_3a

    .line 145
    const/4 v1, 0x0

    :goto_8
    return-object v1

    .line 133
    :pswitch_9
    const v1, 0x7f070176

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 135
    :pswitch_11
    const v1, 0x7f070177

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 137
    :pswitch_19
    const v1, 0x7f070178

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 139
    :pswitch_21
    const v1, 0x7f070179

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 141
    :pswitch_29
    const v1, 0x7f07017a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 143
    :pswitch_31
    const v1, 0x7f07017b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 131
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

.method private setupCheckbox(Lcom/google/android/finsky/config/ContentLevel;II)V
    .registers 6
    .parameter "level"
    .parameter "checkboxResourceId"
    .parameter "stringResourceId"

    .prologue
    .line 67
    iget-object v1, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mCheckboxesView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 68
    .local v0, checkbox:Landroid/widget/CheckBox;
    invoke-virtual {v0, p3}, Landroid/widget/CheckBox;->setText(I)V

    .line 69
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v1, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:Lcom/google/android/finsky/config/ContentLevel;

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/config/ContentLevel;->encompasses(Lcom/google/android/finsky/config/ContentLevel;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 72
    iget-object v1, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mCheckboxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method private setupViews()V
    .registers 7

    .prologue
    .line 76
    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mCheckboxes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 77
    sget-object v2, Lcom/google/android/finsky/config/ContentLevel;->EVERYONE:Lcom/google/android/finsky/config/ContentLevel;

    const v3, 0x7f08007d

    const v4, 0x7f070177

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setupCheckbox(Lcom/google/android/finsky/config/ContentLevel;II)V

    .line 79
    sget-object v2, Lcom/google/android/finsky/config/ContentLevel;->LOW_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    const v3, 0x7f08007e

    const v4, 0x7f070178

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setupCheckbox(Lcom/google/android/finsky/config/ContentLevel;II)V

    .line 81
    sget-object v2, Lcom/google/android/finsky/config/ContentLevel;->MEDIUM_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    const v3, 0x7f08007f

    const v4, 0x7f070179

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setupCheckbox(Lcom/google/android/finsky/config/ContentLevel;II)V

    .line 83
    sget-object v2, Lcom/google/android/finsky/config/ContentLevel;->HIGH_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    const v3, 0x7f080080

    const v4, 0x7f07017a

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setupCheckbox(Lcom/google/android/finsky/config/ContentLevel;II)V

    .line 85
    sget-object v2, Lcom/google/android/finsky/config/ContentLevel;->SHOW_ALL:Lcom/google/android/finsky/config/ContentLevel;

    const v3, 0x7f080081

    const v4, 0x7f07017b

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setupCheckbox(Lcom/google/android/finsky/config/ContentLevel;II)V

    .line 89
    const-string v2, "%s <a href=\'%s\'>%s</a>"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f07017c

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/ContentFilterActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/google/android/finsky/config/G;->contentFilterInfoUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const v5, 0x7f07017d

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/ContentFilterActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, moreInfoText:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mMoreInfoView:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mMoreInfoView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 96
    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mOkButton:Landroid/widget/Button;

    new-instance v3, Lcom/google/android/finsky/activities/ContentFilterActivity$1;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/ContentFilterActivity$1;-><init>(Lcom/google/android/finsky/activities/ContentFilterActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v2, 0x7f080084

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/ContentFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, cancelButton:Landroid/view/View;
    new-instance v2, Lcom/google/android/finsky/activities/ContentFilterActivity$2;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/activities/ContentFilterActivity$2;-><init>(Lcom/google/android/finsky/activities/ContentFilterActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "view"

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/config/ContentLevel;

    iput-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:Lcom/google/android/finsky/config/ContentLevel;

    .line 151
    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mCheckboxes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 152
    .local v0, checkbox:Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:Lcom/google/android/finsky/config/ContentLevel;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/config/ContentLevel;

    invoke-virtual {v3, v2}, Lcom/google/android/finsky/config/ContentLevel;->encompasses(Lcom/google/android/finsky/config/ContentLevel;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_e

    .line 154
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    :cond_2a
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

    .line 156
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f040025

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setContentView(I)V

    .line 51
    if-nez p1, :cond_3a

    .line 52
    invoke-static {p0}, Lcom/google/android/finsky/config/ContentLevel;->importFromSettings(Landroid/content/Context;)Lcom/google/android/finsky/config/ContentLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:Lcom/google/android/finsky/config/ContentLevel;

    .line 58
    :goto_11
    const v0, 0x7f08007c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mCheckboxesView:Landroid/widget/LinearLayout;

    .line 59
    const v0, 0x7f080082

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mMoreInfoView:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f080083

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mOkButton:Landroid/widget/Button;

    .line 62
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setupViews()V

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setResult(I)V

    .line 64
    return-void

    .line 54
    :cond_3a
    const-string v0, "level"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/finsky/config/ContentLevel;->convertFromLegacyValue(I)Lcom/google/android/finsky/config/ContentLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:Lcom/google/android/finsky/config/ContentLevel;

    goto :goto_11
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 118
    const-string v0, "level"

    iget-object v1, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:Lcom/google/android/finsky/config/ContentLevel;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/ContentLevel;->getValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    return-void
.end method
