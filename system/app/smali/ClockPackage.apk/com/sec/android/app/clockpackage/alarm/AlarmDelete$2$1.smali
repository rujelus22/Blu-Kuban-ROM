.class Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$2$1;
.super Ljava/lang/Object;
.source "AlarmDelete.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$2;

.field final synthetic val$checked:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$2;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$2$1;->this$1:Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$2;

    iput-boolean p2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$2$1;->val$checked:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$2$1;->this$1:Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$2;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;

    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$2$1;->val$checked:Z

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->onSelectAllCheck(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->access$000(Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;Z)V

    .line 130
    return-void
.end method
