.class Lcom/android/sprintmenu/SCRTN$3;
.super Ljava/lang/Object;
.source "SCRTN.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sprintmenu/SCRTN;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/SCRTN;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/SCRTN;)V
    .registers 2
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/sprintmenu/SCRTN$3;->this$0:Lcom/android/sprintmenu/SCRTN;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 91
    invoke-static {}, Lcom/android/sprintmenu/SCRTN;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK select"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/android/sprintmenu/SCRTN$3;->this$0:Lcom/android/sprintmenu/SCRTN;

    #calls: Lcom/android/sprintmenu/SCRTN;->Reset_SCRTN()V
    invoke-static {v0}, Lcom/android/sprintmenu/SCRTN;->access$100(Lcom/android/sprintmenu/SCRTN;)V

    .line 93
    return-void
.end method
