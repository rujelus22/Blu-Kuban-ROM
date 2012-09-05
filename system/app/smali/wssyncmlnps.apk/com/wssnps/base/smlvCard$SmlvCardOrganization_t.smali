.class public Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;
.super Ljava/lang/Object;
.source "smlvCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssnps/base/smlvCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmlvCardOrganization_t"
.end annotation


# instance fields
.field public ExCustomValue:Ljava/lang/String;

.field public isValid:Z

.field public name:Ljava/lang/String;

.field public type:I

.field public unit1:Ljava/lang/String;

.field public unit2:Ljava/lang/String;

.field public unit3:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
