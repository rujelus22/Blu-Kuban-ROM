.class Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;
.super Ljava/lang/Object;
.source "AgendaDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AgendaDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteRunnable"
.end annotation


# instance fields
.field finish:Z

.field final synthetic this$0:Lcom/android/calendar/AgendaDeleteActivity;


# direct methods
.method private constructor <init>(Lcom/android/calendar/AgendaDeleteActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 1167
    iput-object p1, p0, Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;->finish:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/AgendaDeleteActivity;Lcom/android/calendar/AgendaDeleteActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1167
    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;-><init>(Lcom/android/calendar/AgendaDeleteActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1171
    iget-boolean v3, p0, Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;->finish:Z

    if-eqz v3, :cond_28

    .line 1173
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v3}, Lcom/android/calendar/AlertReceiver;->updateAlertNotification(Landroid/content/Context;)V

    .line 1174
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;
    invoke-static {v3}, Lcom/android/calendar/AgendaDeleteActivity;->access$1100(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 1176
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;
    invoke-static {v3}, Lcom/android/calendar/AgendaDeleteActivity;->access$1100(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->dismiss()V

    .line 1178
    :cond_1d
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-virtual {v3}, Lcom/android/calendar/AgendaDeleteActivity;->finish()V

    .line 1179
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #setter for: Lcom/android/calendar/AgendaDeleteActivity;->mDeleteStart:Z
    invoke-static {v3, v4}, Lcom/android/calendar/AgendaDeleteActivity;->access$1002(Lcom/android/calendar/AgendaDeleteActivity;Z)Z

    .line 1210
    :cond_27
    :goto_27
    return-void

    .line 1182
    :cond_28
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/calendar/AgendaDeleteActivity;->access$700(Lcom/android/calendar/AgendaDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_dd

    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/calendar/AgendaDeleteActivity;->access$700(Lcom/android/calendar/AgendaDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_dd

    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mDeleteStart:Z
    invoke-static {v3}, Lcom/android/calendar/AgendaDeleteActivity;->access$1000(Lcom/android/calendar/AgendaDeleteActivity;)Z

    move-result v3

    if-eqz v3, :cond_dd

    .line 1183
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/calendar/AgendaDeleteActivity;->access$700(Lcom/android/calendar/AgendaDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1185
    .local v0, id:J
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1186
    .local v2, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/calendar/AgendaDeleteActivity;->access$1400(Lcom/android/calendar/AgendaDeleteActivity;)Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1187
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;
    invoke-static {v3}, Lcom/android/calendar/AgendaDeleteActivity;->access$1100(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_74

    .line 1189
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;
    invoke-static {v3}, Lcom/android/calendar/AgendaDeleteActivity;->access$1100(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->incrementProgressBy(I)V

    .line 1191
    :cond_74
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/calendar/AgendaDeleteActivity;->access$700(Lcom/android/calendar/AgendaDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1193
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 1195
    const-string v3, "GATE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>EVENT_DELETED : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " </GATE-M>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    :cond_a1
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/calendar/AgendaDeleteActivity;->access$700(Lcom/android/calendar/AgendaDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b8

    .line 1199
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/calendar/AgendaDeleteActivity;->access$1300(Lcom/android/calendar/AgendaDeleteActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_27

    .line 1201
    :cond_b8
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;
    invoke-static {v3}, Lcom/android/calendar/AgendaDeleteActivity;->access$1100(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-virtual {v4}, Lcom/android/calendar/AgendaDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00bb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1202
    iput-boolean v6, p0, Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;->finish:Z

    .line 1203
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/calendar/AgendaDeleteActivity;->access$1300(Lcom/android/calendar/AgendaDeleteActivity;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_27

    .line 1206
    .end local v0           #id:J
    .end local v2           #uri:Landroid/net/Uri;
    :cond_dd
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mDeleteStart:Z
    invoke-static {v3}, Lcom/android/calendar/AgendaDeleteActivity;->access$1000(Lcom/android/calendar/AgendaDeleteActivity;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1207
    iput-boolean v6, p0, Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;->finish:Z

    goto/16 :goto_27
.end method
