.class Lcom/android/calendar/ImportVCalListActivity$2;
.super Ljava/lang/Object;
.source "ImportVCalListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/ImportVCalListActivity;->initSDLists()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ImportVCalListActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/ImportVCalListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 180
    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    iget-object v6, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    #getter for: Lcom/android/calendar/ImportVCalListActivity;->mVcal:Lcom/android/calendar/ImportExportVCalendar;
    invoke-static {v6}, Lcom/android/calendar/ImportVCalListActivity;->access$900(Lcom/android/calendar/ImportVCalListActivity;)Lcom/android/calendar/ImportExportVCalendar;

    move-result-object v6

    iget-object v7, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    #getter for: Lcom/android/calendar/ImportVCalListActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/calendar/ImportVCalListActivity;->access$800(Lcom/android/calendar/ImportVCalListActivity;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/calendar/ImportExportVCalendar;->getVCalFilePathList(Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object v6

    #setter for: Lcom/android/calendar/ImportVCalListActivity;->mFilePathList:Ljava/util/ArrayList;
    invoke-static {v5, v6}, Lcom/android/calendar/ImportVCalListActivity;->access$702(Lcom/android/calendar/ImportVCalListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 182
    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    #getter for: Lcom/android/calendar/ImportVCalListActivity;->mEventList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/calendar/ImportVCalListActivity;->access$1000(Lcom/android/calendar/ImportVCalListActivity;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_83

    .line 183
    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    #getter for: Lcom/android/calendar/ImportVCalListActivity;->mEventList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/calendar/ImportVCalListActivity;->access$1000(Lcom/android/calendar/ImportVCalListActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_32

    .line 184
    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    #getter for: Lcom/android/calendar/ImportVCalListActivity;->mEventList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/calendar/ImportVCalListActivity;->access$1000(Lcom/android/calendar/ImportVCalListActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 190
    :cond_32
    :goto_32
    const/4 v0, 0x0

    .line 192
    .local v0, currentFile:Ljava/io/File;
    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    #getter for: Lcom/android/calendar/ImportVCalListActivity;->mFilePathList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/calendar/ImportVCalListActivity;->access$700(Lcom/android/calendar/ImportVCalListActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 193
    .local v3, listLength:I
    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    #getter for: Lcom/android/calendar/ImportVCalListActivity;->mFilePathList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/calendar/ImportVCalListActivity;->access$700(Lcom/android/calendar/ImportVCalListActivity;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_d5

    if-lez v3, :cond_d5

    .line 194
    const/4 v2, 0x0

    .local v2, index:I
    :goto_48
    if-ge v2, v3, :cond_d5

    .line 195
    new-instance v0, Ljava/io/File;

    .end local v0           #currentFile:Ljava/io/File;
    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    #getter for: Lcom/android/calendar/ImportVCalListActivity;->mFilePathList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/calendar/ImportVCalListActivity;->access$700(Lcom/android/calendar/ImportVCalListActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    .restart local v0       #currentFile:Ljava/io/File;
    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-virtual {v5, v0}, Lcom/android/calendar/ImportVCalListActivity;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, mData:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    new-instance v6, Lcom/android/calendar/vcal/VCalManager;

    iget-object v7, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    #getter for: Lcom/android/calendar/ImportVCalListActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/calendar/ImportVCalListActivity;->access$800(Lcom/android/calendar/ImportVCalListActivity;)Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/calendar/vcal/VCalManager;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/calendar/ImportVCalListActivity;->mVCalManager:Lcom/android/calendar/vcal/VCalManager;
    invoke-static {v5, v6}, Lcom/android/calendar/ImportVCalListActivity;->access$1102(Lcom/android/calendar/ImportVCalListActivity;Lcom/android/calendar/vcal/VCalManager;)Lcom/android/calendar/vcal/VCalManager;

    .line 201
    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    #calls: Lcom/android/calendar/ImportVCalListActivity;->parseVCalendar(Ljava/lang/String;)Z
    invoke-static {v5, v4}, Lcom/android/calendar/ImportVCalListActivity;->access$1200(Lcom/android/calendar/ImportVCalListActivity;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8e

    .line 202
    const-string v5, "Calendar"

    const-string v6, "[ImportVCalListActivity] initSDLists : !parseVCalendar()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_80
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 186
    .end local v0           #currentFile:Ljava/io/File;
    .end local v2           #index:I
    .end local v3           #listLength:I
    .end local v4           #mData:Ljava/lang/String;
    :cond_83
    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/android/calendar/ImportVCalListActivity;->mEventList:Ljava/util/ArrayList;
    invoke-static {v5, v6}, Lcom/android/calendar/ImportVCalListActivity;->access$1002(Lcom/android/calendar/ImportVCalListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_32

    .line 205
    .restart local v0       #currentFile:Ljava/io/File;
    .restart local v2       #index:I
    .restart local v3       #listLength:I
    .restart local v4       #mData:Ljava/lang/String;
    :cond_8e
    new-instance v1, Lcom/android/calendar/Event;

    invoke-direct {v1}, Lcom/android/calendar/Event;-><init>()V

    .line 206
    .local v1, event:Lcom/android/calendar/Event;
    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    #getter for: Lcom/android/calendar/ImportVCalListActivity;->mVCalManager:Lcom/android/calendar/vcal/VCalManager;
    invoke-static {v5}, Lcom/android/calendar/ImportVCalListActivity;->access$1100(Lcom/android/calendar/ImportVCalListActivity;)Lcom/android/calendar/vcal/VCalManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/calendar/vcal/VCalManager;->getTitle()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 207
    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    #getter for: Lcom/android/calendar/ImportVCalListActivity;->mVCalManager:Lcom/android/calendar/vcal/VCalManager;
    invoke-static {v5}, Lcom/android/calendar/ImportVCalListActivity;->access$1100(Lcom/android/calendar/ImportVCalListActivity;)Lcom/android/calendar/vcal/VCalManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/calendar/vcal/VCalManager;->getStartTime()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/calendar/Event;->startMillis:J

    .line 208
    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    #getter for: Lcom/android/calendar/ImportVCalListActivity;->mVCalManager:Lcom/android/calendar/vcal/VCalManager;
    invoke-static {v5}, Lcom/android/calendar/ImportVCalListActivity;->access$1100(Lcom/android/calendar/ImportVCalListActivity;)Lcom/android/calendar/vcal/VCalManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/calendar/vcal/VCalManager;->getEndTime()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/calendar/Event;->endMillis:J

    .line 209
    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    #getter for: Lcom/android/calendar/ImportVCalListActivity;->mVCalManager:Lcom/android/calendar/vcal/VCalManager;
    invoke-static {v5}, Lcom/android/calendar/ImportVCalListActivity;->access$1100(Lcom/android/calendar/ImportVCalListActivity;)Lcom/android/calendar/vcal/VCalManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/calendar/vcal/VCalManager;->getAllday()Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/calendar/Event;->allDay:Z

    .line 211
    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    #getter for: Lcom/android/calendar/ImportVCalListActivity;->mEventList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/calendar/ImportVCalListActivity;->access$1000(Lcom/android/calendar/ImportVCalListActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_80

    .line 215
    .end local v1           #event:Lcom/android/calendar/Event;
    .end local v2           #index:I
    .end local v4           #mData:Ljava/lang/String;
    :cond_d5
    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    #getter for: Lcom/android/calendar/ImportVCalListActivity;->mEventList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/calendar/ImportVCalListActivity;->access$1000(Lcom/android/calendar/ImportVCalListActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_f0

    .line 216
    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    #getter for: Lcom/android/calendar/ImportVCalListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/calendar/ImportVCalListActivity;->access$1400(Lcom/android/calendar/ImportVCalListActivity;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/calendar/ImportVCalListActivity$2$1;

    invoke-direct {v6, p0}, Lcom/android/calendar/ImportVCalListActivity$2$1;-><init>(Lcom/android/calendar/ImportVCalListActivity$2;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    :goto_ef
    return-void

    .line 225
    :cond_f0
    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    #getter for: Lcom/android/calendar/ImportVCalListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/calendar/ImportVCalListActivity;->access$1400(Lcom/android/calendar/ImportVCalListActivity;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/calendar/ImportVCalListActivity$2$2;

    invoke-direct {v6, p0}, Lcom/android/calendar/ImportVCalListActivity$2$2;-><init>(Lcom/android/calendar/ImportVCalListActivity$2;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_ef
.end method
