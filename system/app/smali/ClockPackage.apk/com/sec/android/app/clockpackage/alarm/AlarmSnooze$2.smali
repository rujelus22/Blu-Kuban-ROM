.class Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze$2;
.super Ljava/lang/Object;
.source "AlarmSnooze.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;)V
    .registers 2
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 152
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->access$300()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 154
    const-string v0, "AlarmSnooze"

    const-string v1, "snooze setting canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSnooze;->finish()V

    .line 158
    return-void
.end method
