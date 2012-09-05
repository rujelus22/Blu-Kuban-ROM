.class Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$5;
.super Ljava/lang/Object;
.source "AlarmAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->initContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V
    .registers 2
    .parameter

    .prologue
    .line 824
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$5;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 826
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$5;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$1000(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 827
    return-void
.end method
