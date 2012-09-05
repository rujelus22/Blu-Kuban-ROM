.class Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$7;
.super Ljava/lang/Object;
.source "CreateFolderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 198
    iput-object p1, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$7;->this$0:Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$7;->this$0:Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->setResult(I)V

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity$7;->this$0:Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;->finish()V

    .line 202
    return-void
.end method
