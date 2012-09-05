.class Lcom/android/sprintmenu/MSL_Checker$5;
.super Ljava/lang/Object;
.source "MSL_Checker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sprintmenu/MSL_Checker;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/MSL_Checker;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/MSL_Checker;)V
    .registers 2
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/sprintmenu/MSL_Checker$5;->this$0:Lcom/android/sprintmenu/MSL_Checker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 381
    invoke-static {}, Lcom/android/sprintmenu/MSL_Checker;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Restore : Yes"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v0, p0, Lcom/android/sprintmenu/MSL_Checker$5;->this$0:Lcom/android/sprintmenu/MSL_Checker;

    invoke-virtual {v0}, Lcom/android/sprintmenu/MSL_Checker;->initiateActivity()V

    .line 383
    return-void
.end method
