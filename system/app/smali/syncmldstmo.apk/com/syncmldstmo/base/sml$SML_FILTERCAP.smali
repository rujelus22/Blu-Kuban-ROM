.class public Lcom/syncmldstmo/base/sml$SML_FILTERCAP;
.super Ljava/lang/Object;
.source "sml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SML_FILTERCAP"
.end annotation


# instance fields
.field public pCtType:Ljava/lang/String;

.field public pListFilterKeyword:Lcom/syncmldstmo/base/smlList;

.field public pListPropName:Lcom/syncmldstmo/base/smlList;

.field public pVerCT:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 2317
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2321
    iput-object v0, p0, Lcom/syncmldstmo/base/sml$SML_FILTERCAP;->pListFilterKeyword:Lcom/syncmldstmo/base/smlList;

    .line 2322
    iput-object v0, p0, Lcom/syncmldstmo/base/sml$SML_FILTERCAP;->pListPropName:Lcom/syncmldstmo/base/smlList;

    .line 2317
    return-void
.end method
