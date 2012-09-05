.class public Lcom/samsung/map/bmessage/BMessageEnvelope;
.super Ljava/lang/Object;
.source "BMessageEnvelope.java"


# instance fields
.field public content:Lcom/samsung/map/bmessage/BMessageContent;

.field public envelope:Lcom/samsung/map/bmessage/BMessageEnvelope;

.field public recipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/map/bmessage/VCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
