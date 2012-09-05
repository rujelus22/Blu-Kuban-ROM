.class public Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;
.super Ljava/lang/Object;
.source "smlvCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/vitem/smlvCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmlvCardAddress_t"
.end annotation


# instance fields
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
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->isValid:Z

    return-void
.end method
