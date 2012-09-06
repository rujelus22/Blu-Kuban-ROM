.class Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->printAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$2;->this$1:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 512
    iget-object v4, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$2;->this$1:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    #getter for: Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mWriter:Ljava/io/PrintWriter;
    invoke-static {v4}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$4(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 513
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    .local v3, sb:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$2;->this$1:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    #calls: Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->getBufferedReader()Ljava/io/BufferedReader;
    invoke-static {v4}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$5(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)Ljava/io/BufferedReader;

    move-result-object v0

    .line 517
    .local v0, br:Ljava/io/BufferedReader;
    :goto_15
    :try_start_15
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_96
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_57

    move-result-object v2

    .local v2, line:Ljava/lang/String;
    if-nez v2, :cond_4e

    .line 524
    sget-boolean v4, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v4, :cond_39

    .line 525
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$3()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "output all logs\n"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_39
    iget-object v4, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$2;->this$1:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    #getter for: Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mIms:Landroid/inputmethodservice/InputMethodService;
    invoke-static {v4}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$6(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v8}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 529
    :try_start_4a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_cc

    .line 534
    .end local v2           #line:Ljava/lang/String;
    :goto_4d
    return-void

    .line 518
    .restart local v2       #line:Ljava/lang/String;
    :cond_4e
    const/16 v4, 0xa

    :try_start_50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_96
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_56} :catch_57

    goto :goto_15

    .line 521
    .end local v2           #line:Ljava/lang/String;
    :catch_57
    move-exception v1

    .line 522
    .local v1, e:Ljava/io/IOException;
    :try_start_58
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$3()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Can\'t read log file."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_58 .. :try_end_61} :catchall_96

    .line 524
    sget-boolean v4, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v4, :cond_7f

    .line 525
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$3()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "output all logs\n"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_7f
    iget-object v4, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$2;->this$1:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    #getter for: Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mIms:Landroid/inputmethodservice/InputMethodService;
    invoke-static {v4}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$6(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v8}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 529
    :try_start_90
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_94

    goto :goto_4d

    .line 530
    :catch_94
    move-exception v4

    goto :goto_4d

    .line 523
    .end local v1           #e:Ljava/io/IOException;
    :catchall_96
    move-exception v4

    .line 524
    sget-boolean v5, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v5, :cond_b5

    .line 525
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$3()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "output all logs\n"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_b5
    iget-object v5, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$2;->this$1:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    #getter for: Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mIms:Landroid/inputmethodservice/InputMethodService;
    invoke-static {v5}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->access$6(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v5

    invoke-virtual {v5}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v8}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 529
    :try_start_c6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_ca

    .line 533
    :goto_c9
    throw v4

    .line 530
    :catch_ca
    move-exception v5

    goto :goto_c9

    .restart local v2       #line:Ljava/lang/String;
    :catch_cc
    move-exception v4

    goto :goto_4d
.end method
