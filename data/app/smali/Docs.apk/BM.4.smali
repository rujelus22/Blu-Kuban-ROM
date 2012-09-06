.class LBM;
.super Ljava/lang/Object;
.source "OffsetTreeNode.java"

# interfaces
.implements LBI;


# instance fields
.field final synthetic a:I

.field final synthetic a:LBJ;


# direct methods
.method constructor <init>(LBJ;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, LBM;->a:LBJ;

    iput p2, p0, LBM;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()I
    .registers 2

    .prologue
    .line 216
    iget v0, p0, LBM;->a:I

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 220
    iget v0, p0, LBM;->a:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
