.class public Lcom/sprint/dsa/res/SzResources;
.super Landroid/content/res/Resources;
.source "SzResources.java"


# static fields
.field private static lookupCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mQualifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/dsa/res/CustomResourceQualifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    sput-object v0, Lcom/sprint/dsa/res/SzResources;->lookupCache:Ljava/util/Map;

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 5
    .parameter "resources"

    .prologue
    .line 24
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/res/SzResources;->mQualifiers:Ljava/util/List;

    .line 26
    iget-object v0, p0, Lcom/sprint/dsa/res/SzResources;->mQualifiers:Ljava/util/List;

    invoke-static {}, Lcom/sprint/dsa/data/Device;->getInstance()Lcom/sprint/dsa/data/Device;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method


# virtual methods
.method public addQualifier(Lcom/sprint/dsa/res/CustomResourceQualifier;)V
    .registers 3
    .parameter "qualifier"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sprint/dsa/res/SzResources;->mQualifiers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public getQualifiedId(I)I
    .registers 12
    .parameter "origId"

    .prologue
    .line 38
    iget-object v7, p0, Lcom/sprint/dsa/res/SzResources;->mQualifiers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_9

    .line 68
    .end local p1
    :cond_8
    :goto_8
    return p1

    .line 41
    .restart local p1
    :cond_9
    sget-object v7, Lcom/sprint/dsa/res/SzResources;->lookupCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 42
    sget-object v7, Lcom/sprint/dsa/res/SzResources;->lookupCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_8

    .line 45
    :cond_26
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, name:Ljava/lang/String;
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, defType:Ljava/lang/String;
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, defPackage:Ljava/lang/String;
    const/4 v6, 0x0

    .line 51
    .local v6, suffix:Ljava/lang/String;
    const/4 v3, 0x0

    .line 52
    .local v3, modName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 53
    .local v2, modId:I
    iget-object v7, p0, Lcom/sprint/dsa/res/SzResources;->mQualifiers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sprint/dsa/res/CustomResourceQualifier;

    .line 55
    .local v5, qualifier:Lcom/sprint/dsa/res/CustomResourceQualifier;
    invoke-interface {v5}, Lcom/sprint/dsa/res/CustomResourceQualifier;->getResourceQualifier()Ljava/lang/String;

    move-result-object v6

    .line 56
    if-eqz v6, :cond_3b

    .line 58
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-super {p0, v3, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 62
    if-lez v2, :cond_3b

    move p1, v2

    .line 63
    goto :goto_8
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/res/SzResources;->getQualifiedId(I)I

    move-result p1

    .line 81
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .parameter "id"
    .parameter "formatArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/res/SzResources;->getQualifiedId(I)I

    move-result p1

    .line 75
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .registers 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/res/SzResources;->getQualifiedId(I)I

    move-result p1

    .line 93
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "id"
    .parameter "def"

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/res/SzResources;->getQualifiedId(I)I

    move-result p1

    .line 87
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .registers 4
    .parameter "set"
    .parameter "attrs"

    .prologue
    .line 99
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method
