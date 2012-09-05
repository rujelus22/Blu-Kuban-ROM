.class public Lcom/samsung/map/bmessage/BMessageContent;
.super Ljava/lang/Object;
.source "BMessageContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/map/bmessage/BMessageContent$BodyProperty;
    }
.end annotation


# instance fields
.field public BodyContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public PartId:Ljava/lang/String;

.field public Properties:Lcom/samsung/map/bmessage/BMessageContent$BodyProperty;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/samsung/map/bmessage/BMessageContent$BodyProperty;

    invoke-direct {v0, p0}, Lcom/samsung/map/bmessage/BMessageContent$BodyProperty;-><init>(Lcom/samsung/map/bmessage/BMessageContent;)V

    iput-object v0, p0, Lcom/samsung/map/bmessage/BMessageContent;->Properties:Lcom/samsung/map/bmessage/BMessageContent$BodyProperty;

    .line 57
    iget-object v0, p0, Lcom/samsung/map/bmessage/BMessageContent;->Properties:Lcom/samsung/map/bmessage/BMessageContent$BodyProperty;

    const-string v1, ""

    iput-object v1, v0, Lcom/samsung/map/bmessage/BMessageContent$BodyProperty;->Encoding:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/samsung/map/bmessage/BMessageContent;->Properties:Lcom/samsung/map/bmessage/BMessageContent$BodyProperty;

    const-string v1, ""

    iput-object v1, v0, Lcom/samsung/map/bmessage/BMessageContent$BodyProperty;->Charset:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/samsung/map/bmessage/BMessageContent;->Properties:Lcom/samsung/map/bmessage/BMessageContent$BodyProperty;

    const-string v1, ""

    iput-object v1, v0, Lcom/samsung/map/bmessage/BMessageContent$BodyProperty;->Language:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/samsung/map/bmessage/BMessageContent;->Properties:Lcom/samsung/map/bmessage/BMessageContent$BodyProperty;

    const/4 v1, -0x1

    iput v1, v0, Lcom/samsung/map/bmessage/BMessageContent$BodyProperty;->Length:I

    .line 61
    return-void
.end method
