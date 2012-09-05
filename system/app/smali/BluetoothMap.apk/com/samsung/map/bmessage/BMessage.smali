.class public Lcom/samsung/map/bmessage/BMessage;
.super Ljava/lang/Object;
.source "BMessage.java"


# instance fields
.field public envelope:Lcom/samsung/map/bmessage/BMessageEnvelope;

.field public originators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/map/bmessage/VCard;",
            ">;"
        }
    .end annotation
.end field

.field public property:Lcom/samsung/map/bmessage/BMessageProperty;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
