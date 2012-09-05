.class public Lcom/syncmldstmo/base/sml$SML_FIELD;
.super Ljava/lang/Object;
.source "sml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SML_FIELD"
.end annotation


# instance fields
.field public itemlist:Lcom/syncmldstmo/base/smlList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 2290
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syncmldstmo/base/sml$SML_FIELD;->itemlist:Lcom/syncmldstmo/base/smlList;

    .line 2290
    return-void
.end method
