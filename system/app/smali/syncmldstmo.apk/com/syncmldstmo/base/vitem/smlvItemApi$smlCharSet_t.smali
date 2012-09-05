.class public Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;
.super Ljava/lang/Object;
.source "smlvItemApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/vitem/smlvItemApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "smlCharSet_t"
.end annotation


# instance fields
.field public CharSet:I

.field public nField:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .parameter "nfield"
    .parameter "charset"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;->nField:I

    .line 30
    iput p2, p0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;->CharSet:I

    .line 31
    return-void
.end method
