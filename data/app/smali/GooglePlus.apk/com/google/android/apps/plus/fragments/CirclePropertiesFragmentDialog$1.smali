.class Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog$1;
.super Ljava/lang/Object;
.source "CirclePropertiesFragmentDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog$1;->this$0:Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog$1;->this$0:Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;

    #getter for: Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->mJustFollowingCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;->access$000(Lcom/google/android/apps/plus/fragments/CirclePropertiesFragmentDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 97
    return-void
.end method
