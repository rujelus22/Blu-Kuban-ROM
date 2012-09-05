.class Lcom/sprint/w/installer/psi/PsiPackDetails$1$1;
.super Ljava/lang/Object;
.source "PsiPackDetails.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/psi/PsiPackDetails$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/w/installer/psi/PsiPackDetails$1;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/psi/PsiPackDetails$1;)V
    .registers 2
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$1$1;->this$1:Lcom/sprint/w/installer/psi/PsiPackDetails$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$1$1;->this$1:Lcom/sprint/w/installer/psi/PsiPackDetails$1;

    iget-object v0, v0, Lcom/sprint/w/installer/psi/PsiPackDetails$1;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    invoke-virtual {v0}, Lcom/sprint/w/installer/psi/PsiPackDetails;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 190
    :goto_a
    return-void

    .line 189
    :cond_b
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$1$1;->this$1:Lcom/sprint/w/installer/psi/PsiPackDetails$1;

    iget-object v0, v0, Lcom/sprint/w/installer/psi/PsiPackDetails$1;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/psi/PsiPackDetails;->showDialog(I)V

    goto :goto_a
.end method
