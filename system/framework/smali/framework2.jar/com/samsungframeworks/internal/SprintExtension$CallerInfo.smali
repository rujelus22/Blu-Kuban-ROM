.class Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;
.super Ljava/lang/Object;
.source "SprintExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsungframeworks/internal/SprintExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallerInfo"
.end annotation


# instance fields
.field pid:I

.field final synthetic this$0:Lcom/samsungframeworks/internal/SprintExtension;

.field uid:I


# direct methods
.method public constructor <init>(Lcom/samsungframeworks/internal/SprintExtension;II)V
    .registers 4
    .parameter
    .parameter "p"
    .parameter "u"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;->this$0:Lcom/samsungframeworks/internal/SprintExtension;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput p2, p0, Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;->pid:I

    .line 149
    iput p3, p0, Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;->uid:I

    .line 150
    return-void
.end method


# virtual methods
.method public compareWith(Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;)Z
    .registers 4
    .parameter "caller"

    .prologue
    .line 153
    iget v0, p0, Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;->pid:I

    iget v1, p1, Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;->pid:I

    if-ne v0, v1, :cond_e

    iget v0, p0, Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;->uid:I

    iget v1, p1, Lcom/samsungframeworks/internal/SprintExtension$CallerInfo;->uid:I

    if-ne v0, v1, :cond_e

    .line 154
    const/4 v0, 0x1

    .line 156
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
