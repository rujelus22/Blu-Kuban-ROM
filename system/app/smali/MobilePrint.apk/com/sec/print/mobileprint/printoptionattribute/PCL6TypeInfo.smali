.class public Lcom/sec/print/mobileprint/printoptionattribute/PCL6TypeInfo;
.super Ljava/lang/Object;
.source "PCL6TypeInfo.java"

# interfaces
.implements Lcom/sec/print/mobileprint/printoptionattribute/IPDLTypeInfo;


# static fields
.field public static final PCL6_COMP_TYPE_BANDED_DELTA_ROW:I = 0x1

.field public static final PCL6_COMP_TYPE_BANDED_JPG:I = 0x2

.field public static final PCL6_COMP_TYPE_BANDED_RLE:I = 0x4

.field public static final PCL6_COMP_TYPE_FULL_IMAGE_JPG_FILE:I = 0x3


# instance fields
.field private pcl6CompressionType:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter "compType"

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/sec/print/mobileprint/printoptionattribute/PCL6TypeInfo;->pcl6CompressionType:I

    .line 15
    return-void
.end method


# virtual methods
.method public getCompType()I
    .registers 2

    .prologue
    .line 18
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/PCL6TypeInfo;->pcl6CompressionType:I

    return v0
.end method

.method public setCompType(I)V
    .registers 2
    .parameter "compType"

    .prologue
    .line 22
    iput p1, p0, Lcom/sec/print/mobileprint/printoptionattribute/PCL6TypeInfo;->pcl6CompressionType:I

    .line 23
    return-void
.end method
