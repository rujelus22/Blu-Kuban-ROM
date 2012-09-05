.class public Lcom/wssnps/base/smlvCard$SMLDate_t;
.super Ljava/lang/Object;
.source "smlvCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssnps/base/smlvCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMLDate_t"
.end annotation


# instance fields
.field public ExCustomValue:Ljava/lang/String;

.field public Lunar:I

.field public nDay:I

.field public nMonth:I

.field public nYear:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
