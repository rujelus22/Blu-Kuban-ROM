.class Lcom/sec/android/app/clockpackage/timer/TimerDetail$3;
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
    .line 400
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$3;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$3;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->stopPlayer()V

    .line 404
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$3;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #calls: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->saveDetailChange()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$1000(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)V

    .line 405
    return-void
.end method
