.class Lcom/sprint/w/installer/psi/PsiPackDetails$1$2;
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
    .line 194
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$1$2;->this$1:Lcom/sprint/w/installer/psi/PsiPackDetails$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$1$2;->this$1:Lcom/sprint/w/installer/psi/PsiPackDetails$1;

    iget-object v0, v0, Lcom/sprint/w/installer/psi/PsiPackDetails$1;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    #calls: Lcom/sprint/w/installer/psi/PsiPackDetails;->setUI()V
    invoke-static {v0}, Lcom/sprint/w/installer/psi/PsiPackDetails;->access$100(Lcom/sprint/w/installer/psi/PsiPackDetails;)V

    .line 198
    return-void
.end method
