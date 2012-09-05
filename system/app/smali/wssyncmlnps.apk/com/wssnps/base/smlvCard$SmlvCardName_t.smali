.class public Lcom/wssnps/base/smlvCard$SmlvCardName_t;
.super Ljava/lang/Object;
.source "smlvCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssnps/base/smlvCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmlvCardName_t"
.end annotation


# instance fields
.field public family:Ljava/lang/String;

.field public formatted:Ljava/lang/String;

.field public given:Ljava/lang/String;

.field public isValid:Z

.field public middle:Ljava/lang/String;

.field public phoneticFamily:Ljava/lang/String;

.field public phoneticGiven:Ljava/lang/String;

.field public phoneticMiddle:Ljava/lang/String;

.field public prefix:Ljava/lang/String;

.field public suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
