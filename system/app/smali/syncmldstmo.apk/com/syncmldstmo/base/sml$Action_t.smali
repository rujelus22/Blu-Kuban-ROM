.class public Lcom/syncmldstmo/base/sml$Action_t;
.super Ljava/lang/Object;
.source "sml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action_t"
.end annotation


# instance fields
.field cmdID:J

.field cmdName:Ljava/lang/String;

.field dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

.field msgID:J

.field sourceList:Lcom/syncmldstmo/base/smlLinkedList;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
