.class Lcom/swype/android/settings/ManageUdbActivity$3;
.super Ljava/lang/Object;
.source "ManageUdbActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/settings/ManageUdbActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/settings/ManageUdbActivity;

.field final synthetic val$data:Landroid/content/Intent;

.field final synthetic val$requestCode:I

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/swype/android/settings/ManageUdbActivity;IILandroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/swype/android/settings/ManageUdbActivity$3;->this$0:Lcom/swype/android/settings/ManageUdbActivity;

    iput p2, p0, Lcom/swype/android/settings/ManageUdbActivity$3;->val$requestCode:I

    iput p3, p0, Lcom/swype/android/settings/ManageUdbActivity$3;->val$resultCode:I

    iput-object p4, p0, Lcom/swype/android/settings/ManageUdbActivity$3;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 233
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity$3;->this$0:Lcom/swype/android/settings/ManageUdbActivity;

    iget v1, p0, Lcom/swype/android/settings/ManageUdbActivity$3;->val$requestCode:I

    iget v2, p0, Lcom/swype/android/settings/ManageUdbActivity$3;->val$resultCode:I

    iget-object v3, p0, Lcom/swype/android/settings/ManageUdbActivity$3;->val$data:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/swype/android/settings/ManageUdbActivity;->handleActivityResult(IILandroid/content/Intent;)V

    .line 234
    return-void
.end method
