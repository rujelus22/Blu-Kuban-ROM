.class Lcom/infraware/common/register/UserRegister$8;
.super Ljava/lang/Object;
.source "UserRegister.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    iput-object p1, p0, Lcom/infraware/common/register/UserRegister$8;->this$0:Lcom/infraware/common/register/UserRegister;

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "view"
    .parameter "keycode"
    .parameter "event"

    .prologue
    .line 416
    const/16 v0, 0x42

    if-ne p2, v0, :cond_d

    .line 417
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_d

    .line 418
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 421
    :cond_d
    const/4 v0, 0x0

    return v0
.end method
