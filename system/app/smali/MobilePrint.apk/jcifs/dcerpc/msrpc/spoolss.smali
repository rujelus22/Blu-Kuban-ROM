.class public Ljcifs/dcerpc/msrpc/spoolss;
.super Ljava/lang/Object;
.source "spoolss.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/dcerpc/msrpc/spoolss$_spoolss_GetPrinter;,
        Ljcifs/dcerpc/msrpc/spoolss$_spoolss_ClosePrinter;,
        Ljcifs/dcerpc/msrpc/spoolss$_spoolss_OpenPrinter;,
        Ljcifs/dcerpc/msrpc/spoolss$_spoolss_EnumPrinters;,
        Ljcifs/dcerpc/msrpc/spoolss$spoolss_DataBlob;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 124
    return-void
.end method

.method public static getSyntax()Ljava/lang/String;
    .registers 1

    .prologue
    .line 9
    const-string v0, "12345678-1234-abcd-ef00-0123456789ab:1.0"

    return-object v0
.end method
