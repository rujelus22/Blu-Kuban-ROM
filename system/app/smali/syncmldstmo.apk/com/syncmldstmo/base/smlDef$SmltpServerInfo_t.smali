.class public Lcom/syncmldstmo/base/smlDef$SmltpServerInfo_t;
.super Ljava/lang/Object;
.source "smlDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/smlDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmltpServerInfo_t"
.end annotation


# instance fields
.field public hostname:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public port:I

.field public protocol:Ljava/lang/String;

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 478
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
