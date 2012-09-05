.class Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$22;
.super Ljava/lang/Object;
.source "AlarmDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 2279
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$22;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2282
    packed-switch p2, :pswitch_data_92

    .line 2335
    :goto_3
    return-void

    .line 2284
    :pswitch_4
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$22;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    const/16 v5, 0x1102

    invoke-virtual {v4, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->showDialog(I)V

    goto :goto_3

    .line 2287
    :pswitch_c
    const/4 v2, 0x0

    .line 2291
    .local v2, packageContext:Landroid/content/Context;
    :try_start_d
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$22;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    const-string v5, "com.sec.android.app.myfiles"

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 2295
    const-string v4, "com.sec.android.app.myfiles.fileselector.SingleSelectorActivity"

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 2301
    .local v3, program_class:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2305
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.sec.android.app.myfiles.PICK_DATA "

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2306
    const-string v4, "FOLDERPATH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/Sounds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2312
    const-string v4, "CONTENT_TYPE"

    const-string v5, "audio/*;"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2319
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$22;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    const/16 v5, 0x1001

    invoke-virtual {v4, v1, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_59
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_59} :catch_5a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_59} :catch_75

    goto :goto_3

    .line 2321
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #program_class:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_5a
    move-exception v0

    .line 2322
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 2323
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$22;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mToast:Landroid/widget/Toast;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$2300(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 2324
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$22;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mToast:Landroid/widget/Toast;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$2300(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 2325
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_75
    move-exception v0

    .line 2326
    .local v0, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 2327
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$22;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mToast:Landroid/widget/Toast;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$2300(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 2328
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$22;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mToast:Landroid/widget/Toast;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$2300(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 2282
    nop

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_4
        :pswitch_c
    .end packed-switch
.end method
