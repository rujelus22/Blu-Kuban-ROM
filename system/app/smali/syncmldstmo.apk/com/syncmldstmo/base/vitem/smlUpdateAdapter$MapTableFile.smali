.class public Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapTableFile;
.super Ljava/lang/Object;
.source "smlUpdateAdapter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapTableFile"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field count:[I

.field crc:[[J

.field luid:[[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapTableFile;->count:[I

    return-void
.end method
