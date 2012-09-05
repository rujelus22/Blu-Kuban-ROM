.class public Lcom/syncmldstmo/base/sml$SML_CTCAP;
.super Ljava/lang/Object;
.source "sml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SML_CTCAP"
.end annotation


# instance fields
.field public bFieldLevel:J

.field public pCtType:Ljava/lang/String;

.field public pListProperty:Lcom/syncmldstmo/base/smlList;

.field public pVerCT:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2341
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
