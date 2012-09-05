.class public Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;
.super Landroid/app/Activity;
.source "EmailAccountListScreen.java"


# static fields
.field public static final EXTRA_AUTO_SHOW_ADD_SCREEN:Ljava/lang/String; = "auto_show_add"


# instance fields
.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field m_accountAdapter:Landroid/widget/SimpleAdapter;

.field m_emailAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/safereader/email/EmailAccount;",
            ">;"
        }
    .end annotation
.end field

.field m_listView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;->list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstance"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;->setContentView(I)V

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f090101

    invoke-virtual {p0, v1}, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f09037e

    invoke-virtual {p0, v1}, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 45
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;->list:Ljava/util/ArrayList;

    const v3, 0x7f03005b

    new-array v4, v7, [Ljava/lang/String;

    const-string v1, "icon1"

    aput-object v1, v4, v6

    const/4 v1, 0x1

    const-string v5, "line1"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "line2"

    aput-object v5, v4, v1

    new-array v5, v7, [I

    fill-array-data v5, :array_9a

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;->m_accountAdapter:Landroid/widget/SimpleAdapter;

    .line 47
    invoke-virtual {p0}, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;->updateList()V

    .line 49
    const v0, 0x7f0f0087

    invoke-virtual {p0, v0}, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;->m_listView:Landroid/widget/ListView;

    .line 50
    iget-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;->m_listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;->m_accountAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    iget-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;->m_listView:Landroid/widget/ListView;

    new-instance v1, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen$1;

    invoke-direct {v1, p0}, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen$1;-><init>(Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 59
    const v0, 0x7f0f0086

    invoke-virtual {p0, v0}, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen$2;

    invoke-direct {v1, p0}, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen$2;-><init>(Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "auto_show_add"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vlingo/client/settings/safereader/EmailAccountProviderSelectionScreen;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;->startActivity(Landroid/content/Intent;)V

    .line 69
    :cond_99
    return-void

    .line 45
    :array_9a
    .array-data 0x4
        0x7t 0x0t 0x2t 0x1t
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 76
    invoke-virtual {p0}, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;->updateList()V

    .line 77
    return-void
.end method

.method updateList()V
    .registers 9

    .prologue
    const v7, 0x7f0f0072

    .line 80
    invoke-static {p0}, Lcom/vlingo/client/safereader/email/EmailAccountManager;->getEmailAccounts(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;->m_emailAccounts:Ljava/util/ArrayList;

    .line 81
    iget-object v5, p0, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 82
    invoke-static {p0}, Lcom/vlingo/client/safereader/email/EmailAccountManager;->getEmailAccounts(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 83
    .local v1, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/safereader/email/EmailAccount;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 84
    .local v4, numAccounts:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v4, :cond_5a

    .line 85
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/safereader/email/EmailAccount;

    .line 86
    .local v0, ac:Lcom/vlingo/client/safereader/email/EmailAccount;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 87
    .local v3, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "line1"

    iget-object v6, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->emailAddress:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v6, "line2"

    invoke-virtual {v0}, Lcom/vlingo/client/safereader/email/EmailAccount;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_52

    const v5, 0x7f090382

    invoke-virtual {p0, v5}, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_3a
    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v5, "icon1"

    invoke-virtual {v0}, Lcom/vlingo/client/safereader/email/EmailAccount;->getImageResourceId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v5, p0, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;->list:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 88
    :cond_52
    const v5, 0x7f090381

    invoke-virtual {p0, v5}, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3a

    .line 92
    .end local v0           #ac:Lcom/vlingo/client/safereader/email/EmailAccount;
    .end local v3           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5a
    iget-object v5, p0, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;->m_accountAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v5}, Landroid/widget/SimpleAdapter;->notifyDataSetInvalidated()V

    .line 93
    iget-object v5, p0, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;->m_emailAccounts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_70

    .line 94
    invoke-virtual {p0, v7}, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 99
    :goto_6f
    return-void

    .line 97
    :cond_70
    invoke-virtual {p0, v7}, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6f
.end method
