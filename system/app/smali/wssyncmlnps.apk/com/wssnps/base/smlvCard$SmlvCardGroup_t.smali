.class public Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;
.super Ljava/lang/Object;
.source "smlvCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssnps/base/smlvCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmlvCardGroup_t"
.end annotation


# instance fields
.field public GroupName:Ljava/lang/String;

.field public sGroupDisplayName:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
