.class public Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
.super Ljava/lang/Object;
.source "CategoryElement.java"


# instance fields
.field protected _categoryTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "title"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;->_categoryTitle:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;->_categoryTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .parameter "title"

    .prologue
    .line 62
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;->_categoryTitle:Ljava/lang/String;

    .line 63
    return-void
.end method
