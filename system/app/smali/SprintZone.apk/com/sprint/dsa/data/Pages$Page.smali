.class Lcom/sprint/dsa/data/Pages$Page;
.super Ljava/lang/Object;
.source "Pages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/data/Pages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Page"
.end annotation


# instance fields
.field private mCategoryId:I

.field private mOrder:I

.field private mPageId:I

.field final synthetic this$0:Lcom/sprint/dsa/data/Pages;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/data/Pages;III)V
    .registers 5
    .parameter
    .parameter "pId"
    .parameter "catId"
    .parameter "order"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sprint/dsa/data/Pages$Page;->this$0:Lcom/sprint/dsa/data/Pages;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p2, p0, Lcom/sprint/dsa/data/Pages$Page;->mPageId:I

    .line 63
    iput p3, p0, Lcom/sprint/dsa/data/Pages$Page;->mCategoryId:I

    .line 64
    iput p4, p0, Lcom/sprint/dsa/data/Pages$Page;->mOrder:I

    return-void
.end method

.method static synthetic access$0(Lcom/sprint/dsa/data/Pages$Page;)I
    .registers 2
    .parameter

    .prologue
    .line 57
    iget v0, p0, Lcom/sprint/dsa/data/Pages$Page;->mPageId:I

    return v0
.end method

.method static synthetic access$1(Lcom/sprint/dsa/data/Pages$Page;)I
    .registers 2
    .parameter

    .prologue
    .line 58
    iget v0, p0, Lcom/sprint/dsa/data/Pages$Page;->mCategoryId:I

    return v0
.end method

.method static synthetic access$2(Lcom/sprint/dsa/data/Pages$Page;)I
    .registers 2
    .parameter

    .prologue
    .line 59
    iget v0, p0, Lcom/sprint/dsa/data/Pages$Page;->mOrder:I

    return v0
.end method


# virtual methods
.method public getCategoryId()I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Lcom/sprint/dsa/data/Pages$Page;->mCategoryId:I

    return v0
.end method

.method public getOrder()I
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Lcom/sprint/dsa/data/Pages$Page;->mOrder:I

    return v0
.end method

.method public getPageId()I
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Lcom/sprint/dsa/data/Pages$Page;->mPageId:I

    return v0
.end method
