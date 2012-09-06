.class Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$1;
.super Ljava/lang/Object;
.source "SelectInstrumentFamilyDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;

.field final synthetic val$instrumentFamilyList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$1;->this$0:Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;

    iput-object p2, p0, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$1;->val$instrumentFamilyList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$1;->this$0:Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$SelectInstrumentFamilyListener;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$1;->val$instrumentFamilyList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$1;->this$0:Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;

    #getter for: Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->mSelectionList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->access$000(Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$SelectInstrumentFamilyListener;->onInstrumentFamilySelected(I)V

    .line 145
    return-void
.end method
