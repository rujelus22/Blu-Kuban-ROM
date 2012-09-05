.class Lcom/sec/android/app/wlantest/WlanMacAddress$2;
.super Ljava/lang/Object;
.source "WlanMacAddress.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/wlantest/WlanMacAddress;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/wlantest/WlanMacAddress;


# direct methods
.method constructor <init>(Lcom/sec/android/app/wlantest/WlanMacAddress;)V
    .registers 2
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sec/android/app/wlantest/WlanMacAddress$2;->this$0:Lcom/sec/android/app/wlantest/WlanMacAddress;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 111
    const-string v3, "WlanMac"

    const-string v4, "  ........Power save mode Off!!!......"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v3, p0, Lcom/sec/android/app/wlantest/WlanMacAddress$2;->this$0:Lcom/sec/android/app/wlantest/WlanMacAddress;

    iget-object v3, v3, Lcom/sec/android/app/wlantest/WlanMacAddress;->r1:Landroid/widget/RadioButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 113
    iget-object v3, p0, Lcom/sec/android/app/wlantest/WlanMacAddress$2;->this$0:Lcom/sec/android/app/wlantest/WlanMacAddress;

    iget-object v3, v3, Lcom/sec/android/app/wlantest/WlanMacAddress;->r2:Landroid/widget/RadioButton;

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 115
    const/4 v1, 0x0

    .line 117
    .local v1, out:Ljava/io/FileWriter;
    :try_start_18
    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/data/.psm.info"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_5b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1f} :catch_41

    .line 118
    .end local v1           #out:Ljava/io/FileWriter;
    .local v2, out:Ljava/io/FileWriter;
    const/16 v3, 0x30

    :try_start_21
    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(I)V

    .line 119
    iget-object v3, p0, Lcom/sec/android/app/wlantest/WlanMacAddress$2;->this$0:Lcom/sec/android/app/wlantest/WlanMacAddress;

    const-string v4, "PowerSaveMode is Disabled"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_6b
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_30} :catch_6e

    .line 125
    if-eqz v2, :cond_71

    .line 127
    :try_start_32
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_37

    move-object v1, v2

    .line 134
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    :cond_36
    :goto_36
    return-void

    .line 128
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_37
    move-exception v0

    .line 129
    .local v0, e:Ljava/io/IOException;
    const-string v3, "WlanMac"

    const-string v4, "File Close error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 130
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_36

    .line 120
    .end local v0           #e:Ljava/io/IOException;
    :catch_41
    move-exception v0

    .line 121
    .restart local v0       #e:Ljava/io/IOException;
    :goto_42
    :try_start_42
    const-string v3, "WlanMac"

    const-string v4, "File open error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_5b

    .line 125
    if-eqz v1, :cond_36

    .line 127
    :try_start_4e
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_36

    .line 128
    :catch_52
    move-exception v0

    .line 129
    const-string v3, "WlanMac"

    const-string v4, "File Close error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 125
    .end local v0           #e:Ljava/io/IOException;
    :catchall_5b
    move-exception v3

    :goto_5c
    if-eqz v1, :cond_61

    .line 127
    :try_start_5e
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    .line 130
    :cond_61
    :goto_61
    throw v3

    .line 128
    :catch_62
    move-exception v0

    .line 129
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "WlanMac"

    const-string v5, "File Close error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 125
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catchall_6b
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_5c

    .line 120
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_6e
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_42

    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :cond_71
    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_36
.end method
