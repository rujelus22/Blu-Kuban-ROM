.class Lcom/sec/android/app/phoneutil/UsbLogging$1;
.super Ljava/lang/Object;
.source "UsbLogging.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/phoneutil/UsbLogging;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/phoneutil/UsbLogging;


# direct methods
.method constructor <init>(Lcom/sec/android/app/phoneutil/UsbLogging;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sec/android/app/phoneutil/UsbLogging$1;->this$0:Lcom/sec/android/app/phoneutil/UsbLogging;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 9
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v5, 0x0

    .line 83
    iget-object v3, p0, Lcom/sec/android/app/phoneutil/UsbLogging$1;->this$0:Lcom/sec/android/app/phoneutil/UsbLogging;

    #getter for: Lcom/sec/android/app/phoneutil/UsbLogging;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/phoneutil/UsbLogging;->access$000(Lcom/sec/android/app/phoneutil/UsbLogging;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "usblogging.preferences_name"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 84
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 87
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const v3, 0x7f05000b

    if-ne p2, v3, :cond_34

    .line 89
    :try_start_16
    iget-object v3, p0, Lcom/sec/android/app/phoneutil/UsbLogging$1;->this$0:Lcom/sec/android/app/phoneutil/UsbLogging;

    const-string v4, "YES"

    #calls: Lcom/sec/android/app/phoneutil/UsbLogging;->loggingenable(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/sec/android/app/phoneutil/UsbLogging;->access$100(Lcom/sec/android/app/phoneutil/UsbLogging;Ljava/lang/String;)V

    .line 90
    const-string v3, "Enable"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 91
    const-string v3, "Disable"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2c} :catch_2d

    .line 111
    :cond_2c
    :goto_2c
    return-void

    .line 96
    :catch_2d
    move-exception v0

    .line 97
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_2c

    .line 100
    .end local v0           #e:Ljava/lang/Exception;
    :cond_34
    const v3, 0x7f05000c

    if-ne p2, v3, :cond_2c

    .line 102
    :try_start_39
    iget-object v3, p0, Lcom/sec/android/app/phoneutil/UsbLogging$1;->this$0:Lcom/sec/android/app/phoneutil/UsbLogging;

    const-string v4, "NO"

    #calls: Lcom/sec/android/app/phoneutil/UsbLogging;->loggingenable(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/sec/android/app/phoneutil/UsbLogging;->access$100(Lcom/sec/android/app/phoneutil/UsbLogging;Ljava/lang/String;)V

    .line 103
    const-string v3, "Enable"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 104
    const-string v3, "Disable"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 105
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_4f} :catch_50

    goto :goto_2c

    .line 106
    :catch_50
    move-exception v0

    .line 107
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_2c
.end method
