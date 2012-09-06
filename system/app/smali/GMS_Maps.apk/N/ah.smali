.class public Ln/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln/ah;->a:Ljava/util/ArrayList;

    .line 18
    return-void
.end method

.method public static a(Ljava/io/DataInput;I)Ln/ah;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 27
    new-instance v1, Ln/ah;

    invoke-direct {v1}, Ln/ah;-><init>()V

    .line 28
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v2

    .line 29
    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_18

    .line 30
    iget-object v3, v1, Ln/ah;->a:Ljava/util/ArrayList;

    invoke-static {v0, p0, p1}, Ln/ag;->a(ILjava/io/DataInput;I)Ln/ag;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 32
    :cond_18
    return-object v1
.end method


# virtual methods
.method public a()Ln/ag;
    .registers 2

    .prologue
    .line 75
    invoke-static {}, Ln/ag;->a()Ln/ag;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ln/ag;
    .registers 3
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Ln/ah;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_d

    .line 69
    invoke-static {}, Ln/ag;->a()Ln/ag;

    move-result-object v0

    .line 71
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Ln/ah;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/ag;

    goto :goto_c
.end method
