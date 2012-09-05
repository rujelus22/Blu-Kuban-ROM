.class public Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;
.super Ljava/lang/Object;
.source "smlUpdateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapItem"
.end annotation


# instance fields
.field public action:I

.field public crc:J

.field public luid:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
