.class public Lcom/sprint/w/installer/psi/PsiContentManager$PackResults;
.super Ljava/lang/Object;
.source "PsiContentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/psi/PsiContentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackResults"
.end annotation


# instance fields
.field featuredPacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/psi/ServicePack;",
            ">;"
        }
    .end annotation
.end field

.field folders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/psi/Folder;",
            ">;"
        }
    .end annotation
.end field

.field packs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/psi/ServicePack;",
            ">;"
        }
    .end annotation
.end field

.field success:Z

.field final synthetic this$0:Lcom/sprint/w/installer/psi/PsiContentManager;


# direct methods
.method public constructor <init>(Lcom/sprint/w/installer/psi/PsiContentManager;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter "success"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/psi/Folder;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/psi/ServicePack;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/psi/ServicePack;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 409
    .local p2, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/psi/Folder;>;"
    .local p3, packs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/psi/ServicePack;>;"
    .local p4, featuredPacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/psi/ServicePack;>;"
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiContentManager$PackResults;->this$0:Lcom/sprint/w/installer/psi/PsiContentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput-object p2, p0, Lcom/sprint/w/installer/psi/PsiContentManager$PackResults;->folders:Ljava/util/ArrayList;

    .line 411
    iput-object p3, p0, Lcom/sprint/w/installer/psi/PsiContentManager$PackResults;->packs:Ljava/util/ArrayList;

    .line 412
    iput-object p4, p0, Lcom/sprint/w/installer/psi/PsiContentManager$PackResults;->featuredPacks:Ljava/util/ArrayList;

    .line 413
    iput-boolean p5, p0, Lcom/sprint/w/installer/psi/PsiContentManager$PackResults;->success:Z

    .line 414
    return-void
.end method


# virtual methods
.method public getFeaturedPacks()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/psi/ServicePack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiContentManager$PackResults;->featuredPacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFolders()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/psi/Folder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiContentManager$PackResults;->folders:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPacks()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/psi/ServicePack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiContentManager$PackResults;->packs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isSuccess()Z
    .registers 2

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/sprint/w/installer/psi/PsiContentManager$PackResults;->success:Z

    return v0
.end method
