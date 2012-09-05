.class Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListenerForPenGesture;
.super Landroid/view/WindowOrientationListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOrientationListenerForPenGesture"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 678
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListenerForPenGesture;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 679
    invoke-direct {p0, p2}, Landroid/view/WindowOrientationListener;-><init>(Landroid/content/Context;)V

    .line 680
    return-void
.end method


# virtual methods
.method public onProposedRotationChanged(I)V
    .registers 8
    .parameter "rotation"

    .prologue
    .line 684
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onProposedRotationChanged for pen gesture, rotation changed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/4 v1, 0x0

    .line 690
    .local v1, out:Ljava/io/OutputStream;
    :try_start_19
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/sec_epen/epen_rotation"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_52
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_25} :catch_37
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_25} :catch_43

    .line 691
    .end local v1           #out:Ljava/io/OutputStream;
    .local v2, out:Ljava/io/OutputStream;
    add-int/lit8 v3, p1, 0x30

    :try_start_27
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_2a} :catch_64
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_61

    .line 698
    if-eqz v2, :cond_2f

    .line 699
    :try_start_2c
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_31

    :cond_2f
    move-object v1, v2

    .line 705
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v1       #out:Ljava/io/OutputStream;
    :cond_30
    :goto_30
    return-void

    .line 701
    .end local v1           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :catch_31
    move-exception v0

    .line 702
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 704
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v1       #out:Ljava/io/OutputStream;
    goto :goto_30

    .line 692
    .end local v0           #e:Ljava/lang/Exception;
    :catch_37
    move-exception v3

    .line 698
    :goto_38
    if-eqz v1, :cond_30

    .line 699
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_30

    .line 701
    :catch_3e
    move-exception v0

    .line 702
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30

    .line 694
    .end local v0           #e:Ljava/lang/Exception;
    :catch_43
    move-exception v0

    .line 695
    .local v0, e:Ljava/io/IOException;
    :goto_44
    :try_start_44
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_52

    .line 698
    if-eqz v1, :cond_30

    .line 699
    :try_start_49
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_30

    .line 701
    :catch_4d
    move-exception v0

    .line 702
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30

    .line 697
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_52
    move-exception v3

    .line 698
    :goto_53
    if-eqz v1, :cond_58

    .line 699
    :try_start_55
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_59

    .line 703
    :cond_58
    :goto_58
    throw v3

    .line 701
    :catch_59
    move-exception v0

    .line 702
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_58

    .line 697
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :catchall_5e
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v1       #out:Ljava/io/OutputStream;
    goto :goto_53

    .line 694
    .end local v1           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :catch_61
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v1       #out:Ljava/io/OutputStream;
    goto :goto_44

    .line 692
    .end local v1           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :catch_64
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v1       #out:Ljava/io/OutputStream;
    goto :goto_38
.end method
