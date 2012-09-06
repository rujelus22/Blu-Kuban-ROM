.class Lya;
.super Lvw;
.source "KixJSVM.java"


# instance fields
.field final synthetic a:LxQ;


# direct methods
.method private constructor <init>(LxQ;)V
    .registers 2
    .parameter

    .prologue
    .line 813
    iput-object p1, p0, Lya;->a:LxQ;

    invoke-direct {p0}, Lvw;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LxQ;LxR;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 813
    invoke-direct {p0, p1}, Lya;-><init>(LxQ;)V

    return-void
.end method


# virtual methods
.method public changeSelection(IIZZ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 818
    iget-object v0, p0, Lya;->a:LxQ;

    invoke-virtual {v0, p1, p2}, LxQ;->onSelectionChanged(II)V

    .line 819
    return-void
.end method

.method public newDoco(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 861
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 855
    iget-object v0, p0, Lya;->a:LxQ;

    #calls: LxQ;->onReset()V
    invoke-static {v0}, LxQ;->access$1300(LxQ;)V

    .line 856
    return-void
.end method

.method public setDocumentDeleted()V
    .registers 2

    .prologue
    .line 823
    iget-object v0, p0, Lya;->a:LxQ;

    #getter for: LxQ;->a:LxX;
    invoke-static {v0}, LxQ;->access$1200(LxQ;)LxX;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 824
    iget-object v0, p0, Lya;->a:LxQ;

    #getter for: LxQ;->a:LxX;
    invoke-static {v0}, LxQ;->access$1200(LxQ;)LxX;

    move-result-object v0

    invoke-interface {v0}, LxX;->b()V

    .line 826
    :cond_11
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 830
    iget-object v0, p0, Lya;->a:LxQ;

    invoke-virtual {v0, p1, p2}, LxQ;->onImageUrlFetched(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    return-void
.end method

.method public setModelLoadComplete()V
    .registers 2

    .prologue
    .line 835
    iget-object v0, p0, Lya;->a:LxQ;

    invoke-virtual {v0}, LxQ;->onModelLoadComplete()V

    .line 836
    return-void
.end method

.method public setModelLoadFailed(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 840
    iget-object v0, p0, Lya;->a:LxQ;

    invoke-virtual {v0, p1}, LxQ;->onModelLoadFailed(Ljava/lang/String;)V

    .line 841
    return-void
.end method

.method public setSaveState(I)V
    .registers 3
    .parameter

    .prologue
    .line 845
    iget-object v0, p0, Lya;->a:LxQ;

    invoke-virtual {v0, p1}, LxQ;->onDocumentSaveStateChanged(I)V

    .line 846
    return-void
.end method

.method public updateModel()V
    .registers 2

    .prologue
    .line 850
    iget-object v0, p0, Lya;->a:LxQ;

    invoke-virtual {v0}, LxQ;->onDocumentUpdated()V

    .line 851
    return-void
.end method
