.class Lcom/sec/android/app/myfiles/SendAppListDialogActivity$3;
.super Ljava/lang/Object;
.source "SendAppListDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 147
    iput-object p1, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$3;->this$0:Lcom/sec/android/app/myfiles/SendAppListDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 149
    const/16 v0, 0x54

    if-ne p2, v0, :cond_9

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/myfiles/SendAppListDialogActivity$3;->this$0:Lcom/sec/android/app/myfiles/SendAppListDialogActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;->finish()V

    .line 151
    :cond_9
    const/4 v0, 0x0

    return v0
.end method
