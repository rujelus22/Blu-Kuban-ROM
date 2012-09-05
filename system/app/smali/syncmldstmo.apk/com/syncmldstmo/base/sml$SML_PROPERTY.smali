.class public Lcom/syncmldstmo/base/sml$SML_PROPERTY;
.super Ljava/lang/Object;
.source "sml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SML_PROPERTY"
.end annotation


# instance fields
.field public bNoTruncate:J

.field public pDataType:Ljava/lang/String;

.field public pDisplayName:Ljava/lang/String;

.field public pListPropParam:Lcom/syncmldstmo/base/smlList;

.field public pListValEnum:Lcom/syncmldstmo/base/smlList;

.field public pMaxOccur:Ljava/lang/String;

.field public pMaxSize:Ljava/lang/String;

.field public pPropName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1935
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1942
    iput-object v0, p0, Lcom/syncmldstmo/base/sml$SML_PROPERTY;->pListValEnum:Lcom/syncmldstmo/base/smlList;

    .line 1944
    iput-object v0, p0, Lcom/syncmldstmo/base/sml$SML_PROPERTY;->pListPropParam:Lcom/syncmldstmo/base/smlList;

    .line 1935
    return-void
.end method
