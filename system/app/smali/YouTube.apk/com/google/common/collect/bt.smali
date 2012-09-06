.class final Lcom/google/common/collect/bt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Ljava/lang/Object;

.field private c:Lcom/google/common/collect/bw;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private d:Lcom/google/common/collect/bw;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final e:Lcom/google/common/collect/BstModificationResult;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-class v0, Lcom/google/common/collect/bt;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/common/collect/bt;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/BstModificationResult;)V
    .registers 6
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/common/collect/bt;->b:Ljava/lang/Object;

    .line 66
    iput-object p2, p0, Lcom/google/common/collect/bt;->c:Lcom/google/common/collect/bw;

    .line 67
    iput-object p3, p0, Lcom/google/common/collect/bt;->d:Lcom/google/common/collect/bw;

    .line 68
    invoke-static {p4}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BstModificationResult;

    iput-object v0, p0, Lcom/google/common/collect/bt;->e:Lcom/google/common/collect/BstModificationResult;

    .line 69
    return-void
.end method

.method public static a(Ljava/lang/Object;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/BstModificationResult;)Lcom/google/common/collect/bt;
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 50
    new-instance v0, Lcom/google/common/collect/bt;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/collect/bt;-><init>(Ljava/lang/Object;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/BstModificationResult;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/common/collect/bw;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/by;Lcom/google/common/collect/bl;)Lcom/google/common/collect/bt;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 125
    sget-boolean v2, Lcom/google/common/collect/bt;->a:Z

    if-nez v2, :cond_24

    if-eqz p1, :cond_1c

    move v3, v0

    :goto_9
    if-eqz p2, :cond_1e

    move v2, v0

    :goto_c
    and-int/2addr v3, v2

    if-eqz p3, :cond_20

    move v2, v0

    :goto_10
    and-int/2addr v2, v3

    if-eqz p4, :cond_22

    :goto_13
    and-int/2addr v0, v2

    if-nez v0, :cond_24

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1c
    move v3, v1

    goto :goto_9

    :cond_1e
    move v2, v1

    goto :goto_c

    :cond_20
    move v2, v1

    goto :goto_10

    :cond_22
    move v0, v1

    goto :goto_13

    .line 126
    :cond_24
    sget-object v0, Lcom/google/common/collect/bu;->b:[I

    iget-object v1, p0, Lcom/google/common/collect/bt;->e:Lcom/google/common/collect/BstModificationResult;

    invoke-virtual {v1}, Lcom/google/common/collect/BstModificationResult;->c()Lcom/google/common/collect/BstModificationResult$ModificationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/BstModificationResult$ModificationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7c

    .line 153
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 128
    :pswitch_3b
    iput-object p1, p0, Lcom/google/common/collect/bt;->d:Lcom/google/common/collect/bw;

    iput-object p1, p0, Lcom/google/common/collect/bt;->c:Lcom/google/common/collect/bw;

    .line 151
    :goto_3f
    return-object p0

    .line 132
    :pswitch_40
    iput-object p1, p0, Lcom/google/common/collect/bt;->c:Lcom/google/common/collect/bw;

    .line 133
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v1

    .line 134
    sget-object v0, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v0

    .line 135
    sget-object v2, Lcom/google/common/collect/bu;->a:[I

    invoke-virtual {p2}, Lcom/google/common/collect/BstSide;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_86

    .line 143
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 137
    :pswitch_5f
    iget-object v1, p0, Lcom/google/common/collect/bt;->d:Lcom/google/common/collect/bw;

    .line 145
    :goto_61
    iget-object v2, p0, Lcom/google/common/collect/bt;->e:Lcom/google/common/collect/BstModificationResult;

    invoke-virtual {v2}, Lcom/google/common/collect/BstModificationResult;->c()Lcom/google/common/collect/BstModificationResult$ModificationType;

    move-result-object v2

    sget-object v3, Lcom/google/common/collect/BstModificationResult$ModificationType;->REBUILDING_CHANGE:Lcom/google/common/collect/BstModificationResult$ModificationType;

    if-ne v2, v3, :cond_75

    .line 146
    invoke-virtual {p3, p1, v1, v0}, Lcom/google/common/collect/by;->a(Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/bt;->d:Lcom/google/common/collect/bw;

    goto :goto_3f

    .line 140
    :pswitch_72
    iget-object v0, p0, Lcom/google/common/collect/bt;->d:Lcom/google/common/collect/bw;

    goto :goto_61

    .line 148
    :cond_75
    invoke-interface {p4, p3, p1, v1, v0}, Lcom/google/common/collect/bl;->a(Lcom/google/common/collect/by;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/bt;->d:Lcom/google/common/collect/bw;

    goto :goto_3f

    .line 126
    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_40
        :pswitch_40
    .end packed-switch

    .line 135
    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_72
    .end packed-switch
.end method

.method public final a()Lcom/google/common/collect/bw;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/common/collect/bt;->c:Lcom/google/common/collect/bw;

    return-object v0
.end method

.method public final b()Lcom/google/common/collect/bw;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/common/collect/bt;->d:Lcom/google/common/collect/bw;

    return-object v0
.end method

.method public final c()Lcom/google/common/collect/bw;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/common/collect/bt;->e:Lcom/google/common/collect/BstModificationResult;

    invoke-virtual {v0}, Lcom/google/common/collect/BstModificationResult;->a()Lcom/google/common/collect/bw;

    move-result-object v0

    return-object v0
.end method
