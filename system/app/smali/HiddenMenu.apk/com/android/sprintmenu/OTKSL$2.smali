.class Lcom/android/sprintmenu/OTKSL$2;
.super Ljava/lang/Object;
.source "OTKSL.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sprintmenu/OTKSL;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/OTKSL;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/OTKSL;)V
    .registers 2
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/sprintmenu/OTKSL$2;->this$0:Lcom/android/sprintmenu/OTKSL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/sprintmenu/OTKSL$2;->this$0:Lcom/android/sprintmenu/OTKSL;

    invoke-virtual {v0}, Lcom/android/sprintmenu/OTKSL;->finish()V

    .line 163
    return-void
.end method
