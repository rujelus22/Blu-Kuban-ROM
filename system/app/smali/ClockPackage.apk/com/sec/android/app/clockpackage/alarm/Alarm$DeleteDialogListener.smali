.class final Lcom/sec/android/app/clockpackage/alarm/Alarm$DeleteDialogListener;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/alarm/Alarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeleteDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/clockpackage/alarm/Alarm;)V
    .registers 2
    .parameter

    .prologue
    .line 654
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$DeleteDialogListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/clockpackage/alarm/Alarm;Lcom/sec/android/app/clockpackage/alarm/Alarm$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 654
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/Alarm$DeleteDialogListener;-><init>(Lcom/sec/android/app/clockpackage/alarm/Alarm;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 658
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$DeleteDialogListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeletePosition:I
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$200(Lcom/sec/android/app/clockpackage/alarm/Alarm;)I

    move-result v2

    if-ltz v2, :cond_97

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$DeleteDialogListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeletePosition:I
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$200(Lcom/sec/android/app/clockpackage/alarm/Alarm;)I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_97

    .line 659
    sget-boolean v2, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG:Z

    if-eqz v2, :cond_34

    .line 660
    const-string v2, "Alarm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete item at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$DeleteDialogListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeletePosition:I
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$200(Lcom/sec/android/app/clockpackage/alarm/Alarm;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_34
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$DeleteDialogListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$400(Lcom/sec/android/app/clockpackage/alarm/Alarm;)Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 663
    .local v0, c:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$DeleteDialogListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeletePosition:I
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$200(Lcom/sec/android/app/clockpackage/alarm/Alarm;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$DeleteDialogListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mListAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$500(Lcom/sec/android/app/clockpackage/alarm/Alarm;)Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->getHeaderViewCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 666
    const/4 v1, 0x0

    .line 667
    .local v1, deleteCount:I
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$DeleteDialogListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 672
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$DeleteDialogListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->enableNextAlert(Landroid/content/Context;)V

    .line 675
    if-lez v1, :cond_97

    .line 676
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$DeleteDialogListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.sec.android.clockpackage.alarm.NOTIFY_ALARM_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "id"

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$DeleteDialogListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeletePosition:I
    invoke-static {v5}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$200(Lcom/sec/android/app/clockpackage/alarm/Alarm;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->sendBroadcast(Landroid/content/Intent;)V

    .line 681
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #deleteCount:I
    :cond_97
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$DeleteDialogListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    const/4 v3, -0x1

    #setter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeletePosition:I
    invoke-static {v2, v3}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$202(Lcom/sec/android/app/clockpackage/alarm/Alarm;I)I

    .line 682
    return-void
.end method
