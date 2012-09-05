.class public Lcom/sec/print/mobileprint/PDLComposer;
.super Ljava/lang/Object;
.source "PDLComposer.java"


# instance fields
.field outputStream:Lcom/sec/print/mobileprint/io/ISPSOutputStream;

.field statusMonitor:Lcom/sec/print/mobileprint/PrintingStatusMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    const-string v0, "SamsungPDLComposer_MD"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/sec/print/mobileprint/PrintingStatusMonitor;)V
    .registers 2
    .parameter "statusMonitor"

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/sec/print/mobileprint/PDLComposer;->statusMonitor:Lcom/sec/print/mobileprint/PrintingStatusMonitor;

    .line 26
    return-void
.end method

.method private static native cancelJob()V
.end method

.method private static native generatePDLData(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
.end method

.method private setDefaultAtribute(Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;)V
    .registers 5
    .parameter "listPrintOptionAttribute"

    .prologue
    const/16 v2, 0x258

    .line 60
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/Layout;

    sget-object v1, Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;->LAYOUT_1UP:Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;

    invoke-direct {v0, v1}, Lcom/sec/print/mobileprint/printoptionattribute/Layout;-><init>(Lcom/sec/print/mobileprint/printoptionattribute/Layout$EnumLayout;)V

    invoke-virtual {p1, v0}, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->add(Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;)Z

    .line 61
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/Resolution;

    invoke-direct {v0, v2, v2}, Lcom/sec/print/mobileprint/printoptionattribute/Resolution;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->add(Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;)Z

    .line 63
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 53
    invoke-static {}, Lcom/sec/print/mobileprint/PDLComposer;->cancelJob()V

    .line 54
    iget-object v0, p0, Lcom/sec/print/mobileprint/PDLComposer;->outputStream:Lcom/sec/print/mobileprint/io/ISPSOutputStream;

    invoke-interface {v0}, Lcom/sec/print/mobileprint/io/ISPSOutputStream;->cancel()V

    .line 55
    return-void
.end method

.method public print(Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;Lcom/sec/print/mobileprint/pagedata/DocSetInterface;Lcom/sec/print/mobileprint/io/ISPSOutputStream;)I
    .registers 6
    .parameter "listPrintOptionAttribute"
    .parameter "docSet"
    .parameter "outputStream"

    .prologue
    .line 46
    iput-object p3, p0, Lcom/sec/print/mobileprint/PDLComposer;->outputStream:Lcom/sec/print/mobileprint/io/ISPSOutputStream;

    .line 47
    invoke-direct {p0, p1}, Lcom/sec/print/mobileprint/PDLComposer;->setDefaultAtribute(Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;)V

    .line 48
    iget-object v0, p0, Lcom/sec/print/mobileprint/PDLComposer;->outputStream:Lcom/sec/print/mobileprint/io/ISPSOutputStream;

    iget-object v1, p0, Lcom/sec/print/mobileprint/PDLComposer;->statusMonitor:Lcom/sec/print/mobileprint/PrintingStatusMonitor;

    invoke-static {p1, p2, v0, v1}, Lcom/sec/print/mobileprint/PDLComposer;->generatePDLData(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public print(Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;Lcom/sec/print/mobileprint/pagedata/DocSetInterface;Ljava/lang/String;)I
    .registers 6
    .parameter "listPrintOptionAttribute"
    .parameter "docSet"
    .parameter "filePath"

    .prologue
    .line 30
    new-instance v0, Lcom/sec/print/mobileprint/io/SPSFileOutputStream;

    invoke-direct {v0, p3}, Lcom/sec/print/mobileprint/io/SPSFileOutputStream;-><init>(Ljava/lang/String;)V

    .line 31
    .local v0, fileOutputStream:Lcom/sec/print/mobileprint/io/SPSFileOutputStream;
    iput-object v0, p0, Lcom/sec/print/mobileprint/PDLComposer;->outputStream:Lcom/sec/print/mobileprint/io/ISPSOutputStream;

    .line 32
    invoke-direct {p0, p1}, Lcom/sec/print/mobileprint/PDLComposer;->setDefaultAtribute(Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;)V

    .line 33
    iget-object v1, p0, Lcom/sec/print/mobileprint/PDLComposer;->statusMonitor:Lcom/sec/print/mobileprint/PrintingStatusMonitor;

    invoke-static {p1, p2, v0, v1}, Lcom/sec/print/mobileprint/PDLComposer;->generatePDLData(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public print(Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;Lcom/sec/print/mobileprint/pagedata/DocSetInterface;Ljava/lang/String;I)I
    .registers 7
    .parameter "listPrintOptionAttribute"
    .parameter "docSet"
    .parameter "ipAddr"
    .parameter "portNum"

    .prologue
    .line 38
    new-instance v0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;

    invoke-direct {v0, p3, p4}, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;-><init>(Ljava/lang/String;I)V

    .line 39
    .local v0, netOutputStream:Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;
    iput-object v0, p0, Lcom/sec/print/mobileprint/PDLComposer;->outputStream:Lcom/sec/print/mobileprint/io/ISPSOutputStream;

    .line 40
    invoke-direct {p0, p1}, Lcom/sec/print/mobileprint/PDLComposer;->setDefaultAtribute(Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;)V

    .line 41
    iget-object v1, p0, Lcom/sec/print/mobileprint/PDLComposer;->statusMonitor:Lcom/sec/print/mobileprint/PrintingStatusMonitor;

    invoke-static {p1, p2, v0, v1}, Lcom/sec/print/mobileprint/PDLComposer;->generatePDLData(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    return v1
.end method
