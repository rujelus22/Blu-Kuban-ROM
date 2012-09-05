.class public Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;
.super Ljava/lang/Object;
.source "smlvItemApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssnps/base/smlvItemApi;
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
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;->nField:I

    .line 49
    iput p2, p0, Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;->EncodeType:I

    .line 50
    return-void
.end method
