.class Lcom/android/mms/ui/MessageOptions$3;
.super Ljava/lang/Object;
.source "MessageOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageOptions;->createAttachmentDialog(ZJLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageOptions;)V
    .registers 2
    .parameter

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$3;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1125
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1127
    .local v1, listView:Landroid/widget/ListView;
    if-eqz v1, :cond_42

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_42

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x42

    if-eq v5, v6, :cond_20

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x17

    if-ne v5, v6, :cond_42

    .line 1131
    :cond_20
    invoke-virtual {v1}, Landroid/widget/ListView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_42

    .line 1132
    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 1134
    .local v2, selectView:Landroid/view/View;
    if-eqz v2, :cond_41

    .line 1135
    const v5, 0x7f080006

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1137
    .local v0, ch:Landroid/widget/CheckBox;
    if-eqz v0, :cond_41

    .line 1138
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_3e

    move v3, v4

    :cond_3e
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1144
    .end local v0           #ch:Landroid/widget/CheckBox;
    .end local v2           #selectView:Landroid/view/View;
    :cond_41
    :goto_41
    return v4

    :cond_42
    move v4, v3

    goto :goto_41
.end method
