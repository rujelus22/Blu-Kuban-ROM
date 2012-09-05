.class Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$3;
.super Ljava/lang/Object;
.source "AlarmDelete.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 156
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->updateSelectAllCheck()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->access$100(Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;)V

    .line 162
    return-void
.end method
