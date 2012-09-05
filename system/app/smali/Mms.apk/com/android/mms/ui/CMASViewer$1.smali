.class Lcom/android/mms/ui/CMASViewer$1;
.super Ljava/lang/Object;
.source "CMASViewer.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/CMASViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CMASViewer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CMASViewer;)V
    .registers 2
    .parameter

    .prologue
    .line 633
    iput-object p1, p0, Lcom/android/mms/ui/CMASViewer$1;->this$0:Lcom/android/mms/ui/CMASViewer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 7
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v2, 0x0

    .line 637
    const-string v0, "CMASViewer"

    const-string v1, "onCreateContextMenu() CMAS Viewer "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const v0, 0x7f090028

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 653
    const/16 v0, 0xd

    const v1, 0x7f090014

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 654
    const/16 v0, 0xe

    const v1, 0x7f0900af

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 656
    return-void
.end method
