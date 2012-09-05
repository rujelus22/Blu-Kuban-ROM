.class Lcom/sec/android/app/clockpackage/alarm/Alarm$1;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 183
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    const/4 v1, -0x1

    #setter for: Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeletePosition:I
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->access$202(Lcom/sec/android/app/clockpackage/alarm/Alarm;I)I

    .line 186
    return-void
.end method
