.class Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder$1;
.super Ljava/lang/Object;
.source "SubMenuDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->create(I)Lcom/sec/android/mimage/photoretouching/SubMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;

.field private final synthetic val$dialog:Lcom/sec/android/mimage/photoretouching/SubMenuDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;Lcom/sec/android/mimage/photoretouching/SubMenuDialog;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder$1;->this$1:Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder$1;->val$dialog:Lcom/sec/android/mimage/photoretouching/SubMenuDialog;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 131
    const v1, 0x7f090026

    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 132
    .local v0, check:Landroid/widget/CheckBox;
    if-eqz v0, :cond_18

    const/4 v1, 0x5

    if-ne p3, v1, :cond_18

    .line 133
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x0

    :goto_15
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 135
    :cond_18
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder$1;->this$1:Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder$1;->val$dialog:Lcom/sec/android/mimage/photoretouching/SubMenuDialog;

    invoke-interface {v1, v2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 136
    return-void

    .line 133
    :cond_22
    const/4 v1, 0x1

    goto :goto_15
.end method
