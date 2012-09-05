.class Lcom/android/browser/OfflineComboViewActivity$1;
.super Ljava/lang/Object;
.source "OfflineComboViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/OfflineComboViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/OfflineComboViewActivity;

.field final synthetic val$bar:Landroid/app/ActionBar;


# direct methods
.method constructor <init>(Lcom/android/browser/OfflineComboViewActivity;Landroid/app/ActionBar;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/browser/OfflineComboViewActivity$1;->this$0:Lcom/android/browser/OfflineComboViewActivity;

    iput-object p2, p0, Lcom/android/browser/OfflineComboViewActivity$1;->val$bar:Landroid/app/ActionBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 273
    iget-object v0, p0, Lcom/android/browser/OfflineComboViewActivity$1;->val$bar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/browser/OfflineComboViewActivity$1;->val$bar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, -0x11

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 284
    iget-object v0, p0, Lcom/android/browser/OfflineComboViewActivity$1;->this$0:Lcom/android/browser/OfflineComboViewActivity;

    invoke-virtual {v0, v3, v2, v3, v2}, Lcom/android/browser/OfflineComboViewActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 286
    return-void
.end method
