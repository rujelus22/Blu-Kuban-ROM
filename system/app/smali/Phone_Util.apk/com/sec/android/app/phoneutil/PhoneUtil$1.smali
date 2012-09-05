.class Lcom/sec/android/app/phoneutil/PhoneUtil$1;
.super Ljava/lang/Object;
.source "PhoneUtil.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/phoneutil/PhoneUtil;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/phoneutil/PhoneUtil;


# direct methods
.method constructor <init>(Lcom/sec/android/app/phoneutil/PhoneUtil;)V
    .registers 2
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/app/phoneutil/PhoneUtil$1;->this$0:Lcom/sec/android/app/phoneutil/PhoneUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 8
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 77
    const v2, 0x7f050005

    if-ne p2, v2, :cond_45

    .line 79
    :try_start_5
    iget-object v2, p0, Lcom/sec/android/app/phoneutil/PhoneUtil$1;->this$0:Lcom/sec/android/app/phoneutil/PhoneUtil;

    const-string v3, "MODEM"

    #calls: Lcom/sec/android/app/phoneutil/PhoneUtil;->changeUart(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/android/app/phoneutil/PhoneUtil;->access$000(Lcom/sec/android/app/phoneutil/PhoneUtil;Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lcom/sec/android/app/phoneutil/PhoneUtil$1;->this$0:Lcom/sec/android/app/phoneutil/PhoneUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/phoneutil/PhoneUtil;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "uartapcpmode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 81
    iget-object v2, p0, Lcom/sec/android/app/phoneutil/PhoneUtil$1;->this$0:Lcom/sec/android/app/phoneutil/PhoneUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/phoneutil/PhoneUtil;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "uartapcpmode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 82
    .local v0, currentUart:I
    const-string v2, "PUT_UART"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UART_STATUS1 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3d} :catch_3e

    .line 96
    .end local v0           #currentUart:I
    :cond_3d
    :goto_3d
    return-void

    .line 83
    :catch_3e
    move-exception v1

    .line 84
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_3d

    .line 86
    .end local v1           #e:Ljava/lang/Exception;
    :cond_45
    const v2, 0x7f050006

    if-ne p2, v2, :cond_3d

    .line 88
    :try_start_4a
    iget-object v2, p0, Lcom/sec/android/app/phoneutil/PhoneUtil$1;->this$0:Lcom/sec/android/app/phoneutil/PhoneUtil;

    const-string v3, "PDA"

    #calls: Lcom/sec/android/app/phoneutil/PhoneUtil;->changeUart(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/android/app/phoneutil/PhoneUtil;->access$000(Lcom/sec/android/app/phoneutil/PhoneUtil;Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lcom/sec/android/app/phoneutil/PhoneUtil$1;->this$0:Lcom/sec/android/app/phoneutil/PhoneUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/phoneutil/PhoneUtil;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "uartapcpmode"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 90
    iget-object v2, p0, Lcom/sec/android/app/phoneutil/PhoneUtil$1;->this$0:Lcom/sec/android/app/phoneutil/PhoneUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/phoneutil/PhoneUtil;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "uartapcpmode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 91
    .restart local v0       #currentUart:I
    const-string v2, "PUT_UART"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UART_STATUS2 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_82} :catch_83

    goto :goto_3d

    .line 92
    .end local v0           #currentUart:I
    :catch_83
    move-exception v1

    .line 93
    .restart local v1       #e:Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_3d
.end method
