.class Lcom/sec/android/app/myfiles/SendAppListDialogActivity$4;
.super Ljava/lang/Object;
.source "SendAppListDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/SendAppListDialogActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/SendAppListDialogActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$4;->this$0:Lcom/sec/android/app/myfiles/SendAppListDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$4;->this$0:Lcom/sec/android/app/myfiles/SendAppListDialogActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->finish()V

    .line 170
    return-void
.end method
