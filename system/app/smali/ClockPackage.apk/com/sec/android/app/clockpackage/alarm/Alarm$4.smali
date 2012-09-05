.class Lcom/sec/android/app/clockpackage/alarm/Alarm$4;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$OnItemChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/Alarm;->InitAlarmList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/Alarm;)V
    .registers 2
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChange()V
    .registers 3

    .prologue
    .line 227
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 228
    const-string v0, "Alarm"

    const-string v1, "onItemChange called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/Utilities;->updateIndicatorAlarm(Landroid/content/Context;)V

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #calls: Lcom/sec/android/app/clockpackage/alarm/Alarm;->controlListHead()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$300(Lcom/sec/android/app/clockpackage/alarm/Alarm;)V

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$400(Lcom/sec/android/app/clockpackage/alarm/Alarm;)Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->getCount()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_37

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mListAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$500(Lcom/sec/android/app/clockpackage/alarm/Alarm;)Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->setHeaderVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mList:Lcom/sec/android/app/clockpackage/alarm/CustomListView;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$600(Lcom/sec/android/app/clockpackage/alarm/Alarm;)Lcom/sec/android/app/clockpackage/alarm/CustomListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/CustomListView;->requestLayout()V

    .line 241
    :goto_36
    return-void

    .line 238
    :cond_37
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mListAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$500(Lcom/sec/android/app/clockpackage/alarm/Alarm;)Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->setHeaderVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mList:Lcom/sec/android/app/clockpackage/alarm/CustomListView;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$600(Lcom/sec/android/app/clockpackage/alarm/Alarm;)Lcom/sec/android/app/clockpackage/alarm/CustomListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/CustomListView;->requestLayout()V

    goto :goto_36
.end method

.method public onItemInvalidate()V
    .registers 3

    .prologue
    .line 245
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 246
    const-string v0, "Alarm"

    const-string v1, "onItemInvalidate() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_b
    return-void
.end method
