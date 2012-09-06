.class LDictionaryPackage/DicatinaryPackage$BinaryDictionaryBuilderImpl;
.super Ljava/lang/Object;
.source "DicatinaryPackage.java"

# interfaces
.implements LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDictionaryPackage/DicatinaryPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BinaryDictionaryBuilderImpl"
.end annotation


# instance fields
.field private final mAssetsFilename:Ljava/lang/String;

.field private final mDescription:Ljava/lang/String;

.field private final mDictionaryResourceId:I

.field private final mId:Ljava/lang/String;

.field private mLanguage:Ljava/lang/String;

.field private final mNameId:I

.field private final mPackageContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .registers 11
    .parameter "context"
    .parameter "id"
    .parameter "language"
    .parameter "nameId"
    .parameter "assetsFilename"
    .parameter "dictionaryResourceId"
    .parameter "description"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dictionary_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LDictionaryPackage/DicatinaryPackage$BinaryDictionaryBuilderImpl;->mId:Ljava/lang/String;

    .line 67
    iput-object p3, p0, LDictionaryPackage/DicatinaryPackage$BinaryDictionaryBuilderImpl;->mLanguage:Ljava/lang/String;

    .line 68
    iput p4, p0, LDictionaryPackage/DicatinaryPackage$BinaryDictionaryBuilderImpl;->mNameId:I

    .line 69
    iput-object p7, p0, LDictionaryPackage/DicatinaryPackage$BinaryDictionaryBuilderImpl;->mDescription:Ljava/lang/String;

    .line 70
    iput-object p5, p0, LDictionaryPackage/DicatinaryPackage$BinaryDictionaryBuilderImpl;->mAssetsFilename:Ljava/lang/String;

    .line 71
    iput-object p1, p0, LDictionaryPackage/DicatinaryPackage$BinaryDictionaryBuilderImpl;->mPackageContext:Landroid/content/Context;

    .line 72
    iput p6, p0, LDictionaryPackage/DicatinaryPackage$BinaryDictionaryBuilderImpl;->mDictionaryResourceId:I

    .line 73
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    if-eqz v0, :cond_62

    const-string v0, "ASK BinaryDictionaryBuilderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creator for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LDictionaryPackage/DicatinaryPackage$BinaryDictionaryBuilderImpl;->mLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LDictionaryPackage/DicatinaryPackage$BinaryDictionaryBuilderImpl;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " assets:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LDictionaryPackage/DicatinaryPackage$BinaryDictionaryBuilderImpl;->mAssetsFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LDictionaryPackage/DicatinaryPackage$BinaryDictionaryBuilderImpl;->mPackageContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_62
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, LDictionaryPackage/DicatinaryPackage$BinaryDictionaryBuilderImpl;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDictionaryName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, LDictionaryPackage/DicatinaryPackage$BinaryDictionaryBuilderImpl;->mPackageContext:Landroid/content/Context;

    iget v1, p0, LDictionaryPackage/DicatinaryPackage$BinaryDictionaryBuilderImpl;->mNameId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDictionaryResourceId()I
    .registers 2

    .prologue
    .line 60
    iget v0, p0, LDictionaryPackage/DicatinaryPackage$BinaryDictionaryBuilderImpl;->mDictionaryResourceId:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, LDictionaryPackage/DicatinaryPackage$BinaryDictionaryBuilderImpl;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, LDictionaryPackage/DicatinaryPackage$BinaryDictionaryBuilderImpl;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, LDictionaryPackage/DicatinaryPackage$BinaryDictionaryBuilderImpl;->mPackageContext:Landroid/content/Context;

    return-object v0
.end method
