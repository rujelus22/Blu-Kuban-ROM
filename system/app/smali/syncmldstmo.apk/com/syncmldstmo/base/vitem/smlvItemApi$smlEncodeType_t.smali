.class public Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;
.super Ljava/lang/Object;
.source "smlvItemApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/vitem/smlvItemApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "smlEncodeType_t"
.end annotation


# instance fields
.field public EncodeType:I

.field public nField:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .parameter "nfield"
    .parameter "encodetype"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;->nField:I

    .line 42
    iput p2, p0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;->EncodeType:I

    .line 43
    return-void
.end method
