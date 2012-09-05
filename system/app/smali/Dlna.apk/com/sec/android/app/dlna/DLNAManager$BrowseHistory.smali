.class public Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;
.super Ljava/lang/Object;
.source "DLNAManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/DLNAManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BrowseHistory"
.end annotation


# instance fields
.field items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/api/ContentItem;",
            ">;"
        }
    .end annotation
.end field

.field parent:Lcom/samsung/api/ContentItem;

.field final synthetic this$0:Lcom/sec/android/app/dlna/DLNAManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dlna/DLNAManager;Lcom/samsung/api/ContentItem;Ljava/util/List;)V
    .registers 4
    .parameter
    .parameter "parent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/api/ContentItem;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/api/ContentItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 784
    .local p3, items:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/ContentItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;->this$0:Lcom/sec/android/app/dlna/DLNAManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 785
    iput-object p2, p0, Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;->parent:Lcom/samsung/api/ContentItem;

    .line 786
    iput-object p3, p0, Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;->items:Ljava/util/List;

    .line 787
    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/api/ContentItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 794
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;->items:Ljava/util/List;

    return-object v0
.end method

.method public getParent()Lcom/samsung/api/ContentItem;
    .registers 2

    .prologue
    .line 790
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;->parent:Lcom/samsung/api/ContentItem;

    return-object v0
.end method
