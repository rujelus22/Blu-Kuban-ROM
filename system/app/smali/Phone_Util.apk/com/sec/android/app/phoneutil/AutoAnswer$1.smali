.class Lcom/sec/android/app/phoneutil/AutoAnswer$1;
.super Ljava/lang/Object;
.source "AutoAnswer.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/phoneutil/AutoAnswer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/phoneutil/AutoAnswer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/phoneutil/AutoAnswer;)V
    .registers 2
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sec/android/app/phoneutil/AutoAnswer$1;->this$0:Lcom/sec/android/app/phoneutil/AutoAnswer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 8
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 54
    const v2, 0x7f050002

    if-ne p2, v2, :cond_3e

    .line 57
    :try_start_5
    iget-object v2, p0, Lcom/sec/android/app/phoneutil/AutoAnswer$1;->this$0:Lcom/sec/android/app/phoneutil/AutoAnswer;

    invoke-virtual {v2}, Lcom/sec/android/app/phoneutil/AutoAnswer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "autoanswering_without_device"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 59
    iget-object v2, p0, Lcom/sec/android/app/phoneutil/AutoAnswer$1;->this$0:Lcom/sec/android/app/phoneutil/AutoAnswer;

    invoke-virtual {v2}, Lcom/sec/android/app/phoneutil/AutoAnswer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "autoanswering_without_device"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 60
    .local v0, currentStatus:I
    const-string v2, "Auto_ANSWER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AutoAnswer Status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_36} :catch_37

    .line 76
    .end local v0           #currentStatus:I
    :cond_36
    :goto_36
    return-void

    .line 61
    :catch_37
    move-exception v1

    .line 62
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_36

    .line 65
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3e
    const v2, 0x7f050003

    if-ne p2, v2, :cond_36

    .line 68
    :try_start_43
    iget-object v2, p0, Lcom/sec/android/app/phoneutil/AutoAnswer$1;->this$0:Lcom/sec/android/app/phoneutil/AutoAnswer;

    invoke-virtual {v2}, Lcom/sec/android/app/phoneutil/AutoAnswer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "autoanswering_without_device"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 69
    iget-object v2, p0, Lcom/sec/android/app/phoneutil/AutoAnswer$1;->this$0:Lcom/sec/android/app/phoneutil/AutoAnswer;

    invoke-virtual {v2}, Lcom/sec/android/app/phoneutil/AutoAnswer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "autoanswering_without_device"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 70
    .restart local v0       #currentStatus:I
    const-string v2, "Auto_ANSWER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AutoAnswer Status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_74} :catch_75

    goto :goto_36

    .line 71
    .end local v0           #currentStatus:I
    :catch_75
    move-exception v1

    .line 72
    .restart local v1       #e:Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_36
.end method
