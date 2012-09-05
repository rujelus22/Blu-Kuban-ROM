.class public Lcom/syncmldstmo/base/sml$SML_RECORD;
.super Ljava/lang/Object;
.source "sml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SML_RECORD"
.end annotation


# instance fields
.field public itemlist:Lcom/syncmldstmo/base/smlList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 2295
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syncmldstmo/base/sml$SML_RECORD;->itemlist:Lcom/syncmldstmo/base/smlList;

    .line 2295
    return-void
.end method
