.class public Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;
.super Ljava/lang/Object;
.source "smlvCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/vitem/smlvCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmlvCardName_t"
.end annotation


# instance fields
.field public addition:Ljava/lang/String;

.field public family:Ljava/lang/String;

.field public given:Ljava/lang/String;

.field public isValid:Z

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
