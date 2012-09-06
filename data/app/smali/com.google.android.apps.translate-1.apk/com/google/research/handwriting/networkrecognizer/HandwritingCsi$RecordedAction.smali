.class Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;
.super Ljava/lang/Object;
.source "HandwritingCsi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordedAction"
.end annotation


# instance fields
.field private final duration:J

.field private final experiment:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;

.field private final vars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;J)V
    .registers 7
    .parameter
    .parameter "running"
    .parameter "endTime"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;->this$0:Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    #getter for: Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;->name:Ljava/lang/String;
    invoke-static {p2}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;->access$000(Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;->name:Ljava/lang/String;

    .line 222
    #getter for: Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;->vars:Ljava/util/List;
    invoke-static {p2}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;->access$100(Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;->vars:Ljava/util/List;

    .line 223
    #getter for: Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;->started:J
    invoke-static {p2}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;->access$200(Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;)J

    move-result-wide v0

    sub-long v0, p3, v0

    iput-wide v0, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;->duration:J

    .line 224
    #getter for: Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;->experiment:Ljava/lang/String;
    invoke-static {p2}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;->access$300(Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;->experiment:Ljava/lang/String;

    .line 225
    return-void
.end method

.method constructor <init>(Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;Ljava/lang/String;Ljava/util/List;J)V
    .registers 7
    .parameter
    .parameter "name"
    .parameter
    .parameter "duration"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p3, vars:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;->this$0:Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p2, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;->name:Ljava/lang/String;

    .line 215
    iput-object p3, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;->vars:Ljava/util/List;

    .line 216
    iput-wide p4, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;->duration:J

    .line 217
    const-string v0, ""

    iput-object v0, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;->experiment:Ljava/lang/String;

    .line 218
    return-void
.end method

.method static synthetic access$400(Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;->experiment:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;->vars:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 207
    iget-wide v0, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;->duration:J

    return-wide v0
.end method
