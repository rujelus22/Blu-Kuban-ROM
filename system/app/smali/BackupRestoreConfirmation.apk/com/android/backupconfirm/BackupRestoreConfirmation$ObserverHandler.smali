.class Lcom/android/backupconfirm/BackupRestoreConfirmation$ObserverHandler;
.super Landroid/os/Handler;
.source "BackupRestoreConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/backupconfirm/BackupRestoreConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ObserverHandler"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/backupconfirm/BackupRestoreConfirmation;


# direct methods
.method constructor <init>(Lcom/android/backupconfirm/BackupRestoreConfirmation;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$ObserverHandler;->this$0:Lcom/android/backupconfirm/BackupRestoreConfirmation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$ObserverHandler;->mContext:Landroid/content/Context;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mDidAcknowledge:Z

    .line 83
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 87
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_6c

    .line 127
    :goto_6
    return-void

    .line 89
    :sswitch_7
    iget-object v1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$ObserverHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f03000e

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_6

    .line 94
    :sswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 95
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$ObserverHandler;->this$0:Lcom/android/backupconfirm/BackupRestoreConfirmation;

    iget-object v1, v1, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 100
    .end local v0           #name:Ljava/lang/String;
    :sswitch_20
    iget-object v1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$ObserverHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f03000f

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 101
    iget-object v1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$ObserverHandler;->this$0:Lcom/android/backupconfirm/BackupRestoreConfirmation;

    invoke-virtual {v1}, Lcom/android/backupconfirm/BackupRestoreConfirmation;->finish()V

    goto :goto_6

    .line 106
    :sswitch_32
    iget-object v1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$ObserverHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f030010

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_6

    .line 111
    :sswitch_3f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 112
    .restart local v0       #name:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$ObserverHandler;->this$0:Lcom/android/backupconfirm/BackupRestoreConfirmation;

    iget-object v1, v1, Lcom/android/backupconfirm/BackupRestoreConfirmation;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 117
    .end local v0           #name:Ljava/lang/String;
    :sswitch_4b
    iget-object v1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$ObserverHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f030011

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 118
    iget-object v1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$ObserverHandler;->this$0:Lcom/android/backupconfirm/BackupRestoreConfirmation;

    invoke-virtual {v1}, Lcom/android/backupconfirm/BackupRestoreConfirmation;->finish()V

    goto :goto_6

    .line 123
    :sswitch_5e
    iget-object v1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$ObserverHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f030012

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_6

    .line 87
    nop

    :sswitch_data_6c
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_14
        0x3 -> :sswitch_20
        0xb -> :sswitch_32
        0xc -> :sswitch_3f
        0xd -> :sswitch_4b
        0x64 -> :sswitch_5e
    .end sparse-switch
.end method
