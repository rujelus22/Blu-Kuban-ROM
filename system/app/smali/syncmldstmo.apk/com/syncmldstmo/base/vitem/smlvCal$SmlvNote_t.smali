.class public Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNote_t;
.super Ljava/lang/Object;
.source "smlvCal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/vitem/smlvCal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmlvNote_t"
.end annotation


# instance fields
.field public BODY:Ljava/lang/String;

.field public CREATEDATE:Landroid/text/format/Time;

.field public MODIFYDATE:Landroid/text/format/Time;

.field public TITLE:Ljava/lang/String;

.field public VERSION:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvNoteVersion;

.field public luid:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
