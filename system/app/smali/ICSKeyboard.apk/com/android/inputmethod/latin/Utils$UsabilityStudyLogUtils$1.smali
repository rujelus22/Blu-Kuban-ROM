.class Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->write(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

.field private final synthetic val$log:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$1;->this$1:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    iput-object p2, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$1;->val$log:Ljava/lang/String;

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 494
    iget-object v3, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$1;->this$1:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    #calls: Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->createLogFileIfNotExist()V
    invoke-static {v3}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$0(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)V

    .line 495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 496
    .local v0, currentTime:J
    iget-object v3, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$1;->this$1:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    #getter for: Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mDate:Ljava/util/Date;
    invoke-static {v3}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$1(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 498
    const-string v3, "%s\t%d\t%s\n"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 499
    iget-object v6, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$1;->this$1:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    #getter for: Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mDateFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v6}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$2(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)Ljava/text/SimpleDateFormat;

    move-result-object v6

    iget-object v7, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$1;->this$1:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    #getter for: Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mDate:Ljava/util/Date;
    invoke-static {v7}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$1(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$1;->val$log:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 498
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 500
    .local v2, printString:Ljava/lang/String;
    sget-boolean v3, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v3, :cond_56

    .line 501
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$3()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Write: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$1;->val$log:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_56
    iget-object v3, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$1;->this$1:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    #getter for: Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mWriter:Ljava/io/PrintWriter;
    invoke-static {v3}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$4(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 504
    return-void
.end method
