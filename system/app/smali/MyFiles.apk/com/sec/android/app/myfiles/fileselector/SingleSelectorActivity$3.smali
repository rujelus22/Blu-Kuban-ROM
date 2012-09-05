.class Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity$3;
.super Ljava/lang/Object;
.source "SingleSelectorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 514
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity$3;->this$0:Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 517
    packed-switch p2, :pswitch_data_3e

    .line 533
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity$3;->this$0:Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;->applyListOrder()V

    .line 534
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity$3;->this$0:Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;->notifyListChanged()V

    .line 535
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 536
    return-void

    .line 519
    :pswitch_15
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity$3;->this$0:Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

    sget v1, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;->BY_TIME_ASC:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;->setListOrder(I)V

    goto :goto_3

    .line 522
    :pswitch_1f
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity$3;->this$0:Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

    sget v1, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;->BY_TYPE_ASC:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;->setListOrder(I)V

    goto :goto_3

    .line 525
    :pswitch_29
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity$3;->this$0:Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

    sget v1, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;->BY_NAME_ASC:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;->setListOrder(I)V

    goto :goto_3

    .line 528
    :pswitch_33
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity$3;->this$0:Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

    sget v1, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;->BY_SIZE_ASC:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;->setListOrder(I)V

    goto :goto_3

    .line 517
    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_15
        :pswitch_1f
        :pswitch_29
        :pswitch_33
    .end packed-switch
.end method
