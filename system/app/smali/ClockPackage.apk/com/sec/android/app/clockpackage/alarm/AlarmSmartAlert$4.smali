.class Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$4;
.super Ljava/lang/Object;
.source "AlarmSmartAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->onCreate(Landroid/os/Bundle;)V
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
    .line 274
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 276
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$WakeLockSmart;->release()V

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    const v1, 0x7f03000c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->setContentView(I)V

    .line 281
    :goto_27
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->initContentView()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$1200(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)V

    .line 282
    return-void

    .line 280
    :cond_2d
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    const v1, 0x7f03000b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->setContentView(I)V

    goto :goto_27
.end method
