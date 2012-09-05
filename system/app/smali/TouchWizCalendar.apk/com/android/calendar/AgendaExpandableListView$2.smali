.class Lcom/android/calendar/AgendaExpandableListView$2;
.super Ljava/lang/Object;
.source "AgendaExpandableListView.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AgendaExpandableListView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaExpandableListView;


# direct methods
.method constructor <init>(Lcom/android/calendar/AgendaExpandableListView;)V
    .registers 2
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/calendar/AgendaExpandableListView$2;->this$0:Lcom/android/calendar/AgendaExpandableListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .registers 12
    .parameter "list"
    .parameter "arg1"
    .parameter "groupPosition"
    .parameter "arg3"

    .prologue
    const/4 v4, 0x0

    .line 122
    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListView$2;->this$0:Lcom/android/calendar/AgendaExpandableListView;

    #getter for: Lcom/android/calendar/AgendaExpandableListView;->mAdapter:Lcom/android/calendar/AgendaExpandableListAdapter;
    invoke-static {v5}, Lcom/android/calendar/AgendaExpandableListView;->access$000(Lcom/android/calendar/AgendaExpandableListView;)Lcom/android/calendar/AgendaExpandableListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/calendar/AgendaExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 123
    .local v0, groupCount:I
    const/4 v3, 0x1

    .line 124
    .local v3, isAllExpanded:Z
    const/4 v2, 0x1

    .line 125
    .local v2, isAllCollapsed:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v0, :cond_21

    .line 126
    if-ne v1, p3, :cond_15

    .line 125
    :goto_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 128
    :cond_15
    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListView$2;->this$0:Lcom/android/calendar/AgendaExpandableListView;

    invoke-virtual {v5, v1}, Lcom/android/calendar/AgendaExpandableListView;->isGroupExpanded(I)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 129
    const/4 v3, 0x0

    goto :goto_12

    .line 131
    :cond_1f
    const/4 v2, 0x0

    goto :goto_12

    .line 134
    :cond_21
    if-eqz v3, :cond_2c

    .line 135
    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListView$2;->this$0:Lcom/android/calendar/AgendaExpandableListView;

    invoke-virtual {v5, p3}, Lcom/android/calendar/AgendaExpandableListView;->isGroupExpanded(I)Z

    move-result v5

    if-nez v5, :cond_41

    const/4 v3, 0x1

    .line 137
    :cond_2c
    :goto_2c
    if-eqz v2, :cond_34

    .line 138
    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListView$2;->this$0:Lcom/android/calendar/AgendaExpandableListView;

    invoke-virtual {v5, p3}, Lcom/android/calendar/AgendaExpandableListView;->isGroupExpanded(I)Z

    move-result v2

    .line 140
    :cond_34
    if-eq v3, v2, :cond_40

    .line 141
    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListView$2;->this$0:Lcom/android/calendar/AgendaExpandableListView;

    #setter for: Lcom/android/calendar/AgendaExpandableListView;->mAllExpanded:Z
    invoke-static {v5, v3}, Lcom/android/calendar/AgendaExpandableListView;->access$202(Lcom/android/calendar/AgendaExpandableListView;Z)Z

    .line 142
    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListView$2;->this$0:Lcom/android/calendar/AgendaExpandableListView;

    #setter for: Lcom/android/calendar/AgendaExpandableListView;->mAllCollapsed:Z
    invoke-static {v5, v2}, Lcom/android/calendar/AgendaExpandableListView;->access$302(Lcom/android/calendar/AgendaExpandableListView;Z)Z

    .line 145
    :cond_40
    return v4

    :cond_41
    move v3, v4

    .line 135
    goto :goto_2c
.end method
