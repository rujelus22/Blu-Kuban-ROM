.class public Lcom/syncmldstmo/base/sml$SML_PROPPARAM;
.super Ljava/lang/Object;
.source "sml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SML_PROPPARAM"
.end annotation


# instance fields
.field public pDataType:Ljava/lang/String;

.field public pDisplayName:Ljava/lang/String;

.field public pListValEnum:Lcom/syncmldstmo/base/smlList;

.field public pParamName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2332
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
