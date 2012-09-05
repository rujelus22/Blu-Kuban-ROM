.class Lcom/syncmldstmo/smluiSyncSetting$26;
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
    .line 682
    iput-object p1, p0, Lcom/syncmldstmo/smluiSyncSetting$26;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 685
    iget-object v1, p0, Lcom/syncmldstmo/smluiSyncSetting$26;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    #setter for: Lcom/syncmldstmo/smluiSyncSetting;->selected:I
    invoke-static {v1, p2}, Lcom/syncmldstmo/smluiSyncSetting;->access$802(Lcom/syncmldstmo/smluiSyncSetting;I)I

    .line 686
    iget-object v1, p0, Lcom/syncmldstmo/smluiSyncSetting$26;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    invoke-virtual {v1}, Lcom/syncmldstmo/smluiSyncSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, model_name:[Ljava/lang/String;
    iget-object v1, p0, Lcom/syncmldstmo/smluiSyncSetting$26;->this$0:Lcom/syncmldstmo/smluiSyncSetting;

    #getter for: Lcom/syncmldstmo/smluiSyncSetting;->selected:I
    invoke-static {v1}, Lcom/syncmldstmo/smluiSyncSetting;->access$800(Lcom/syncmldstmo/smluiSyncSetting;)I

    move-result v1

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->smldevAdpSetIMSIModelName(Ljava/lang/String;)V

    .line 688
    return-void
.end method
