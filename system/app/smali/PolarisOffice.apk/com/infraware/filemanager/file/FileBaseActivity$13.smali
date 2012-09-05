.class Lcom/infraware/filemanager/file/FileBaseActivity$13;
.super Ljava/lang/Object;
.source "FileBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/filemanager/file/FileBaseActivity;->updateScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/file/FileBaseActivity;


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/file/FileBaseActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$13;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    .line 1480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1484
    invoke-static {p2}, Lcom/infraware/common/util/Utils;->isSystemKey(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1485
    const/4 v0, 0x0

    .line 1494
    :goto_8
    return v0

    .line 1487
    :cond_9
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$13;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    const/4 v2, -0x1

    iput v2, v1, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nDownKey:I

    .line 1488
    packed-switch p2, :pswitch_data_18

    goto :goto_8

    .line 1491
    :pswitch_12
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$13;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    #setter for: Lcom/infraware/filemanager/file/FileBaseActivity;->m_bCancelSelect:Z
    invoke-static {v1, v0}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$9(Lcom/infraware/filemanager/file/FileBaseActivity;Z)V

    goto :goto_8

    .line 1488
    :pswitch_data_18
    .packed-switch 0x4
        :pswitch_12
    .end packed-switch
.end method
