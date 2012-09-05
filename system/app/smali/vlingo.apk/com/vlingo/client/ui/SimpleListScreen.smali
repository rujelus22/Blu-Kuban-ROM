.class public abstract Lcom/vlingo/client/ui/SimpleListScreen;
.super Landroid/app/ListActivity;
.source "SimpleListScreen.java"


# static fields
.field public static final EXTRA_LIST_PARAM:Ljava/lang/String; = "listitemparam"


# instance fields
.field protected m_adapter:Landroid/widget/SimpleAdapter;

.field private m_forwardToNextActivity:Z

.field protected m_list:Ljava/util/ArrayList;
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

.field protected m_targets:Ljava/util/ArrayList;
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


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/ui/SimpleListScreen;->m_list:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/ui/SimpleListScreen;->m_targets:Ljava/util/ArrayList;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/ui/SimpleListScreen;->m_forwardToNextActivity:Z

    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/ui/SimpleListScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/vlingo/client/ui/SimpleListScreen;->m_forwardToNextActivity:Z

    return v0
.end method

.method private addListItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 8
    .parameter "title"
    .parameter "description"
    .parameter
    .parameter "listItemParam"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    .local p3, activityToStart:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v0, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "line1"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v2, "line2"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v2, p0, Lcom/vlingo/client/ui/SimpleListScreen;->m_list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v1, target:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "activity"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v2, "url"

    invoke-virtual {v1, v2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v2, p0, Lcom/vlingo/client/ui/SimpleListScreen;->m_targets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method


# virtual methods
.method protected addListItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .registers 5
    .parameter "title"
    .parameter "description"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p3, activityToStart:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vlingo/client/ui/SimpleListScreen;->addListItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method protected addListItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "title"
    .parameter "description"
    .parameter "urlToOpen"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/vlingo/client/ui/SimpleListScreen;->addListItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method protected initAdapter()Landroid/widget/SimpleAdapter;
    .registers 8

    .prologue
    const/4 v6, 0x2

    .line 71
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/vlingo/client/ui/SimpleListScreen;->m_list:Ljava/util/ArrayList;

    const v3, 0x1090004

    new-array v4, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "line1"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "line2"

    aput-object v5, v4, v1

    new-array v5, v6, [I

    fill-array-data v5, :array_1e

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-object v0

    :array_1e
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/vlingo/client/ui/SimpleListScreen;->initAdapter()Landroid/widget/SimpleAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/ui/SimpleListScreen;->m_adapter:Landroid/widget/SimpleAdapter;

    .line 38
    invoke-virtual {p0}, Lcom/vlingo/client/ui/SimpleListScreen;->onInitListItems()V

    .line 40
    iget-object v0, p0, Lcom/vlingo/client/ui/SimpleListScreen;->m_adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {p0, v0}, Lcom/vlingo/client/ui/SimpleListScreen;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    invoke-virtual {p0}, Lcom/vlingo/client/ui/SimpleListScreen;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/vlingo/client/ui/SimpleListScreen$1;

    invoke-direct {v1, p0}, Lcom/vlingo/client/ui/SimpleListScreen$1;-><init>(Lcom/vlingo/client/ui/SimpleListScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    return-void
.end method

.method protected abstract onInitListItems()V
.end method

.method protected setForwardToNextActivity(Z)V
    .registers 2
    .parameter "forwardToNextActivity"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/vlingo/client/ui/SimpleListScreen;->m_forwardToNextActivity:Z

    .line 97
    return-void
.end method
