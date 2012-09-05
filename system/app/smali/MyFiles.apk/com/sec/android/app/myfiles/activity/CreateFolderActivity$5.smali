.class Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$5;
.super Ljava/lang/Object;
.source "CreateFolderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$5;->this$0:Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$5;->this$0:Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->clickOk()V

    .line 188
    return-void
.end method
