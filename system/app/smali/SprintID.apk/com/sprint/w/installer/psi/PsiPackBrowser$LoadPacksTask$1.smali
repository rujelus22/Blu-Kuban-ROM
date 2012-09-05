.class Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask$1;
.super Ljava/lang/Object;
.source "PsiPackBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask;->doInBackground([Ljava/lang/Void;)Lcom/sprint/w/installer/psi/PsiContentManager$PackResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask;)V
    .registers 2
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask$1;->this$1:Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask$1;->this$1:Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask;

    iget-object v0, v0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    invoke-virtual {v0}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 365
    :goto_a
    return-void

    .line 364
    :cond_b
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask$1;->this$1:Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask;

    iget-object v0, v0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->showDialog(I)V

    goto :goto_a
.end method
