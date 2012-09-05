.class Lcom/sec/android/app/myfiles/activity/RenameActivity$7;
.super Ljava/lang/Object;
.source "RenameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/activity/RenameActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/activity/RenameActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/activity/RenameActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity$7;->this$0:Lcom/sec/android/app/myfiles/activity/RenameActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity$7;->this$0:Lcom/sec/android/app/myfiles/activity/RenameActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->clickRename()V

    .line 216
    return-void
.end method
