.class Lcom/android/browser/OfflineComboViewActivity$3;
.super Ljava/lang/Object;
.source "OfflineComboViewActivity.java"

# interfaces
.implements Landroid/app/SearchManager$OnDismissListener;


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
    .line 302
    iput-object p1, p0, Lcom/android/browser/OfflineComboViewActivity$3;->this$0:Lcom/android/browser/OfflineComboViewActivity;

    iput-object p2, p0, Lcom/android/browser/OfflineComboViewActivity$3;->val$bar:Landroid/app/ActionBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/browser/OfflineComboViewActivity$3;->this$0:Lcom/android/browser/OfflineComboViewActivity;

    iget-object v0, v0, Lcom/android/browser/OfflineComboViewActivity;->LOGTAG:Ljava/lang/String;

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/android/browser/OfflineComboViewActivity$3;->val$bar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/browser/OfflineComboViewActivity$3;->val$bar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 306
    return-void
.end method
