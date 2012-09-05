.class Lcom/sec/android/app/clockpackage/alarm/Alarm$8;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/Alarm;->controlListHead()V
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
    .line 577
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$8;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm$8;->this$0:Lcom/sec/android/app/clockpackage/alarm/Alarm;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->createNewAlarm()V

    .line 580
    return-void
.end method
