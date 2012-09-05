.class Lcom/android/calendar/AgendaExpandableListView$1;
.super Ljava/lang/Object;
.source "AgendaExpandableListView.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


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
    .line 83
    iput-object p1, p0, Lcom/android/calendar/AgendaExpandableListView$1;->this$0:Lcom/android/calendar/AgendaExpandableListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 22
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 87
    iget-object v11, p0, Lcom/android/calendar/AgendaExpandableListView$1;->this$0:Lcom/android/calendar/AgendaExpandableListView;

    #getter for: Lcom/android/calendar/AgendaExpandableListView;->mAdapter:Lcom/android/calendar/AgendaExpandableListAdapter;
    invoke-static {v11}, Lcom/android/calendar/AgendaExpandableListView;->access$000(Lcom/android/calendar/AgendaExpandableListView;)Lcom/android/calendar/AgendaExpandableListAdapter;

    move-result-object v11

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v11, v0, v1}, Lcom/android/calendar/AgendaExpandableListAdapter;->getEventByPosition(II)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v7

    .line 88
    .local v7, event:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    if-eqz v7, :cond_68

    .line 89
    const-string v11, "AgendaExpandableListView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "event id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, v7, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->id:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-object v11, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v12, v7, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->id:J

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 91
    .local v10, uri:Landroid/net/Uri;
    new-instance v8, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v8, v11, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 93
    .local v8, intent:Landroid/content/Intent;
    iget-wide v2, v7, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    .line 94
    .local v2, begin:J
    iget-wide v5, v7, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->end:J

    .line 95
    .local v5, end:J
    const-wide/16 v11, 0x0

    cmp-long v11, v5, v11

    if-nez v11, :cond_55

    .line 96
    iget-object v11, v7, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->duration:Ljava/lang/String;

    if-eqz v11, :cond_6f

    .line 97
    new-instance v9, Lcom/android/calendar/vcal/pim/vcalendar/Duration;

    invoke-direct {v9}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;-><init>()V

    .line 99
    .local v9, parser:Lcom/android/calendar/vcal/pim/vcalendar/Duration;
    :try_start_4c
    iget-object v11, v7, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->duration:Ljava/lang/String;

    invoke-virtual {v9, v11}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->parse(Ljava/lang/String;)V
    :try_end_51
    .catch Lcom/android/calendar/vcal/pim/vcalendar/DateException; {:try_start_4c .. :try_end_51} :catch_6a

    .line 103
    :goto_51
    invoke-virtual {v9, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->addTo(J)J

    move-result-wide v5

    .line 109
    .end local v9           #parser:Lcom/android/calendar/vcal/pim/vcalendar/Duration;
    :cond_55
    :goto_55
    const-string v11, "beginTime"

    invoke-virtual {v8, v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 110
    const-string v11, "endTime"

    invoke-virtual {v8, v11, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 111
    iget-object v11, p0, Lcom/android/calendar/AgendaExpandableListView$1;->this$0:Lcom/android/calendar/AgendaExpandableListView;

    #getter for: Lcom/android/calendar/AgendaExpandableListView;->mAgendaActivity:Landroid/app/Activity;
    invoke-static {v11}, Lcom/android/calendar/AgendaExpandableListView;->access$100(Lcom/android/calendar/AgendaExpandableListView;)Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 113
    .end local v2           #begin:J
    .end local v5           #end:J
    .end local v8           #intent:Landroid/content/Intent;
    .end local v10           #uri:Landroid/net/Uri;
    :cond_68
    const/4 v11, 0x0

    return v11

    .line 100
    .restart local v2       #begin:J
    .restart local v5       #end:J
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v9       #parser:Lcom/android/calendar/vcal/pim/vcalendar/Duration;
    .restart local v10       #uri:Landroid/net/Uri;
    :catch_6a
    move-exception v4

    .line 101
    .local v4, e:Lcom/android/calendar/vcal/pim/vcalendar/DateException;
    invoke-virtual {v4}, Lcom/android/calendar/vcal/pim/vcalendar/DateException;->printStackTrace()V

    goto :goto_51

    .line 105
    .end local v4           #e:Lcom/android/calendar/vcal/pim/vcalendar/DateException;
    .end local v9           #parser:Lcom/android/calendar/vcal/pim/vcalendar/Duration;
    :cond_6f
    move-wide v5, v2

    goto :goto_55
.end method
