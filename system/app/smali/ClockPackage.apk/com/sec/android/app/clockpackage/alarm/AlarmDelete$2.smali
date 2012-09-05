.class Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$2;
.super Ljava/lang/Object;
.source "AlarmDelete.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;)V
    .registers 2
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_1c

    .line 122
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;

    iget-object v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mSelectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v0, 0x1

    .line 124
    .local v0, checked:Z
    :goto_d
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;

    iget-object v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mList:Landroid/widget/ListView;

    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$2$1;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$2$1;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$2;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 148
    .end local v0           #checked:Z
    :goto_19
    return-void

    .line 122
    :cond_1a
    const/4 v0, 0x0

    goto :goto_d

    .line 136
    :cond_1c
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;

    iget-object v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mList:Landroid/widget/ListView;

    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$2$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$2$2;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$2;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_19
.end method
