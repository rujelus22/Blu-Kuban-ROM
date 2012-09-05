.class Lcom/sec/android/app/myfiles/activity/RenameActivity$4;
.super Ljava/lang/Object;
.source "RenameActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/activity/RenameActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 176
    iput-object p1, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity$4;->this$0:Lcom/sec/android/app/myfiles/activity/RenameActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/RenameActivity$4;->this$0:Lcom/sec/android/app/myfiles/activity/RenameActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/activity/RenameActivity;->clickRename()V

    .line 179
    return-void
.end method
