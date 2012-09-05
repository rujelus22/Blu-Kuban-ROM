.class Lcom/samsung/swift/install/InstallActivity$7;
.super Ljava/lang/Object;
.source "InstallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/install/InstallActivity;->showDeveloperModeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/install/InstallActivity;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/samsung/swift/install/InstallActivity;Landroid/app/Activity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/samsung/swift/install/InstallActivity$7;->this$0:Lcom/samsung/swift/install/InstallActivity;

    iput-object p2, p0, Lcom/samsung/swift/install/InstallActivity$7;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 385
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/swift/install/InstallActivity$7;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 386
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/samsung/swift/R$string;->developerMode:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 387
    sget v1, Lcom/samsung/swift/R$string;->developerModeMessage:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 388
    sget v1, Lcom/samsung/swift/R$string;->yes:I

    new-instance v2, Lcom/samsung/swift/install/InstallActivity$7$1;

    invoke-direct {v2, p0}, Lcom/samsung/swift/install/InstallActivity$7$1;-><init>(Lcom/samsung/swift/install/InstallActivity$7;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 399
    sget v1, Lcom/samsung/swift/R$string;->no:I

    new-instance v2, Lcom/samsung/swift/install/InstallActivity$7$2;

    invoke-direct {v2, p0}, Lcom/samsung/swift/install/InstallActivity$7$2;-><init>(Lcom/samsung/swift/install/InstallActivity$7;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 409
    iget-object v1, p0, Lcom/samsung/swift/install/InstallActivity$7;->this$0:Lcom/samsung/swift/install/InstallActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    #setter for: Lcom/samsung/swift/install/InstallActivity;->confimrationDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/samsung/swift/install/InstallActivity;->access$302(Lcom/samsung/swift/install/InstallActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 410
    return-void
.end method
