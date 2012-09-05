.class Lcom/sec/android/app/phoneutil/PhoneUtil$2;
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
    .line 101
    iput-object p1, p0, Lcom/sec/android/app/phoneutil/PhoneUtil$2;->this$0:Lcom/sec/android/app/phoneutil/PhoneUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 8
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 105
    const v2, 0x7f050008

    if-ne p2, v2, :cond_45

    .line 107
    :try_start_5
    iget-object v2, p0, Lcom/sec/android/app/phoneutil/PhoneUtil$2;->this$0:Lcom/sec/android/app/phoneutil/PhoneUtil;

    const-string v3, "MODEM"

    #calls: Lcom/sec/android/app/phoneutil/PhoneUtil;->changeUsb(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/android/app/phoneutil/PhoneUtil;->access$100(Lcom/sec/android/app/phoneutil/PhoneUtil;Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/sec/android/app/phoneutil/PhoneUtil$2;->this$0:Lcom/sec/android/app/phoneutil/PhoneUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/phoneutil/PhoneUtil;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "usbapcpmode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    iget-object v2, p0, Lcom/sec/android/app/phoneutil/PhoneUtil$2;->this$0:Lcom/sec/android/app/phoneutil/PhoneUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/phoneutil/PhoneUtil;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "usbapcpmode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 110
    .local v0, currentUsb:I
    const-string v2, "PUT_USB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USB_STATUS1 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3d} :catch_3e

    .line 125
    .end local v0           #currentUsb:I
    :cond_3d
    :goto_3d
    return-void

    .line 111
    :catch_3e
    move-exception v1

    .line 112
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_3d

    .line 115
    .end local v1           #e:Ljava/lang/Exception;
    :cond_45
    const v2, 0x7f050009

    if-ne p2, v2, :cond_3d

    .line 117
    :try_start_4a
    iget-object v2, p0, Lcom/sec/android/app/phoneutil/PhoneUtil$2;->this$0:Lcom/sec/android/app/phoneutil/PhoneUtil;

    const-string v3, "PDA"

    #calls: Lcom/sec/android/app/phoneutil/PhoneUtil;->changeUsb(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/android/app/phoneutil/PhoneUtil;->access$100(Lcom/sec/android/app/phoneutil/PhoneUtil;Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lcom/sec/android/app/phoneutil/PhoneUtil$2;->this$0:Lcom/sec/android/app/phoneutil/PhoneUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/phoneutil/PhoneUtil;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "usbapcpmode"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 119
    iget-object v2, p0, Lcom/sec/android/app/phoneutil/PhoneUtil$2;->this$0:Lcom/sec/android/app/phoneutil/PhoneUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/phoneutil/PhoneUtil;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "usbapcpmode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 120
    .restart local v0       #currentUsb:I
    const-string v2, "PUT_USB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USB_STATUS1 : "

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

    .line 121
    .end local v0           #currentUsb:I
    :catch_83
    move-exception v1

    .line 122
    .restart local v1       #e:Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_3d
.end method
