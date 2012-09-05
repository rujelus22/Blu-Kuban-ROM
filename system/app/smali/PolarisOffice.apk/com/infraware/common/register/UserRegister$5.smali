.class Lcom/infraware/common/register/UserRegister$5;
.super Ljava/lang/Object;
.source "UserRegister.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/common/register/UserRegister;->setControlAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/register/UserRegister;


# direct methods
.method constructor <init>(Lcom/infraware/common/register/UserRegister;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/common/register/UserRegister$5;->this$0:Lcom/infraware/common/register/UserRegister;

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister$5;->this$0:Lcom/infraware/common/register/UserRegister;

    #setter for: Lcom/infraware/common/register/UserRegister;->m_bAfterWeekCheck:Z
    invoke-static {v0, p2}, Lcom/infraware/common/register/UserRegister;->access$10(Lcom/infraware/common/register/UserRegister;Z)V

    .line 388
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister$5;->this$0:Lcom/infraware/common/register/UserRegister;

    invoke-virtual {v0}, Lcom/infraware/common/register/UserRegister;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/infraware/common/util/Utils;->playKeyClickSoundEffect(Landroid/content/Context;)V

    .line 389
    return-void
.end method
