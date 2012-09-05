.class Lcom/infraware/polarisoffice/search/InputSearchKey$1;
.super Ljava/lang/Object;
.source "InputSearchKey.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/search/InputSearchKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/search/InputSearchKey;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/search/InputSearchKey;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$1;->this$0:Lcom/infraware/polarisoffice/search/InputSearchKey;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$1;->this$0:Lcom/infraware/polarisoffice/search/InputSearchKey;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/search/InputSearchKey;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    .line 284
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$1;->this$0:Lcom/infraware/polarisoffice/search/InputSearchKey;

    iget-object v1, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$1;->this$0:Lcom/infraware/polarisoffice/search/InputSearchKey;

    #calls: Lcom/infraware/polarisoffice/search/InputSearchKey;->searchWordInDB()Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/infraware/polarisoffice/search/InputSearchKey;->access$0(Lcom/infraware/polarisoffice/search/InputSearchKey;)Ljava/util/ArrayList;

    move-result-object v1

    #calls: Lcom/infraware/polarisoffice/search/InputSearchKey;->showSearchResult(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/search/InputSearchKey;->access$1(Lcom/infraware/polarisoffice/search/InputSearchKey;Ljava/util/ArrayList;)V

    .line 285
    :cond_1a
    return-void
.end method
