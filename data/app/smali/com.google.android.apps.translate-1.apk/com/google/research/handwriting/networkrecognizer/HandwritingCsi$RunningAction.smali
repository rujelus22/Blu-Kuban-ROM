.class Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;
.super Ljava/lang/Object;
.source "HandwritingCsi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunningAction"
.end annotation


# instance fields
.field private final experiment:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final started:J

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
.method constructor <init>(Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;J)V
    .registers 8
    .parameter
    .parameter "id"
    .parameter "name"
    .parameter
    .parameter "started"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p4, vars:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;->this$0:Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p3, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;->name:Ljava/lang/String;

    .line 193
    iput-object p4, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;->vars:Ljava/util/List;

    .line 194
    iput-wide p5, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;->started:J

    .line 195
    const-string v0, ""

    iput-object v0, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;->experiment:Ljava/lang/String;

    .line 196
    return-void
.end method

.method constructor <init>(Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;JLjava/lang/String;)V
    .registers 8
    .parameter
    .parameter "id"
    .parameter "name"
    .parameter
    .parameter "started"
    .parameter "experiment"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 198
    .local p4, vars:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;->this$0:Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p3, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;->name:Ljava/lang/String;

    .line 200
    iput-object p4, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;->vars:Ljava/util/List;

    .line 201
    iput-wide p5, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;->started:J

    .line 202
    iput-object p7, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;->experiment:Ljava/lang/String;

    .line 203
    return-void
.end method

.method static synthetic access$000(Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;->vars:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;->started:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;->experiment:Ljava/lang/String;

    return-object v0
.end method
