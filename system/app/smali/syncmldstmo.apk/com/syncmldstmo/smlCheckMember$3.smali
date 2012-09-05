.class Lcom/syncmldstmo/smlCheckMember$3;
.super Ljava/lang/Object;
.source "smlCheckMember.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 34
    iput-object p1, p0, Lcom/syncmldstmo/smlCheckMember$3;->this$0:Lcom/syncmldstmo/smlCheckMember;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/syncmldstmo/smlCheckMember$3;->this$0:Lcom/syncmldstmo/smlCheckMember;

    invoke-virtual {v0}, Lcom/syncmldstmo/smlCheckMember;->finish()V

    .line 38
    return-void
.end method
