.class public Lcom/sprint/dsa/data/CategoryItem;
.super Ljava/lang/Object;
.source "CategoryItem.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field mAppScheme:Ljava/lang/String;

.field mExpanded:Z

.field mFeaturesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/dsa/data/FeatureItem;",
            ">;"
        }
    .end annotation
.end field

.field mPackId:Ljava/lang/String;

.field mSid:J

.field mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/data/CategoryItem;->mFeaturesList:Ljava/util/ArrayList;

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/dsa/data/CategoryItem;->mExpanded:Z

    .line 18
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 8
    .parameter "sid"
    .parameter "title"
    .parameter "page"
    .parameter "expanded"
    .parameter "packId"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/data/CategoryItem;->mFeaturesList:Ljava/util/ArrayList;

    .line 21
    iput-wide p1, p0, Lcom/sprint/dsa/data/CategoryItem;->mSid:J

    .line 22
    iput-object p3, p0, Lcom/sprint/dsa/data/CategoryItem;->mTitle:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/sprint/dsa/data/CategoryItem;->mAppScheme:Ljava/lang/String;

    .line 24
    iput-boolean p5, p0, Lcom/sprint/dsa/data/CategoryItem;->mExpanded:Z

    .line 25
    iput-object p6, p0, Lcom/sprint/dsa/data/CategoryItem;->mPackId:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method protected clone()Lcom/sprint/dsa/data/CategoryItem;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lcom/sprint/dsa/data/CategoryItem;

    iget-wide v1, p0, Lcom/sprint/dsa/data/CategoryItem;->mSid:J

    iget-object v3, p0, Lcom/sprint/dsa/data/CategoryItem;->mTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/sprint/dsa/data/CategoryItem;->mAppScheme:Ljava/lang/String;

    .line 33
    iget-boolean v5, p0, Lcom/sprint/dsa/data/CategoryItem;->mExpanded:Z

    iget-object v6, p0, Lcom/sprint/dsa/data/CategoryItem;->mPackId:Ljava/lang/String;

    .line 32
    invoke-direct/range {v0 .. v6}, Lcom/sprint/dsa/data/CategoryItem;-><init>(JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 34
    .local v0, cloned:Lcom/sprint/dsa/data/CategoryItem;
    iget-object v1, p0, Lcom/sprint/dsa/data/CategoryItem;->mFeaturesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/sprint/dsa/data/CategoryItem;->mFeaturesList:Ljava/util/ArrayList;

    .line 35
    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/sprint/dsa/data/CategoryItem;->clone()Lcom/sprint/dsa/data/CategoryItem;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/sprint/dsa/data/CategoryItem;
    .registers 8

    .prologue
    .line 59
    new-instance v0, Lcom/sprint/dsa/data/CategoryItem;

    iget-wide v1, p0, Lcom/sprint/dsa/data/CategoryItem;->mSid:J

    iget-object v3, p0, Lcom/sprint/dsa/data/CategoryItem;->mTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/sprint/dsa/data/CategoryItem;->mAppScheme:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/sprint/dsa/data/CategoryItem;->mExpanded:Z

    iget-object v6, p0, Lcom/sprint/dsa/data/CategoryItem;->mPackId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/sprint/dsa/data/CategoryItem;-><init>(JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 60
    .local v0, group:Lcom/sprint/dsa/data/CategoryItem;
    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sprint/dsa/data/CategoryItem;->mFeaturesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupPage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sprint/dsa/data/CategoryItem;->mAppScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getPromo(I)Lcom/sprint/dsa/data/FeatureItem;
    .registers 3
    .parameter "position"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sprint/dsa/data/CategoryItem;->mFeaturesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/data/FeatureItem;

    return-object v0
.end method

.method public getPromos()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/dsa/data/FeatureItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sprint/dsa/data/CategoryItem;->mFeaturesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSid()J
    .registers 3

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/sprint/dsa/data/CategoryItem;->mSid:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sprint/dsa/data/CategoryItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isExpanded()Z
    .registers 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/sprint/dsa/data/CategoryItem;->mExpanded:Z

    return v0
.end method

.method public setExpanded(Z)V
    .registers 2
    .parameter "mExpanded"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/sprint/dsa/data/CategoryItem;->mExpanded:Z

    .line 73
    return-void
.end method
