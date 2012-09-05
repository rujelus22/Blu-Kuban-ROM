.class public Lcom/sprint/w/installer/psi/SearchActivity;
.super Lcom/sprint/w/installer/psi/BaseActivity;
.source "SearchActivity.java"


# static fields
.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"


# instance fields
.field mHandler:Landroid/os/Handler;

.field mProgress:Landroid/widget/ProgressBar;

.field mQuery:Ljava/lang/String;

.field mSearchDesc:Landroid/widget/TextView;

.field mServicePackListAdapter:Lcom/sprint/w/installer/psi/ServicePackListAdapter;

.field mServicePacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/psi/ServicePack;",
            ">;"
        }
    .end annotation
.end field

.field mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sprint/w/installer/psi/BaseActivity;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/psi/SearchActivity;->mHandler:Landroid/os/Handler;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/w/installer/psi/SearchActivity;->mServicePackListAdapter:Lcom/sprint/w/installer/psi/ServicePackListAdapter;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/psi/SearchActivity;->mServicePacks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public handleIntent(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const v5, 0x7f060013

    .line 64
    const-string v3, "title"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, title:Ljava/lang/String;
    if-nez v1, :cond_12

    .line 66
    const v3, 0x7f06000a

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/psi/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    :cond_12
    iget-object v3, p0, Lcom/sprint/w/installer/psi/SearchActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v3, p0, Lcom/sprint/w/installer/psi/SearchActivity;->mProgress:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 71
    iget-object v3, p0, Lcom/sprint/w/installer/psi/SearchActivity;->mProgress:Landroid/widget/ProgressBar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.SEARCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 75
    iget-object v3, p0, Lcom/sprint/w/installer/psi/SearchActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 76
    iget-object v3, p0, Lcom/sprint/w/installer/psi/SearchActivity;->mSearchDesc:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "query"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sprint/w/installer/psi/SearchActivity;->mQuery:Ljava/lang/String;

    .line 78
    iget-object v3, p0, Lcom/sprint/w/installer/psi/SearchActivity;->mQuery:Ljava/lang/String;

    if-eqz v3, :cond_54

    .line 79
    iget-object v3, p0, Lcom/sprint/w/installer/psi/SearchActivity;->mQuery:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/psi/SearchActivity;->search(Ljava/lang/String;)V

    .line 92
    :cond_54
    :goto_54
    return-void

    .line 81
    :cond_55
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 82
    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 83
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_54

    .line 84
    const-string v3, "query"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sprint/w/installer/psi/SearchActivity;->mQuery:Ljava/lang/String;

    .line 85
    iget-object v3, p0, Lcom/sprint/w/installer/psi/SearchActivity;->mQuery:Ljava/lang/String;

    if-eqz v3, :cond_54

    .line 86
    iget-object v3, p0, Lcom/sprint/w/installer/psi/SearchActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 87
    iget-object v3, p0, Lcom/sprint/w/installer/psi/SearchActivity;->mSearchDesc:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v3, p0, Lcom/sprint/w/installer/psi/SearchActivity;->mQuery:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/psi/SearchActivity;->search(Ljava/lang/String;)V

    goto :goto_54
.end method

.method public loadComplete()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 141
    iget-object v2, p0, Lcom/sprint/w/installer/psi/SearchActivity;->mServicePacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 142
    iget-object v2, p0, Lcom/sprint/w/installer/psi/SearchActivity;->mSearchDesc:Landroid/widget/TextView;

    const v3, 0x7f060017

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/psi/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sprint/w/installer/psi/SearchActivity;->mQuery:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :goto_20
    const v2, 0x7f0c0015

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/psi/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 148
    .local v0, lv:Landroid/widget/ListView;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v1, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/psi/Listable;>;"
    iget-object v2, p0, Lcom/sprint/w/installer/psi/SearchActivity;->mServicePacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 151
    new-instance v2, Lcom/sprint/w/installer/psi/ServicePackListAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lcom/sprint/w/installer/psi/ServicePackListAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/sprint/w/installer/psi/SearchActivity;->mServicePackListAdapter:Lcom/sprint/w/installer/psi/ServicePackListAdapter;

    .line 152
    iget-object v2, p0, Lcom/sprint/w/installer/psi/SearchActivity;->mServicePackListAdapter:Lcom/sprint/w/installer/psi/ServicePackListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    new-instance v2, Lcom/sprint/w/installer/psi/PackOnItemClickListener;

    const-class v3, Lcom/sprint/w/installer/psi/SearchActivity;

    invoke-direct {v2, v3}, Lcom/sprint/w/installer/psi/PackOnItemClickListener;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 154
    iget-object v2, p0, Lcom/sprint/w/installer/psi/SearchActivity;->mProgress:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 155
    return-void

    .line 144
    .end local v0           #lv:Landroid/widget/ListView;
    .end local v1           #objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/psi/Listable;>;"
    :cond_52
    iget-object v2, p0, Lcom/sprint/w/installer/psi/SearchActivity;->mSearchDesc:Landroid/widget/TextView;

    const v3, 0x7f060016

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/psi/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sprint/w/installer/psi/SearchActivity;->mQuery:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/sprint/w/installer/psi/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 164
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/sprint/w/installer/psi/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/psi/SearchActivity;->setContentView(I)V

    .line 44
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/psi/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/w/installer/psi/SearchActivity;->mTitle:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0c0008

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/psi/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sprint/w/installer/psi/SearchActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 46
    const v0, 0x7f0c005c

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/psi/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/w/installer/psi/SearchActivity;->mSearchDesc:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0c000c

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/psi/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sprint/w/installer/psi/SearchActivity$1;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/psi/SearchActivity$1;-><init>(Lcom/sprint/w/installer/psi/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/psi/SearchActivity;->handleIntent(Landroid/content/Intent;)V

    .line 55
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/psi/SearchActivity;->setIntent(Landroid/content/Intent;)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/psi/SearchActivity;->handleIntent(Landroid/content/Intent;)V

    .line 61
    return-void
.end method

.method protected retryLastAction()V
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sprint/w/installer/psi/SearchActivity;->mQuery:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/psi/SearchActivity;->search(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method search(Ljava/lang/String;)V
    .registers 8
    .parameter "key"

    .prologue
    const/4 v5, 0x0

    .line 96
    new-instance v1, Landroid/provider/SearchRecentSuggestions;

    const-string v3, "com.sprint.w.installer.SuggestProvider"

    const/4 v4, 0x1

    invoke-direct {v1, p0, v3, v4}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 97
    .local v1, sugg:Landroid/provider/SearchRecentSuggestions;
    invoke-virtual {v1, p1, v5}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-boolean v3, p0, Lcom/sprint/w/installer/psi/SearchActivity;->sIgnoreNoMobileData:Z

    if-nez v3, :cond_25

    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/SearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sprint/w/installer/util/Util;->isMobileNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 100
    iget-object v3, p0, Lcom/sprint/w/installer/psi/SearchActivity;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sprint/w/installer/psi/SearchActivity$2;

    invoke-direct {v4, p0}, Lcom/sprint/w/installer/psi/SearchActivity$2;-><init>(Lcom/sprint/w/installer/psi/SearchActivity;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    :goto_24
    return-void

    .line 111
    :cond_25
    new-instance v3, Lcom/sprint/w/installer/psi/ServicePackListAdapter;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v3, p0, v4, v5}, Lcom/sprint/w/installer/psi/ServicePackListAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/sprint/w/installer/psi/SearchActivity;->mServicePackListAdapter:Lcom/sprint/w/installer/psi/ServicePackListAdapter;

    .line 112
    const v3, 0x7f0c0015

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/psi/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 113
    .local v0, lv:Landroid/widget/ListView;
    iget-object v3, p0, Lcom/sprint/w/installer/psi/SearchActivity;->mServicePackListAdapter:Lcom/sprint/w/installer/psi/ServicePackListAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    new-instance v2, Lcom/sprint/w/installer/psi/SearchActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/sprint/w/installer/psi/SearchActivity$3;-><init>(Lcom/sprint/w/installer/psi/SearchActivity;Ljava/lang/String;)V

    .line 136
    .local v2, t:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_24
.end method
