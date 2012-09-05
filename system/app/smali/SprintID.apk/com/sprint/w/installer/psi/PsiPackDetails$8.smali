.class Lcom/sprint/w/installer/psi/PsiPackDetails$8;
.super Ljava/lang/Object;
.source "PsiPackDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/psi/PsiPackDetails;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/psi/PsiPackDetails;)V
    .registers 2
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$8;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dlg"
    .parameter "whichButton"

    .prologue
    .line 465
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$8;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    #calls: Lcom/sprint/w/installer/psi/PsiPackDetails;->installPack()V
    invoke-static {v0}, Lcom/sprint/w/installer/psi/PsiPackDetails;->access$300(Lcom/sprint/w/installer/psi/PsiPackDetails;)V

    .line 466
    return-void
.end method
