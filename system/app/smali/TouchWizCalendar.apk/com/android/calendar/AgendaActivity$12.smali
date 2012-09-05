.class Lcom/android/calendar/AgendaActivity$12;
.super Ljava/lang/Object;
.source "AgendaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AgendaActivity;->setupPickView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AgendaActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 995
    iput-object p1, p0, Lcom/android/calendar/AgendaActivity$12;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 22
    .parameter "view"

    .prologue
    .line 997
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/AgendaActivity$12;->this$0:Lcom/android/calendar/AgendaActivity;

    #getter for: Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;
    invoke-static {v15}, Lcom/android/calendar/AgendaActivity;->access$100(Lcom/android/calendar/AgendaActivity;)Lcom/android/calendar/AgendaInterface;

    move-result-object v15

    check-cast v15, Lcom/android/calendar/AgendaListView;

    invoke-virtual {v15}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/AgendaWindowAdapter;

    .line 999
    .local v1, adapter:Lcom/android/calendar/AgendaWindowAdapter;
    invoke-virtual {v1}, Lcom/android/calendar/AgendaWindowAdapter;->getCheckIds()Ljava/util/HashMap;

    move-result-object v3

    .line 1001
    .local v3, checkIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1014
    .local v10, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 1015
    .local v9, idSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 1016
    .local v12, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_21
    :goto_21
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_43

    .line 1017
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 1018
    .local v8, id:Ljava/lang/Long;
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 1019
    .local v2, check:Ljava/lang/Boolean;
    if-eqz v2, :cond_21

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_21

    .line 1023
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 1027
    .end local v2           #check:Ljava/lang/Boolean;
    .end local v8           #id:Ljava/lang/Long;
    :cond_43
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/AgendaActivity$12;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v15}, Lcom/android/calendar/AgendaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v15

    const-string v16, "text/plain"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_cc

    .line 1028
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1031
    .local v13, sb:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_5d
    :try_start_5d
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v7, v15, :cond_94

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaActivity$12;->this$0:Lcom/android/calendar/AgendaActivity;

    move-object/from16 v16, v0

    sget-object v17, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    move-object/from16 v0, v16

    #calls: Lcom/android/calendar/AgendaActivity;->getEventText(Landroid/net/Uri;)Ljava/lang/String;
    invoke-static {v0, v15}, Lcom/android/calendar/AgendaActivity;->access$600(Lcom/android/calendar/AgendaActivity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 1037
    .local v5, eventInfo:Ljava/lang/String;
    if-eqz v5, :cond_8a

    .line 1038
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_8a} :catch_8d

    .line 1031
    :cond_8a
    add-int/lit8 v7, v7, 0x1

    goto :goto_5d

    .line 1042
    .end local v5           #eventInfo:Ljava/lang/String;
    :catch_8d
    move-exception v4

    .line 1043
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1044
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1048
    .end local v4           #e:Ljava/lang/Exception;
    :cond_94
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_a4

    .line 1049
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/AgendaActivity$12;->this$0:Lcom/android/calendar/AgendaActivity;

    const/16 v16, 0x3e8

    invoke-virtual/range {v15 .. v16}, Lcom/android/calendar/AgendaActivity;->showDialog(I)V

    .line 1093
    .end local v13           #sb:Ljava/lang/StringBuilder;
    :goto_a3
    return-void

    .line 1051
    .restart local v13       #sb:Ljava/lang/StringBuilder;
    :cond_a4
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 1052
    .local v11, intent:Landroid/content/Intent;
    const-string v15, "result"

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1053
    const-string v15, "text/plain"

    invoke-virtual {v11, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1054
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/AgendaActivity$12;->this$0:Lcom/android/calendar/AgendaActivity;

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Lcom/android/calendar/AgendaActivity;->setResult(ILandroid/content/Intent;)V

    .line 1055
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/AgendaActivity$12;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v15}, Lcom/android/calendar/AgendaActivity;->finish()V

    goto :goto_a3

    .line 1058
    .end local v7           #i:I
    .end local v11           #intent:Landroid/content/Intent;
    .end local v13           #sb:Ljava/lang/StringBuilder;
    :cond_cc
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1061
    .local v6, extraEventIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_d2
    :try_start_d2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v7, v15, :cond_10d

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaActivity$12;->this$0:Lcom/android/calendar/AgendaActivity;

    move-object/from16 v16, v0

    sget-object v17, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    move-object/from16 v0, v16

    #calls: Lcom/android/calendar/AgendaActivity;->makeVCalendar(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v0, v15}, Lcom/android/calendar/AgendaActivity;->access$700(Lcom/android/calendar/AgendaActivity;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v14

    .line 1067
    .local v14, vcalUri:Landroid/net/Uri;
    if-eqz v14, :cond_103

    .line 1068
    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_103} :catch_106

    .line 1061
    :cond_103
    add-int/lit8 v7, v7, 0x1

    goto :goto_d2

    .line 1071
    .end local v14           #vcalUri:Landroid/net/Uri;
    :catch_106
    move-exception v4

    .line 1072
    .restart local v4       #e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1073
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1077
    .end local v4           #e:Ljava/lang/Exception;
    :cond_10d
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_11d

    .line 1078
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/AgendaActivity$12;->this$0:Lcom/android/calendar/AgendaActivity;

    const/16 v16, 0x3e8

    invoke-virtual/range {v15 .. v16}, Lcom/android/calendar/AgendaActivity;->showDialog(I)V

    goto :goto_a3

    .line 1080
    :cond_11d
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 1082
    .restart local v11       #intent:Landroid/content/Intent;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_13a

    .line 1083
    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1085
    :cond_13a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_145

    .line 1086
    const-string v15, "uristrings"

    invoke-virtual {v11, v15, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1088
    :cond_145
    const-string v15, "text/x-vCalendar"

    invoke-virtual {v11, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1089
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/AgendaActivity$12;->this$0:Lcom/android/calendar/AgendaActivity;

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Lcom/android/calendar/AgendaActivity;->setResult(ILandroid/content/Intent;)V

    .line 1090
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/AgendaActivity$12;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v15}, Lcom/android/calendar/AgendaActivity;->finish()V

    goto/16 :goto_a3
.end method
