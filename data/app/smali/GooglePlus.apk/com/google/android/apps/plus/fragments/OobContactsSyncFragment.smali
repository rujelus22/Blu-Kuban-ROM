.class public Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;
.super Landroid/support/v4/app/Fragment;
.source "OobContactsSyncFragment.java"


# instance fields
.field private mArrowContactsStatsSync:Landroid/widget/ImageView;

.field private mArrowContactsSync:Landroid/widget/ImageView;

.field private mCiclesImage:Landroid/widget/ImageView;

.field private mContactsImage:Landroid/widget/ImageView;

.field private mContactsStatsSyncChoice:Landroid/widget/CheckBox;

.field private mContactsSyncChoice:Landroid/widget/CheckBox;

.field private statsSyncOnly:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->mArrowContactsStatsSync:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->mArrowContactsSync:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->mContactsSyncChoice:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->mContactsStatsSyncChoice:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method public commit()Z
    .registers 7

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 156
    .local v1, activity:Landroid/support/v4/app/FragmentActivity;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "account"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 158
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    iget-boolean v4, p0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->statsSyncOnly:Z

    if-nez v4, :cond_1d

    .line 159
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->mContactsSyncChoice:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    .line 160
    .local v3, syncOn:Z
    invoke-static {v1, v0, v3}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveContactsSyncPreference(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V

    .line 163
    .end local v3           #syncOn:Z
    :cond_1d
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->mContactsStatsSyncChoice:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 164
    .local v2, statsSyncOn:Z
    invoke-static {v1, v0, v2}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveContactsStatsSyncPreference(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V

    .line 166
    if-eqz v2, :cond_2d

    .line 168
    invoke-static {v1, v0}, Lcom/google/android/apps/plus/service/EsService;->disableWipeoutStats(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)I

    .line 173
    :goto_2b
    const/4 v4, 0x1

    return v4

    .line 171
    :cond_2d
    invoke-static {v1, v0}, Lcom/google/android/apps/plus/service/EsService;->enableAndPerformWipeoutStats(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)I

    goto :goto_2b
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 20
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 61
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0xe

    if-ge v14, v15, :cond_102

    const/4 v14, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->statsSyncOnly:Z

    .line 63
    const v14, 0x7f030075

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v1, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 66
    .local v13, view:Landroid/view/View;
    const v14, 0x7f0900ef

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->mCiclesImage:Landroid/widget/ImageView;

    .line 67
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->mCiclesImage:Landroid/widget/ImageView;

    const v15, 0x7f02008c

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    const v14, 0x7f09016a

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->mContactsImage:Landroid/widget/ImageView;

    .line 70
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->mContactsImage:Landroid/widget/ImageView;

    const v15, 0x7f0201d7

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    const v14, 0x7f09016b

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->mArrowContactsStatsSync:Landroid/widget/ImageView;

    .line 76
    const v14, 0x7f09016c

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->mContactsStatsSyncChoice:Landroid/widget/CheckBox;

    .line 77
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->mContactsStatsSyncChoice:Landroid/widget/CheckBox;

    new-instance v15, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment$1;

    invoke-direct/range {v15 .. v16}, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;)V

    invoke-virtual {v14, v15}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 83
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->mContactsStatsSyncChoice:Landroid/widget/CheckBox;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 85
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->statsSyncOnly:Z

    if-eqz v14, :cond_105

    .line 86
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->mArrowContactsStatsSync:Landroid/widget/ImageView;

    const v15, 0x7f0201d6

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    :goto_83
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->statsSyncOnly:Z

    if-eqz v14, :cond_17f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->mContactsStatsSyncChoice:Landroid/widget/CheckBox;

    .line 128
    .local v3, checkBoxDescription:Landroid/widget/TextView;
    :goto_8d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 129
    .local v10, resources:Landroid/content/res/Resources;
    const v14, 0x7f080317

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 131
    .local v7, hyperlinkMessage:Ljava/lang/String;
    const v2, 0x7f080316

    .line 133
    .local v2, additionalSummaryResId:I
    new-instance v11, Landroid/text/SpannableString;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-static {v14}, Lcom/google/android/apps/plus/util/AndroidUtils;->hasTelephony(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_18b

    const v14, 0x7f080314

    :goto_af
    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f080316

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 139
    .local v11, s:Landroid/text/SpannableString;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f08046e

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 141
    .local v6, helpUrlParam:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-static {v14, v6}, Lcom/google/android/apps/plus/util/HelpUrl;->getHelpUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 142
    .local v8, link:Landroid/net/Uri;
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 143
    .local v9, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 144
    .local v12, scheme:Ljava/lang/String;
    invoke-static {v11, v9, v12}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    .line 145
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 148
    return-object v13

    .line 61
    .end local v2           #additionalSummaryResId:I
    .end local v3           #checkBoxDescription:Landroid/widget/TextView;
    .end local v6           #helpUrlParam:Ljava/lang/String;
    .end local v7           #hyperlinkMessage:Ljava/lang/String;
    .end local v8           #link:Landroid/net/Uri;
    .end local v9           #pattern:Ljava/util/regex/Pattern;
    .end local v10           #resources:Landroid/content/res/Resources;
    .end local v11           #s:Landroid/text/SpannableString;
    .end local v12           #scheme:Ljava/lang/String;
    .end local v13           #view:Landroid/view/View;
    :cond_102
    const/4 v14, 0x0

    goto/16 :goto_7

    .line 88
    .restart local v13       #view:Landroid/view/View;
    :cond_105
    const v14, 0x7f09016d

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->mArrowContactsSync:Landroid/widget/ImageView;

    .line 89
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->mArrowContactsSync:Landroid/widget/ImageView;

    const v15, 0x7f0201d6

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->mArrowContactsStatsSync:Landroid/widget/ImageView;

    const v15, 0x7f0201d5

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    const v14, 0x7f09016e

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->mContactsSyncChoice:Landroid/widget/CheckBox;

    .line 94
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->mContactsSyncChoice:Landroid/widget/CheckBox;

    new-instance v15, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment$2;

    invoke-direct/range {v15 .. v16}, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment$2;-><init>(Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;)V

    invoke-virtual {v14, v15}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 100
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->mContactsSyncChoice:Landroid/widget/CheckBox;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 102
    new-instance v5, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment$3;-><init>(Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;)V

    .line 108
    .local v5, contactsSyncToggler:Landroid/view/View$OnClickListener;
    const v14, 0x7f09016f

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v14, 0x7f090170

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    new-instance v4, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment$4;-><init>(Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;)V

    .line 119
    .local v4, contactsStatsSyncToggler:Landroid/view/View$OnClickListener;
    const v14, 0x7f090171

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v14, 0x7f090172

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_83

    .line 126
    .end local v4           #contactsStatsSyncToggler:Landroid/view/View$OnClickListener;
    .end local v5           #contactsSyncToggler:Landroid/view/View$OnClickListener;
    :cond_17f
    const v14, 0x7f090172

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object v3, v14

    goto/16 :goto_8d

    .line 133
    .restart local v2       #additionalSummaryResId:I
    .restart local v3       #checkBoxDescription:Landroid/widget/TextView;
    .restart local v7       #hyperlinkMessage:Ljava/lang/String;
    .restart local v10       #resources:Landroid/content/res/Resources;
    :cond_18b
    const v14, 0x7f080315

    goto/16 :goto_af
.end method
