.class public Lcom/vlingo/client/car/CarHelpScreen;
.super Lcom/vlingo/client/help/wcis/WhatCanISayScreen;
.source "CarHelpScreen.java"


# instance fields
.field private inIUXMode:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/car/CarHelpScreen;->inIUXMode:Z

    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/car/CarHelpScreen;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vlingo/client/car/CarHelpScreen;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vlingo/client/car/CarHelpScreen;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vlingo/client/car/CarHelpScreen;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vlingo/client/car/CarHelpScreen;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vlingo/client/car/CarHelpScreen;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vlingo/client/car/CarHelpScreen;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vlingo/client/car/CarHelpScreen;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vlingo/client/car/CarHelpScreen;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vlingo/client/car/CarHelpScreen;->items:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected addItems()V
    .registers 16

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/vlingo/client/car/CarHelpScreen;->inIUXMode:Z

    if-nez v0, :cond_ee

    .line 112
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarHelpScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090449

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/CarHelpScreen;->addSubHeading(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarHelpScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09044d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vlingo/client/car/CarHelpScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09044e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/vlingo/client/car/CarHelpHowToUseScreen;

    invoke-virtual {p0, v0, v1, v2}, Lcom/vlingo/client/car/CarHelpScreen;->addInfoItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 115
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarHelpScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090464

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vlingo/client/car/CarHelpScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090465

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/vlingo/client/car/CarHelpWakeUpScreen;

    invoke-virtual {p0, v0, v1, v2}, Lcom/vlingo/client/car/CarHelpScreen;->addInfoItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 116
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_e0

    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isChineseBuild()Z

    move-result v0

    if-nez v0, :cond_e0

    .line 117
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "client_config_tutorial_link"

    invoke-virtual {p0}, Lcom/vlingo/client/car/CarHelpScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vlingo/client/ClientConfiguration;->getLanguageSpecificSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 120
    .local v10, intent:Landroid/content/Intent;
    const/high16 v0, 0x1000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarHelpScreen;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 122
    .local v12, pm:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    invoke-virtual {v12, v10, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 123
    .local v8, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c7

    .line 124
    const/4 v9, 0x0

    .local v9, i:I
    :goto_87
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_c7

    .line 125
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 126
    .local v13, ri:Landroid/content/pm/ResolveInfo;
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 128
    .local v11, label:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarHelpScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 129
    .local v14, youtubeApp:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 130
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 124
    :cond_c4
    add-int/lit8 v9, v9, 0x1

    goto :goto_87

    .line 134
    .end local v9           #i:I
    .end local v11           #label:Ljava/lang/CharSequence;
    .end local v13           #ri:Landroid/content/pm/ResolveInfo;
    .end local v14           #youtubeApp:Ljava/lang/String;
    :cond_c7
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarHelpScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090460

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vlingo/client/car/CarHelpScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090461

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v10}, Lcom/vlingo/client/car/CarHelpScreen;->addIntentItem(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 136
    .end local v8           #appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10           #intent:Landroid/content/Intent;
    .end local v12           #pm:Landroid/content/pm/PackageManager;
    :cond_e0
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarHelpScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090446

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/CarHelpScreen;->addSubHeading(Ljava/lang/String;)V

    .line 139
    :cond_ee
    const v1, 0x7f0902bc

    const v2, 0x7f09008f

    const v3, 0x7f0201c7

    const v4, 0x7f090463

    const v5, 0x7f0200dc

    const v6, 0x7f070014

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vlingo/client/car/CarHelpScreen;->addItem(IIIIII)V

    .line 146
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1e3

    .line 147
    const v1, 0x7f090156

    const v2, 0x7f0900a5

    const v3, 0x7f0201c0

    const v4, 0x7f09045a

    const v5, 0x7f0200e1

    const v6, 0x7f070015

    const v7, 0x7f09017f

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/vlingo/client/car/CarHelpScreen;->addItem(IIIIIII)V

    .line 165
    :goto_125
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/vlingo/client/ClientConfiguration;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_143

    .line 166
    const v1, 0x7f09009d

    const v2, 0x7f09009e

    const v3, 0x7f0201be

    const v4, 0x7f090456

    const v5, 0x7f0200e3

    const v6, 0x7f070026

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vlingo/client/car/CarHelpScreen;->addItem(IIIIII)V

    .line 174
    :cond_143
    const v1, 0x7f09009b

    const v2, 0x7f09009c

    const v3, 0x7f0201c1

    const v4, 0x7f090183

    const v5, 0x7f0200e2

    const v6, 0x7f07001a

    const v7, 0x7f090185

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/vlingo/client/car/CarHelpScreen;->addItem(IIIIIII)V

    .line 182
    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isGaudiPhone()Z

    move-result v0

    if-nez v0, :cond_17e

    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isEpic2Phone()Z

    move-result v0

    if-nez v0, :cond_17e

    .line 183
    const v1, 0x7f090099

    const v2, 0x7f09009a

    const v3, 0x7f0201bf

    const v4, 0x7f090453

    const v5, 0x7f0200e0

    const v6, 0x7f070025

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vlingo/client/car/CarHelpScreen;->addItem(IIIIII)V

    .line 191
    :cond_17e
    const v1, 0x7f090090

    const v2, 0x7f090091

    const v3, 0x7f0201bb

    const v4, 0x7f09017c

    const v5, 0x7f0200dd

    const v6, 0x7f07001f

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vlingo/client/car/CarHelpScreen;->addItem(IIIIII)V

    .line 198
    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isChineseBuild()Z

    move-result v0

    if-eqz v0, :cond_1fb

    .line 199
    const v1, 0x7f090093

    const v2, 0x7f090095

    const v3, 0x7f0201bd

    const v4, 0x7f090466

    const v5, 0x7f0200df

    const v6, 0x7f07001d

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vlingo/client/car/CarHelpScreen;->addItem(IIIIII)V

    .line 215
    :goto_1b0
    const v1, 0x7f0902c6

    const v2, 0x7f0900a2

    const v3, 0x7f0201c4

    const v4, 0x7f090458

    const v5, 0x7f0200e5

    const v6, 0x7f070027

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vlingo/client/car/CarHelpScreen;->addItem(IIIIII)V

    .line 222
    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isChineseBuild()Z

    move-result v0

    if-eqz v0, :cond_212

    .line 223
    const v1, 0x7f0902c7

    const v2, 0x7f0900a3

    const v3, 0x7f0201c5

    const v4, 0x7f090459

    const v5, 0x7f0200e6

    const v6, 0x7f070017

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vlingo/client/car/CarHelpScreen;->addItem(IIIIII)V

    .line 239
    :goto_1e2
    return-void

    .line 156
    :cond_1e3
    const v1, 0x7f090156

    const v2, 0x7f0900a5

    const v3, 0x7f0201c0

    const v4, 0x7f09045a

    const v5, 0x7f0200e1

    const v6, 0x7f070015

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vlingo/client/car/CarHelpScreen;->addItem(IIIIII)V

    goto/16 :goto_125

    .line 207
    :cond_1fb
    const v1, 0x7f090093

    const v2, 0x7f090094

    const v3, 0x7f0201bd

    const v4, 0x7f090466

    const v5, 0x7f0200df

    const v6, 0x7f07001c

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vlingo/client/car/CarHelpScreen;->addItem(IIIIII)V

    goto :goto_1b0

    .line 231
    :cond_212
    const v1, 0x7f0902c7

    const v2, 0x7f0900a3

    const v3, 0x7f0201c5

    const v4, 0x7f090459

    const v5, 0x7f0200e6

    const v6, 0x7f070016

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vlingo/client/car/CarHelpScreen;->addItem(IIIIII)V

    goto :goto_1e2
.end method

.method protected init()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 44
    const v5, 0x7f03006e

    invoke-virtual {p0, v5}, Lcom/vlingo/client/car/CarHelpScreen;->setContentView(I)V

    .line 45
    const v5, 0x7f0901c9

    invoke-virtual {p0, v5}, Lcom/vlingo/client/car/CarHelpScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/vlingo/client/car/CarHelpScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarHelpScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "wycs.show.done"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/vlingo/client/car/CarHelpScreen;->inIUXMode:Z

    .line 48
    iget-boolean v5, p0, Lcom/vlingo/client/car/CarHelpScreen;->inIUXMode:Z

    if-eqz v5, :cond_6d

    .line 49
    const v5, 0x7f0f0179

    invoke-virtual {p0, v5}, Lcom/vlingo/client/car/CarHelpScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 50
    .local v1, btnContainer:Landroid/view/ViewGroup;
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 51
    const v5, 0x7f0f010b

    invoke-virtual {p0, v5}, Lcom/vlingo/client/car/CarHelpScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 52
    .local v2, doneBtn:Landroid/widget/Button;
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 53
    const v5, 0x7f0f017a

    invoke-virtual {p0, v5}, Lcom/vlingo/client/car/CarHelpScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #doneBtn:Landroid/widget/Button;
    check-cast v2, Landroid/widget/Button;

    .line 54
    .restart local v2       #doneBtn:Landroid/widget/Button;
    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 55
    new-instance v5, Lcom/vlingo/client/car/CarHelpScreen$1;

    invoke-direct {v5, p0}, Lcom/vlingo/client/car/CarHelpScreen$1;-><init>(Lcom/vlingo/client/car/CarHelpScreen;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v5, 0x7f0f0138

    invoke-virtual {p0, v5}, Lcom/vlingo/client/car/CarHelpScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 65
    .local v4, previousBtn:Landroid/widget/Button;
    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 66
    new-instance v5, Lcom/vlingo/client/car/CarHelpScreen$2;

    invoke-direct {v5, p0}, Lcom/vlingo/client/car/CarHelpScreen$2;-><init>(Lcom/vlingo/client/car/CarHelpScreen;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v5, 0x7f090446

    invoke-virtual {p0, v5}, Lcom/vlingo/client/car/CarHelpScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/vlingo/client/car/CarHelpScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    .end local v1           #btnContainer:Landroid/view/ViewGroup;
    .end local v2           #doneBtn:Landroid/widget/Button;
    .end local v4           #previousBtn:Landroid/widget/Button;
    :cond_6d
    const v5, 0x7f0f017b

    invoke-virtual {p0, v5}, Lcom/vlingo/client/car/CarHelpScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 76
    .local v3, lv:Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarHelpScreen;->addItems()V

    .line 78
    new-instance v0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$RowAdapter;

    invoke-direct {v0, p0}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$RowAdapter;-><init>(Lcom/vlingo/client/help/wcis/WhatCanISayScreen;)V

    .line 79
    .local v0, adapter:Lcom/vlingo/client/help/wcis/WhatCanISayScreen$RowAdapter;
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    new-instance v5, Lcom/vlingo/client/car/CarHelpScreen$3;

    invoke-direct {v5, p0}, Lcom/vlingo/client/car/CarHelpScreen$3;-><init>(Lcom/vlingo/client/car/CarHelpScreen;)V

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 106
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->onCreate(Landroid/os/Bundle;)V

    .line 41
    return-void
.end method
