.class public Lcom/sprint/w/installer/psi/PackOnItemClickListener;
.super Ljava/lang/Object;
.source "PackOnItemClickListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final EXTRA_FOLDER_ID:Ljava/lang/String; = "folderId"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"


# instance fields
.field nIntentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, folderIntentClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PackOnItemClickListener;->nIntentClass:Ljava/lang/Class;

    .line 18
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, av:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprint/w/installer/psi/Listable;

    .line 23
    .local v2, item:Lcom/sprint/w/installer/psi/Listable;
    if-eqz v2, :cond_29

    .line 24
    invoke-interface {v2}, Lcom/sprint/w/installer/psi/Listable;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    move-object v3, v2

    .line 25
    check-cast v3, Lcom/sprint/w/installer/psi/ServicePack;

    .line 26
    .local v3, pack:Lcom/sprint/w/installer/psi/ServicePack;
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/sprint/w/installer/psi/PsiPackDetails;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .local v1, i:Landroid/content/Intent;
    const-string v4, "sp"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 37
    .end local v1           #i:Landroid/content/Intent;
    .end local v3           #pack:Lcom/sprint/w/installer/psi/ServicePack;
    :cond_29
    :goto_29
    return-void

    .line 29
    :cond_2a
    invoke-interface {v2}, Lcom/sprint/w/installer/psi/Listable;->getType()I

    move-result v4

    if-nez v4, :cond_29

    move-object v0, v2

    .line 30
    check-cast v0, Lcom/sprint/w/installer/psi/Folder;

    .line 31
    .local v0, f:Lcom/sprint/w/installer/psi/Folder;
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sprint/w/installer/psi/PackOnItemClickListener;->nIntentClass:Ljava/lang/Class;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .restart local v1       #i:Landroid/content/Intent;
    const-string v4, "folderId"

    iget-object v5, v0, Lcom/sprint/w/installer/psi/Folder;->id:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const-string v4, "title"

    iget-object v5, v0, Lcom/sprint/w/installer/psi/Folder;->title:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_29
.end method
