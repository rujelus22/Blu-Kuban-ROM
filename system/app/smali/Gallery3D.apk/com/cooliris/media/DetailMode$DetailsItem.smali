.class public Lcom/cooliris/media/DetailMode$DetailsItem;
.super Ljava/lang/Object;
.source "DetailMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/DetailMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetailsItem"
.end annotation


# instance fields
.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "title"
    .parameter "summary"

    .prologue
    .line 387
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput-object p1, p0, Lcom/cooliris/media/DetailMode$DetailsItem;->mTitle:Ljava/lang/String;

    .line 389
    iput-object p2, p0, Lcom/cooliris/media/DetailMode$DetailsItem;->mSummary:Ljava/lang/String;

    .line 390
    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/String;
    .registers 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/cooliris/media/DetailMode$DetailsItem;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/cooliris/media/DetailMode$DetailsItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method
