.class public Lcom/infraware/polarisoffice/common/ExEditText;
.super Landroid/widget/EditText;
.source "ExEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/polarisoffice/common/ExEditText$OnKeyPreImeListener;
    }
.end annotation


# instance fields
.field protected mOnKeyPreImeListener:Lcom/infraware/polarisoffice/common/ExEditText$OnKeyPreImeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrSet"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ExEditText;->mOnKeyPreImeListener:Lcom/infraware/polarisoffice/common/ExEditText$OnKeyPreImeListener;

    if-eqz v0, :cond_18

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_18

    .line 29
    const/4 v0, 0x4

    if-eq p1, v0, :cond_11

    const/16 v0, 0x52

    if-ne p1, v0, :cond_18

    .line 30
    :cond_11
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ExEditText;->mOnKeyPreImeListener:Lcom/infraware/polarisoffice/common/ExEditText$OnKeyPreImeListener;

    invoke-interface {v0, p1, p2}, Lcom/infraware/polarisoffice/common/ExEditText$OnKeyPreImeListener;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 32
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public setOnKeyPreImeListener(Lcom/infraware/polarisoffice/common/ExEditText$OnKeyPreImeListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/ExEditText;->mOnKeyPreImeListener:Lcom/infraware/polarisoffice/common/ExEditText$OnKeyPreImeListener;

    .line 13
    return-void
.end method
