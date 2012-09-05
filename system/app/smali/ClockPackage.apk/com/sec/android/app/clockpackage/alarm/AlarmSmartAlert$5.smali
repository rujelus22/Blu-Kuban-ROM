.class Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$5;
.super Ljava/lang/Object;
.source "AlarmSmartAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->initContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)V
    .registers 2
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$5;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$5;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAlarmName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$1300(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 303
    return-void
.end method
