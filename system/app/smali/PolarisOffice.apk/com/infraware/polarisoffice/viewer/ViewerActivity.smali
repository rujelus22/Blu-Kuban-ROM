.class public Lcom/infraware/polarisoffice/viewer/ViewerActivity;
.super Lcom/infraware/office/baseframe/EvBaseViewerActivity;
.source "ViewerActivity.java"


# instance fields
.field protected mMenu:Landroid/view/Menu;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/polarisoffice/viewer/ViewerActivity;->mMenu:Landroid/view/Menu;

    .line 15
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/viewer/ViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 21
    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/viewer/ViewerActivity;->setContentView(I)V

    .line 22
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    iget-object v0, p0, Lcom/infraware/polarisoffice/viewer/ViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0, p0}, Lcom/infraware/office/baseframe/EvBaseView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 24
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 34
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/viewer/ViewerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 44
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0b000e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 45
    iput-object p1, p0, Lcom/infraware/polarisoffice/viewer/ViewerActivity;->mMenu:Landroid/view/Menu;

    .line 46
    iget-object v1, p0, Lcom/infraware/polarisoffice/viewer/ViewerActivity;->mMenu:Landroid/view/Menu;

    const v2, 0x7f0c032b

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 47
    iget v1, p0, Lcom/infraware/polarisoffice/viewer/ViewerActivity;->mDocExtensionType:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2b

    .line 48
    iget-object v1, p0, Lcom/infraware/polarisoffice/viewer/ViewerActivity;->mMenu:Landroid/view/Menu;

    const v2, 0x7f0c0333

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 50
    :cond_2b
    const v1, 0x7f08030e

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/viewer/ViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FV09"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 51
    iget-object v1, p0, Lcom/infraware/polarisoffice/viewer/ViewerActivity;->mMenu:Landroid/view/Menu;

    const v2, 0x7f0c032f

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f080284

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 52
    :cond_49
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onLocaleChange(I)V
    .registers 6
    .parameter "nLocale"

    .prologue
    const/4 v3, 0x0

    .line 57
    iget-object v0, p0, Lcom/infraware/polarisoffice/viewer/ViewerActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/infraware/polarisoffice/viewer/ViewerActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 58
    iget-object v0, p0, Lcom/infraware/polarisoffice/viewer/ViewerActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 60
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/viewer/ViewerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b000e

    iget-object v2, p0, Lcom/infraware/polarisoffice/viewer/ViewerActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 61
    iget-object v0, p0, Lcom/infraware/polarisoffice/viewer/ViewerActivity;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0c032b

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 62
    iget v0, p0, Lcom/infraware/polarisoffice/viewer/ViewerActivity;->mDocExtensionType:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_3c

    .line 63
    iget-object v0, p0, Lcom/infraware/polarisoffice/viewer/ViewerActivity;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0c0333

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 65
    :cond_3c
    const v0, 0x7f08030e

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/viewer/ViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FV09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 66
    iget-object v0, p0, Lcom/infraware/polarisoffice/viewer/ViewerActivity;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0c032f

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f080284

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 69
    :cond_5a
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onLocaleChange(I)V

    .line 70
    return-void
.end method

.method public setEvListener()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 28
    iget-object v0, p0, Lcom/infraware/polarisoffice/viewer/ViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/evengine/EvInterface;->ISetListener(Lcom/infraware/office/evengine/EvListener$ViewerListener;Lcom/infraware/office/evengine/EvListener$EditorListener;Lcom/infraware/office/evengine/EvListener$WordEditorListener;Lcom/infraware/office/evengine/EvListener$PptEditorListener;Lcom/infraware/office/evengine/EvListener$SheetEditorListener;Lcom/infraware/office/evengine/EvListener$PreviewListener;)V

    .line 29
    return-void
.end method
