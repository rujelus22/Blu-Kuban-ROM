.class public Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "DiagnosticsListAdapter.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDiagnostics:Lcom/sprint/dsa/diagnostics/Diagnostics;

.field private mGroups:Lcom/sprint/dsa/diagnostics/DiagnosticGroups;

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/dsa/diagnostics/Diagnostic;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sprint/dsa/diagnostics/Diagnostics;Lcom/sprint/dsa/diagnostics/DiagnosticGroups;)V
    .registers 12
    .parameter "activity"
    .parameter "diagnostics"
    .parameter "groups"

    .prologue
    const/4 v5, 0x0

    .line 27
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 20
    iput-object v5, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;->mActivity:Landroid/app/Activity;

    .line 21
    iput-object v5, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;->mDiagnostics:Lcom/sprint/dsa/diagnostics/Diagnostics;

    .line 22
    iput-object v5, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;->mGroups:Lcom/sprint/dsa/diagnostics/DiagnosticGroups;

    .line 24
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;->mMap:Ljava/util/Map;

    .line 28
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;->mActivity:Landroid/app/Activity;

    .line 29
    iput-object p2, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;->mDiagnostics:Lcom/sprint/dsa/diagnostics/Diagnostics;

    .line 30
    iput-object p3, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;->mGroups:Lcom/sprint/dsa/diagnostics/DiagnosticGroups;

    .line 32
    invoke-virtual {p3}, Lcom/sprint/dsa/diagnostics/DiagnosticGroups;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_22

    .line 44
    return-void

    .line 32
    :cond_22
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;

    .line 33
    .local v2, group:Lcom/sprint/dsa/diagnostics/DiagnosticGroup;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/dsa/diagnostics/Diagnostic;>;"
    iget-object v6, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;->mMap:Ljava/util/Map;

    iget-object v7, v2, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->key:Ljava/lang/String;

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const/4 v3, 0x0

    .local v3, i:I
    :goto_35
    invoke-virtual {v2}, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->getCount()I

    move-result v6

    if-ge v3, v6, :cond_1b

    .line 37
    invoke-virtual {v2, v3}, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->getSubKey(I)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, diagKey:Ljava/lang/String;
    invoke-virtual {p2, v1}, Lcom/sprint/dsa/diagnostics/Diagnostics;->getDiagnostic(Ljava/lang/String;)Lcom/sprint/dsa/diagnostics/Diagnostic;

    move-result-object v0

    .line 39
    .local v0, diag:Lcom/sprint/dsa/diagnostics/Diagnostic;
    if-eqz v0, :cond_48

    .line 40
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_35
.end method


# virtual methods
.method public expandGroups(Landroid/widget/ExpandableListView;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 131
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;->getGroupCount()I

    move-result v1

    if-lt v0, v1, :cond_8

    .line 134
    return-void

    .line 132
    :cond_8
    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getChild(II)Ljava/lang/Object;
    .registers 6
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 49
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;->mGroups:Lcom/sprint/dsa/diagnostics/DiagnosticGroups;

    invoke-virtual {v1, p1}, Lcom/sprint/dsa/diagnostics/DiagnosticGroups;->get(I)Lcom/sprint/dsa/diagnostics/DiagnosticGroup;

    move-result-object v0

    .line 50
    .local v0, group:Lcom/sprint/dsa/diagnostics/DiagnosticGroup;
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;->mMap:Ljava/util/Map;

    iget-object v2, v0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getChildId(II)J
    .registers 5
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 55
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;->getDiagnostic(II)Lcom/sprint/dsa/diagnostics/Diagnostic;

    move-result-object v1

    .line 106
    .local v1, diagnostic:Lcom/sprint/dsa/diagnostics/Diagnostic;
    invoke-virtual {v1, p4}, Lcom/sprint/dsa/diagnostics/Diagnostic;->getListView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, childView:Landroid/view/View;
    return-object v0
.end method

.method public getChildrenCount(I)I
    .registers 5
    .parameter "groupPosition"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;

    .line 87
    .local v0, group:Lcom/sprint/dsa/diagnostics/DiagnosticGroup;
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;->mMap:Ljava/util/Map;

    iget-object v2, v0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    return v1
.end method

.method protected getDiagnostic(II)Lcom/sprint/dsa/diagnostics/Diagnostic;
    .registers 8
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;

    .line 124
    .local v1, group:Lcom/sprint/dsa/diagnostics/DiagnosticGroup;
    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;->mMap:Ljava/util/Map;

    iget-object v3, v1, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->key:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/diagnostics/Diagnostic;

    .line 125
    .local v0, diag:Lcom/sprint/dsa/diagnostics/Diagnostic;
    if-nez v0, :cond_43

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No diagnostic: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") ,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    :cond_43
    return-object v0
.end method

.method public getDiagnosticView(Landroid/widget/ExpandableListView;Lcom/sprint/dsa/diagnostics/Diagnostic;)Landroid/view/View;
    .registers 8
    .parameter "listView"
    .parameter "diag"

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, diagView:Landroid/view/View;
    const/4 v2, 0x0

    .line 141
    .local v2, tempView:Landroid/view/View;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getChildCount()I

    move-result v3

    if-lt v1, v3, :cond_a

    .line 149
    :goto_9
    return-object v0

    .line 142
    :cond_a
    invoke-virtual {p1, v1}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 143
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sprint/dsa/diagnostics/Diagnostic;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 144
    move-object v0, v2

    .line 145
    goto :goto_9

    .line 141
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public getGroup(I)Ljava/lang/Object;
    .registers 3
    .parameter "groupPosition"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;->mGroups:Lcom/sprint/dsa/diagnostics/DiagnosticGroups;

    invoke-virtual {v0, p1}, Lcom/sprint/dsa/diagnostics/DiagnosticGroups;->get(I)Lcom/sprint/dsa/diagnostics/DiagnosticGroup;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;->mGroups:Lcom/sprint/dsa/diagnostics/DiagnosticGroups;

    invoke-virtual {v0}, Lcom/sprint/dsa/diagnostics/DiagnosticGroups;->getCount()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .registers 4
    .parameter "groupPosition"

    .prologue
    .line 70
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;

    .line 95
    .local v0, group:Lcom/sprint/dsa/diagnostics/DiagnosticGroup;
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030005

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 96
    .local v1, groupView:Landroid/view/View;
    const v3, 0x7f0b0002

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 97
    .local v2, title:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    return-object v1
.end method

.method protected getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .registers 4
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 9
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 111
    invoke-virtual {p0, p3, p4}, Lcom/sprint/dsa/diagnostics/DiagnosticsListAdapter;->getDiagnostic(II)Lcom/sprint/dsa/diagnostics/Diagnostic;

    move-result-object v0

    .line 112
    .local v0, diagnostic:Lcom/sprint/dsa/diagnostics/Diagnostic;
    invoke-virtual {v0, p2}, Lcom/sprint/dsa/diagnostics/Diagnostic;->onListClick(Landroid/view/View;)Z

    move-result v1

    return v1
.end method
