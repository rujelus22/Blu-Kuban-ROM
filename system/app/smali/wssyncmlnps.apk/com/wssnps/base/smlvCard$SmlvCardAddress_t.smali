.class public Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;
.super Ljava/lang/Object;
.source "smlvCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssnps/base/smlvCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmlvCardAddress_t"
.end annotation


# instance fields
.field public ExCustomValue:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public extended:Ljava/lang/String;

.field public isValid:Z

.field public postalcode:Ljava/lang/String;

.field public postofficebox:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public street:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;->isValid:Z

    .line 52
    return-void
.end method
