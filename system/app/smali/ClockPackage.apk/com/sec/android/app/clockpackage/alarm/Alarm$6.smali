.class Lcom/sec/android/app/clockpackage/alarm/Alarm$6;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;


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
    .line 286
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$6;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)Z
    .registers 9
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, parent:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$6;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeletePosition:I
    invoke-static {v1, p3}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$202(Lcom/sec/android/app/clockpackage/alarm/Alarm;I)I

    .line 289
    const v1, 0x7f0e003b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 291
    .local v0, v:Landroid/widget/TextView;
    if-eqz v0, :cond_2e

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$6;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeleteDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$800(Lcom/sec/android/app/clockpackage/alarm/Alarm;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 292
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$6;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeleteDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$800(Lcom/sec/android/app/clockpackage/alarm/Alarm;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$6;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeleteDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$800(Lcom/sec/android/app/clockpackage/alarm/Alarm;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 295
    :cond_2e
    const/4 v1, 0x1

    return v1
.end method
