.class public Lcom/syncmldstmo/base/sml$SML_DEVINF;
.super Ljava/lang/Object;
.source "sml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SML_DEVINF"
.end annotation


# instance fields
.field public bSupportLargeObjects:J

.field public bSupportNumberOfChanges:J

.field public bUTC:J

.field public pDevID:Ljava/lang/String;

.field public pDevTyp:Ljava/lang/String;

.field public pFwV:Ljava/lang/String;

.field public pHwV:Ljava/lang/String;

.field public pListDataStore:Lcom/syncmldstmo/base/smlList;

.field public pListExt:Lcom/syncmldstmo/base/smlList;

.field public pMan:Ljava/lang/String;

.field public pMod:Ljava/lang/String;

.field public pOEM:Ljava/lang/String;

.field public pSwV:Ljava/lang/String;

.field public pVerDTD:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2394
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
