.class public Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;
.super Ljava/lang/Object;
.source "SPLTypeInfo.java"

# interfaces
.implements Lcom/sec/print/mobileprint/printoptionattribute/IPDLTypeInfo;


# static fields
.field public static final COMPRESSION_BANDED_JBIG:I = 0x3

.field public static final COMPRESSION_BANDED_JBIG_STR:Ljava/lang/String; = "Banded JBIG"

.field public static final COMPRESSION_FBXOR:I = 0x1

.field public static final COMPRESSION_FBXOR_STR:Ljava/lang/String; = "FBXOR"

.field public static final COMPRESSION_JBIG:I = 0x2

.field public static final COMPRESSION_JBIG_STR:Ljava/lang/String; = "JBIG"

.field public static final ERROR_VALUE:I = 0x0

.field public static final SPLTYPE_SPL_V1:I = 0x1

.field public static final SPLTYPE_SPL_V2:I = 0x2

.field public static final SPLTYPE_SPL_V3:I = 0x3

.field public static final SPLTYPE_SPL_V5:I = 0x5

.field public static final WIDTHALIGN_FIXED:I = 0x2

.field public static final WIDTHALIGN_FIXED_STR:Ljava/lang/String; = "Fixed"

.field public static final WIDTHALIGN_PLATFORM:I = 0x1

.field public static final WIDTHALIGN_PLATFORM_STR:Ljava/lang/String; = "Platform"


# instance fields
.field private compressionType:I

.field private ctsFilePath:Ljava/lang/String;

.field private isError:Z

.field private splVersion:I

.field private widthAlignType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "filepathCTS"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;->isError:Z

    .line 37
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;->setCTSFilePath(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;->splVersion:I

    .line 39
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;->compressionType:I

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;->widthAlignType:I

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "filepathCTS"
    .parameter "splVersion"
    .parameter "compressionTypeStr"
    .parameter "widthAlignTypeStr"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;->isError:Z

    .line 45
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;->setCTSFilePath(Ljava/lang/String;)V

    .line 46
    iput p2, p0, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;->splVersion:I

    .line 47
    invoke-virtual {p0, p3}, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;->getCompressionTypeValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;->compressionType:I

    .line 48
    invoke-virtual {p0, p4}, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;->getWidthTypeValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;->widthAlignType:I

    .line 49
    return-void
.end method


# virtual methods
.method public getCTSFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;->ctsFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getCompressionType()I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;->compressionType:I

    return v0
.end method

.method public getCompressionTypeValue(Ljava/lang/String;)I
    .registers 5
    .parameter "compressionTypeStr"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 56
    if-nez p1, :cond_7

    .line 57
    iput-boolean v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;->isError:Z

    .line 70
    :goto_6
    return v0

    .line 61
    :cond_7
    const-string v2, "FBXOR"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_11

    move v0, v1

    .line 62
    goto :goto_6

    .line 63
    :cond_11
    const-string v2, "JBIG"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_1b

    .line 64
    const/4 v0, 0x2

    goto :goto_6

    .line 65
    :cond_1b
    const-string v2, "Banded JBIG"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_25

    .line 66
    const/4 v0, 0x3

    goto :goto_6

    .line 69
    :cond_25
    iput-boolean v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;->isError:Z

    goto :goto_6
.end method

.method public getSplVersion()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;->splVersion:I

    return v0
.end method

.method public getWidthAlignType()I
    .registers 2

    .prologue
    .line 123
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;->widthAlignType:I

    return v0
.end method

.method public getWidthTypeValue(Ljava/lang/String;)I
    .registers 5
    .parameter "widthAlignTypeStr"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 74
    if-nez p1, :cond_7

    .line 75
    iput-boolean v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;->isError:Z

    .line 86
    :goto_6
    return v0

    .line 79
    :cond_7
    const-string v2, "Platform"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_11

    move v0, v1

    .line 80
    goto :goto_6

    .line 81
    :cond_11
    const-string v2, "Fixed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_1b

    .line 82
    const/4 v0, 0x2

    goto :goto_6

    .line 85
    :cond_1b
    iput-boolean v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;->isError:Z

    goto :goto_6
.end method

.method public isError()Z
    .registers 2

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;->isError:Z

    return v0
.end method

.method public setCTSFilePath(Ljava/lang/String;)V
    .registers 2
    .parameter "filePathCTSFilePath"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;->ctsFilePath:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setCompressionType(I)V
    .registers 2
    .parameter "compressionType"

    .prologue
    .line 116
    iput p1, p0, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;->compressionType:I

    .line 117
    return-void
.end method

.method public setSplVersion(I)V
    .registers 2
    .parameter "splVersion"

    .prologue
    .line 102
    iput p1, p0, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;->splVersion:I

    .line 103
    return-void
.end method

.method public setWidthAlignType(I)V
    .registers 2
    .parameter "widthAlignType"

    .prologue
    .line 130
    iput p1, p0, Lcom/sec/print/mobileprint/printoptionattribute/SPLTypeInfo;->widthAlignType:I

    .line 131
    return-void
.end method
