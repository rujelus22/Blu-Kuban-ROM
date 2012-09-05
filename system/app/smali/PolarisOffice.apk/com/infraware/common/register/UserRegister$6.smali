.class Lcom/infraware/common/register/UserRegister$6;
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
    iput-object p1, p0, Lcom/infraware/common/register/UserRegister$6;->this$0:Lcom/infraware/common/register/UserRegister;

    .line 392
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
    .line 395
    const/16 v0, 0x3e

    if-eq p2, v0, :cond_8

    const/16 v0, 0x42

    if-ne p2, v0, :cond_13

    .line 396
    :cond_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_13

    .line 397
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 398
    const/4 v0, 0x1

    .line 401
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method
