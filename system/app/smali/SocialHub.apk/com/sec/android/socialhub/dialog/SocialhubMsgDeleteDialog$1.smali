.class Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog$1;
.super Ljava/lang/Object;
.source "SocialhubMsgDeleteDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->setLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog$1;->this$0:Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 79
    .local v0, checkbox:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x1

    :goto_d
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 80
    return-void

    .line 79
    :cond_11
    const/4 v1, 0x0

    goto :goto_d
.end method
