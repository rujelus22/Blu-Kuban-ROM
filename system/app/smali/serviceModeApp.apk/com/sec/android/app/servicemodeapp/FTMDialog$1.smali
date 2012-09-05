.class Lcom/sec/android/app/servicemodeapp/FTMDialog$1;
.super Ljava/lang/Object;
.source "FTMDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/servicemodeapp/FTMDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/servicemodeapp/FTMDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/servicemodeapp/FTMDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/FTMDialog$1;->this$0:Lcom/sec/android/app/servicemodeapp/FTMDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/FTMDialog$1;->this$0:Lcom/sec/android/app/servicemodeapp/FTMDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/servicemodeapp/FTMDialog;->finish()V

    .line 31
    const-string v0, "FTMDialog"

    const-string v1, "FTM: close Dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method
