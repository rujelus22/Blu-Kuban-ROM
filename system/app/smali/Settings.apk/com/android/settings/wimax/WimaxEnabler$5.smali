.class Lcom/android/settings/wimax/WimaxEnabler$5;
.super Ljava/lang/Object;
.source "WimaxEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wimax/WimaxEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wimax/WimaxEnabler;

.field final synthetic val$isChecked:Z


# direct methods
.method constructor <init>(Lcom/android/settings/wimax/WimaxEnabler;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxEnabler$5;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    iput-boolean p2, p0, Lcom/android/settings/wimax/WimaxEnabler$5;->val$isChecked:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler$5;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    #getter for: Lcom/android/settings/wimax/WimaxEnabler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;
    invoke-static {v0}, Lcom/android/settings/wimax/WimaxEnabler;->access$1300(Lcom/android/settings/wimax/WimaxEnabler;)Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/wimax/WimaxEnabler$5;->val$isChecked:Z

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 305
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler$5;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    #getter for: Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/wimax/WimaxEnabler;->access$1400(Lcom/android/settings/wimax/WimaxEnabler;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 310
    :cond_18
    :goto_18
    return-void

    .line 308
    :cond_19
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler$5;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    #getter for: Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z
    invoke-static {v0}, Lcom/android/settings/wimax/WimaxEnabler;->access$300(Lcom/android/settings/wimax/WimaxEnabler;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "WimaxEnabler"

    const-string v1, "Error during enabling 4G - during WiFi popup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method
