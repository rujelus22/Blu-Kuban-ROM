.class public abstract Lcom/vlingo/client/ui/SimpleIconListScreen;
.super Lcom/vlingo/client/ui/SimpleListScreen;
.source "SimpleIconListScreen.java"


# instance fields
.field protected m_listItemResource:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/vlingo/client/ui/SimpleListScreen;-><init>()V

    .line 15
    const v0, 0x7f03005b

    iput v0, p0, Lcom/vlingo/client/ui/SimpleIconListScreen;->m_listItemResource:I

    return-void
.end method


# virtual methods
.method protected addListItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V
    .registers 11
    .parameter "title"
    .parameter "description"
    .parameter "iconResource"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p4, activityToStart:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/vlingo/client/ui/SimpleIconListScreen;->addListItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method protected addListItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V
    .registers 10
    .parameter "title"
    .parameter "description"
    .parameter "iconResource"
    .parameter
    .parameter "listItemParam"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p4, activityToStart:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    .local v0, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "line1"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v2, "line2"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v2, "icon1"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v2, p0, Lcom/vlingo/client/ui/SimpleIconListScreen;->m_list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 39
    .local v1, target:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "activity"

    invoke-virtual {v1, v2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v2, "url"

    invoke-virtual {v1, v2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v2, p0, Lcom/vlingo/client/ui/SimpleIconListScreen;->m_targets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method protected initAdapter()Landroid/widget/SimpleAdapter;
    .registers 8

    .prologue
    const/4 v6, 0x3

    .line 26
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/vlingo/client/ui/SimpleIconListScreen;->m_list:Ljava/util/ArrayList;

    iget v3, p0, Lcom/vlingo/client/ui/SimpleIconListScreen;->m_listItemResource:I

    new-array v4, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "icon1"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "line1"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "line2"

    aput-object v5, v4, v1

    new-array v5, v6, [I

    fill-array-data v5, :array_22

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-object v0

    :array_22
    .array-data 0x4
        0x7t 0x0t 0x2t 0x1t
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method
