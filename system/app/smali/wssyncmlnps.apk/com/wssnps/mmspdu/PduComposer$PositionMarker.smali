.class Lcom/wssnps/mmspdu/PduComposer$PositionMarker;
.super Ljava/lang/Object;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssnps/mmspdu/PduComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionMarker"
.end annotation


# instance fields
.field private c_pos:I

.field private currentStackSize:I

.field final synthetic this$0:Lcom/wssnps/mmspdu/PduComposer;


# direct methods
.method private constructor <init>(Lcom/wssnps/mmspdu/PduComposer;)V
    .registers 2
    .parameter

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/wssnps/mmspdu/PduComposer$PositionMarker;->this$0:Lcom/wssnps/mmspdu/PduComposer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wssnps/mmspdu/PduComposer;Lcom/wssnps/mmspdu/PduComposer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1230
    invoke-direct {p0, p1}, Lcom/wssnps/mmspdu/PduComposer$PositionMarker;-><init>(Lcom/wssnps/mmspdu/PduComposer;)V

    return-void
.end method

.method static synthetic access$402(Lcom/wssnps/mmspdu/PduComposer$PositionMarker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1230
    iput p1, p0, Lcom/wssnps/mmspdu/PduComposer$PositionMarker;->c_pos:I

    return p1
.end method

.method static synthetic access$502(Lcom/wssnps/mmspdu/PduComposer$PositionMarker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1230
    iput p1, p0, Lcom/wssnps/mmspdu/PduComposer$PositionMarker;->currentStackSize:I

    return p1
.end method


# virtual methods
.method getLength()I
    .registers 3

    .prologue
    .line 1238
    iget v0, p0, Lcom/wssnps/mmspdu/PduComposer$PositionMarker;->currentStackSize:I

    iget-object v1, p0, Lcom/wssnps/mmspdu/PduComposer$PositionMarker;->this$0:Lcom/wssnps/mmspdu/PduComposer;

    #getter for: Lcom/wssnps/mmspdu/PduComposer;->mStack:Lcom/wssnps/mmspdu/PduComposer$BufferStack;
    invoke-static {v1}, Lcom/wssnps/mmspdu/PduComposer;->access$100(Lcom/wssnps/mmspdu/PduComposer;)Lcom/wssnps/mmspdu/PduComposer$BufferStack;

    move-result-object v1

    iget v1, v1, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->stackSize:I

    if-eq v0, v1, :cond_14

    .line 1239
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BUG: Invalid call to getLength()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1242
    :cond_14
    iget-object v0, p0, Lcom/wssnps/mmspdu/PduComposer$PositionMarker;->this$0:Lcom/wssnps/mmspdu/PduComposer;

    iget v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mPosition:I

    iget v1, p0, Lcom/wssnps/mmspdu/PduComposer$PositionMarker;->c_pos:I

    sub-int/2addr v0, v1

    return v0
.end method
