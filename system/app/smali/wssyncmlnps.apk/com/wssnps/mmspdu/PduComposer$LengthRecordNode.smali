.class Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;
.super Ljava/lang/Object;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssnps/mmspdu/PduComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LengthRecordNode"
.end annotation


# instance fields
.field currentMessage:Ljava/io/ByteArrayOutputStream;

.field public currentPosition:I

.field public next:Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1220
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1221
    iput-object v1, p0, Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    .line 1222
    const/4 v0, 0x0

    iput v0, p0, Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;->currentPosition:I

    .line 1224
    iput-object v1, p0, Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;->next:Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;

    return-void
.end method

.method synthetic constructor <init>(Lcom/wssnps/mmspdu/PduComposer$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1220
    invoke-direct {p0}, Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;-><init>()V

    return-void
.end method
