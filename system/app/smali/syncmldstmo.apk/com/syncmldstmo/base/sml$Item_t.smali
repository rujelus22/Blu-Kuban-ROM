.class public Lcom/syncmldstmo/base/sml$Item_t;
.super Ljava/lang/Object;
.source "sml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item_t"
.end annotation


# instance fields
.field public address:I

.field public data:Ljava/lang/String;

.field public dataObjType:I

.field public datasize:I

.field public luid:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field public parentluid:Ljava/lang/String;

.field public svrparentluid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
