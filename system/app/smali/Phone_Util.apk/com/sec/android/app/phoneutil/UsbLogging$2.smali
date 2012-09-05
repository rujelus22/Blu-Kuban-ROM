.class Lcom/sec/android/app/phoneutil/UsbLogging$2;
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
    .line 117
    iput-object p1, p0, Lcom/sec/android/app/phoneutil/UsbLogging$2;->this$0:Lcom/sec/android/app/phoneutil/UsbLogging;

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

    .line 122
    iget-object v3, p0, Lcom/sec/android/app/phoneutil/UsbLogging$2;->this$0:Lcom/sec/android/app/phoneutil/UsbLogging;

    #getter for: Lcom/sec/android/app/phoneutil/UsbLogging;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/phoneutil/UsbLogging;->access$000(Lcom/sec/android/app/phoneutil/UsbLogging;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "usblogging.preferences_name"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 123
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 125
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const v3, 0x7f05000e

    if-ne p2, v3, :cond_3a

    .line 127
    :try_start_16
    iget-object v3, p0, Lcom/sec/android/app/phoneutil/UsbLogging$2;->this$0:Lcom/sec/android/app/phoneutil/UsbLogging;

    const-string v4, "CPONLY"

    #calls: Lcom/sec/android/app/phoneutil/UsbLogging;->loggingstatus(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/sec/android/app/phoneutil/UsbLogging;->access$200(Lcom/sec/android/app/phoneutil/UsbLogging;Ljava/lang/String;)V

    .line 128
    const-string v3, "CPONLY"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 129
    const-string v3, "APONLY"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 130
    const-string v3, "CPAP"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 131
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_32} :catch_33

    .line 162
    :cond_32
    :goto_32
    return-void

    .line 133
    :catch_33
    move-exception v0

    .line 134
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_32

    .line 137
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3a
    const v3, 0x7f05000f

    if-ne p2, v3, :cond_63

    .line 139
    :try_start_3f
    iget-object v3, p0, Lcom/sec/android/app/phoneutil/UsbLogging$2;->this$0:Lcom/sec/android/app/phoneutil/UsbLogging;

    const-string v4, "APONLY"

    #calls: Lcom/sec/android/app/phoneutil/UsbLogging;->loggingstatus(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/sec/android/app/phoneutil/UsbLogging;->access$200(Lcom/sec/android/app/phoneutil/UsbLogging;Ljava/lang/String;)V

    .line 140
    const-string v3, "CPONLY"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 141
    const-string v3, "APONLY"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 142
    const-string v3, "CPAP"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 143
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_5b} :catch_5c

    goto :goto_32

    .line 145
    :catch_5c
    move-exception v0

    .line 146
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_32

    .line 149
    .end local v0           #e:Ljava/lang/Exception;
    :cond_63
    const v3, 0x7f050010

    if-ne p2, v3, :cond_32

    .line 151
    :try_start_68
    iget-object v3, p0, Lcom/sec/android/app/phoneutil/UsbLogging$2;->this$0:Lcom/sec/android/app/phoneutil/UsbLogging;

    const-string v4, "CPAP"

    #calls: Lcom/sec/android/app/phoneutil/UsbLogging;->loggingstatus(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/sec/android/app/phoneutil/UsbLogging;->access$200(Lcom/sec/android/app/phoneutil/UsbLogging;Ljava/lang/String;)V

    .line 152
    const-string v3, "CPONLY"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 153
    const-string v3, "APONLY"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 154
    const-string v3, "CPAP"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 155
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_84} :catch_85

    goto :goto_32

    .line 157
    :catch_85
    move-exception v0

    .line 158
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_32
.end method
