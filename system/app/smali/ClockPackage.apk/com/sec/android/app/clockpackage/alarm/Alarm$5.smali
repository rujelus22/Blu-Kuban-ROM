.class Lcom/sec/android/app/clockpackage/alarm/Alarm$5;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


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
    .line 271
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$5;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, parent:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$5;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$400(Lcom/sec/android/app/clockpackage/alarm/Alarm;)Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->getCount()I

    move-result v0

    .line 278
    .local v0, itemCount:I
    if-ltz p3, :cond_27

    if-gt p3, v0, :cond_27

    .line 279
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$5;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mListAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$500(Lcom/sec/android/app/clockpackage/alarm/Alarm;)Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->getHeaderViewCount()I

    move-result v2

    sub-int v1, p3, v2

    .line 280
    .local v1, pos:I
    if-ltz v1, :cond_27

    const/16 v2, 0xa

    if-ge v1, v2, :cond_27

    .line 281
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$5;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    const-string v3, "alarm_edit"

    #calls: Lcom/sec/android/app/clockpackage/alarm/Alarm;->startDetailView(Ljava/lang/String;I)V
    invoke-static {v2, v3, v1}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$700(Lcom/sec/android/app/clockpackage/alarm/Alarm;Ljava/lang/String;I)V

    .line 283
    .end local v1           #pos:I
    :cond_27
    return-void
.end method
