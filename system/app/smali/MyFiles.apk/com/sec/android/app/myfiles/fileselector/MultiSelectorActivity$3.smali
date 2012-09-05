.class Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity$3;
.super Ljava/lang/Object;
.source "MultiSelectorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity$3;->this$0:Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 499
    packed-switch p2, :pswitch_data_3e

    .line 515
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity$3;->this$0:Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;->applyListOrder()V

    .line 516
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity$3;->this$0:Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;->notifyListChanged()V

    .line 517
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 518
    return-void

    .line 501
    :pswitch_15
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity$3;->this$0:Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

    sget v1, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;->BY_TIME_ASC:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;->setListOrder(I)V

    goto :goto_3

    .line 504
    :pswitch_1f
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity$3;->this$0:Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

    sget v1, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;->BY_TYPE_ASC:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;->setListOrder(I)V

    goto :goto_3

    .line 507
    :pswitch_29
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity$3;->this$0:Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

    sget v1, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;->BY_NAME_ASC:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;->setListOrder(I)V

    goto :goto_3

    .line 510
    :pswitch_33
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity$3;->this$0:Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

    sget v1, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;->BY_SIZE_ASC:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;->setListOrder(I)V

    goto :goto_3

    .line 499
    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_15
        :pswitch_1f
        :pswitch_29
        :pswitch_33
    .end packed-switch
.end method
