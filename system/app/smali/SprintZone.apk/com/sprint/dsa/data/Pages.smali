.class public Lcom/sprint/dsa/data/Pages;
.super Ljava/lang/Object;
.source "Pages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/dsa/data/Pages$Page;
    }
.end annotation


# static fields
.field public static final DB_COL_ID:Ljava/lang/String; = "pid"

.field public static final DB_COL_ORDER:Ljava/lang/String; = "page_order"

.field public static final DB_COL_SID:Ljava/lang/String; = "sid"

.field public static final DB_ID:Ljava/lang/String; = "id"

.field private static final TAG:Ljava/lang/String; = "SprintZone:Pages"


# instance fields
.field protected mPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/dsa/data/Pages$Page;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/data/Pages;->mPages:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/data/Pages;->mPages:Ljava/util/ArrayList;

    .line 22
    return-void
.end method


# virtual methods
.method public addContent(III)V
    .registers 6
    .parameter "pId"
    .parameter "catId"
    .parameter "order"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sprint/dsa/data/Pages;->mPages:Ljava/util/ArrayList;

    new-instance v1, Lcom/sprint/dsa/data/Pages$Page;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sprint/dsa/data/Pages$Page;-><init>(Lcom/sprint/dsa/data/Pages;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public getCategoryIds(I)Ljava/lang/String;
    .registers 7
    .parameter "pId"

    .prologue
    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v2, strBuilder:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 47
    .local v0, commaFlag:Z
    iget-object v3, p0, Lcom/sprint/dsa/data/Pages;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_17

    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 47
    :cond_17
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprint/dsa/data/Pages$Page;

    .line 48
    .local v1, page:Lcom/sprint/dsa/data/Pages$Page;
    if-eqz v0, :cond_24

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_24
    #getter for: Lcom/sprint/dsa/data/Pages$Page;->mPageId:I
    invoke-static {v1}, Lcom/sprint/dsa/data/Pages$Page;->access$0(Lcom/sprint/dsa/data/Pages$Page;)I

    move-result v4

    if-ne v4, p1, :cond_31

    #getter for: Lcom/sprint/dsa/data/Pages$Page;->mCategoryId:I
    invoke-static {v1}, Lcom/sprint/dsa/data/Pages$Page;->access$1(Lcom/sprint/dsa/data/Pages$Page;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    :cond_31
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public getPages()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/dsa/data/Pages$Page;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sprint/dsa/data/Pages;->mPages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sprint/dsa/data/Pages;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public saveToDb(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;)V
    .registers 8
    .parameter "dbHelper"
    .parameter "scheme"

    .prologue
    .line 80
    if-nez p1, :cond_3

    .line 98
    :cond_2
    return-void

    .line 86
    :cond_3
    invoke-virtual {p1, p2}, Lcom/sprint/dsa/data/DbAdapter;->cleanPagesContent(Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lcom/sprint/dsa/data/Pages;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprint/dsa/data/Pages$Page;

    .line 91
    .local v1, page:Lcom/sprint/dsa/data/Pages$Page;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 92
    .local v0, gv:Landroid/content/ContentValues;
    const-string v3, "pid"

    #getter for: Lcom/sprint/dsa/data/Pages$Page;->mPageId:I
    invoke-static {v1}, Lcom/sprint/dsa/data/Pages$Page;->access$0(Lcom/sprint/dsa/data/Pages$Page;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    const-string v3, "sid"

    #getter for: Lcom/sprint/dsa/data/Pages$Page;->mCategoryId:I
    invoke-static {v1}, Lcom/sprint/dsa/data/Pages$Page;->access$1(Lcom/sprint/dsa/data/Pages$Page;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    const-string v3, "page_order"

    #getter for: Lcom/sprint/dsa/data/Pages$Page;->mOrder:I
    invoke-static {v1}, Lcom/sprint/dsa/data/Pages$Page;->access$2(Lcom/sprint/dsa/data/Pages$Page;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    invoke-virtual {p1, v0}, Lcom/sprint/dsa/data/DbAdapter;->insertPage(Landroid/content/ContentValues;)J

    goto :goto_c
.end method

.method public size()I
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sprint/dsa/data/Pages;->mPages:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 38
    iget-object v0, p0, Lcom/sprint/dsa/data/Pages;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 40
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
