.class public abstract Lcom/actionbarsherlock/view/ActionProvider;
.super Ljava/lang/Object;
.source "ActionProvider.java"


# instance fields
.field private mSubUiVisibilityListener:Lcom/actionbarsherlock/view/ActionProvider$SubUiVisibilityListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method


# virtual methods
.method public hasSubMenu()Z
    .registers 2

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onCreateActionView()Landroid/view/View;
.end method

.method public onPerformDefaultAction()Z
    .registers 2

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareSubMenu(Lcom/actionbarsherlock/view/SubMenu;)V
    .registers 2
    .parameter

    .prologue
    .line 142
    return-void
.end method

.method public setSubUiVisibilityListener(Lcom/actionbarsherlock/view/ActionProvider$SubUiVisibilityListener;)V
    .registers 2
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/actionbarsherlock/view/ActionProvider;->mSubUiVisibilityListener:Lcom/actionbarsherlock/view/ActionProvider$SubUiVisibilityListener;

    .line 162
    return-void
.end method

.method public subUiVisibilityChanged(Z)V
    .registers 3
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/actionbarsherlock/view/ActionProvider;->mSubUiVisibilityListener:Lcom/actionbarsherlock/view/ActionProvider$SubUiVisibilityListener;

    if-eqz v0, :cond_9

    .line 153
    iget-object v0, p0, Lcom/actionbarsherlock/view/ActionProvider;->mSubUiVisibilityListener:Lcom/actionbarsherlock/view/ActionProvider$SubUiVisibilityListener;

    invoke-interface {v0, p1}, Lcom/actionbarsherlock/view/ActionProvider$SubUiVisibilityListener;->onSubUiVisibilityChanged(Z)V

    .line 155
    :cond_9
    return-void
.end method
