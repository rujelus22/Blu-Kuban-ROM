.class Lcom/sec/android/app/clockpackage/timer/TimerDetail$5;
.super Ljava/lang/Object;
.source "TimerDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/timer/TimerDetail;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$5;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$5;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    const/16 v1, 0x1103

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->showDialog(I)V

    .line 438
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$5;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mAlarmToneBox:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$1200(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 439
    return-void
.end method
