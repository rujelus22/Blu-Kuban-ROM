.class Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$2$2;
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


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$2;)V
    .registers 2
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$2$2;->this$1:Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$2$2;->this$1:Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$2;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->updateSelectAllCheck()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->access$100(Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;)V

    .line 142
    return-void
.end method
