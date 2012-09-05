.class Lcom/syncmldstmo/smluiSyncSetting$13;
.super Ljava/lang/Object;
.source "smluiSyncSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syncmldstmo/smluiSyncSetting;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syncmldstmo/smluiSyncSetting;


# direct methods
.method constructor <init>(Lcom/syncmldstmo/smluiSyncSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 560
    iput-object p1, p0, Lcom/syncmldstmo/smluiSyncSetting$13;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 564
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting$13;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    #getter for: Lcom/syncmldstmo/smluiSyncSetting;->DeleteContact:Z
    invoke-static {v0}, Lcom/syncmldstmo/smluiSyncSetting;->access$400(Lcom/syncmldstmo/smluiSyncSetting;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 565
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting$13;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    invoke-virtual {v0}, Lcom/syncmldstmo/smluiSyncSetting;->test_deleteall_contacts()V

    .line 567
    :cond_d
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting$13;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    #getter for: Lcom/syncmldstmo/smluiSyncSetting;->DeleteCalendar:Z
    invoke-static {v0}, Lcom/syncmldstmo/smluiSyncSetting;->access$500(Lcom/syncmldstmo/smluiSyncSetting;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 568
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting$13;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    invoke-virtual {v0}, Lcom/syncmldstmo/smluiSyncSetting;->test_deleteall_calendar()V

    .line 570
    :cond_1a
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting$13;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    #getter for: Lcom/syncmldstmo/smluiSyncSetting;->DeleteCalendar:Z
    invoke-static {v0}, Lcom/syncmldstmo/smluiSyncSetting;->access$500(Lcom/syncmldstmo/smluiSyncSetting;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting$13;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    #getter for: Lcom/syncmldstmo/smluiSyncSetting;->DeleteContact:Z
    invoke-static {v0}, Lcom/syncmldstmo/smluiSyncSetting;->access$400(Lcom/syncmldstmo/smluiSyncSetting;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 571
    :cond_2a
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting$13;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    #getter for: Lcom/syncmldstmo/smluiSyncSetting;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/syncmldstmo/smluiSyncSetting;->access$600(Lcom/syncmldstmo/smluiSyncSetting;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Delete Success"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 573
    :cond_3a
    iget-object v0, p0, Lcom/syncmldstmo/smluiSyncSetting$13;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/smluiSyncSetting;->removeDialog(I)V

    .line 574
    return-void
.end method
