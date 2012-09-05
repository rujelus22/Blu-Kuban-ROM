.class public Lcom/syncmldstmo/base/smlLinkedList$smlNode;
.super Ljava/lang/Object;
.source "smlLinkedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/smlLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "smlNode"
.end annotation


# instance fields
.field public next:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

.field public obj:Ljava/lang/Object;

.field public previous:Lcom/syncmldstmo/base/smlLinkedList$smlNode;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->obj:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->next:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    .line 13
    iput-object v0, p0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->previous:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    .line 9
    return-void
.end method
