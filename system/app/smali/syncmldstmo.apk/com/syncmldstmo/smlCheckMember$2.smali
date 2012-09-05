.class Lcom/syncmldstmo/smlCheckMember$2;
.super Ljava/lang/Object;
.source "smlCheckMember.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syncmldstmo/smlCheckMember;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syncmldstmo/smlCheckMember;


# direct methods
.method constructor <init>(Lcom/syncmldstmo/smlCheckMember;)V
    .registers 2
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/syncmldstmo/smlCheckMember$2;->this$0:Lcom/syncmldstmo/smlCheckMember;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/syncmldstmo/smlCheckMember$2;->this$0:Lcom/syncmldstmo/smlCheckMember;

    invoke-virtual {v0}, Lcom/syncmldstmo/smlCheckMember;->finish()V

    .line 44
    return-void
.end method
