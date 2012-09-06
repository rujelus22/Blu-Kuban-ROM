.class LwO;
.super Ljava/lang/Object;
.source "DocumentWalker.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "LFt;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field a:LFt;

.field final synthetic a:LwN;

.field a:Z


# direct methods
.method constructor <init>(LwN;)V
    .registers 3
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, LwO;->a:LwN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iget-object v0, p0, LwO;->a:LwN;

    iget v0, v0, LwN;->a:I

    iput v0, p0, LwO;->a:I

    .line 141
    invoke-direct {p0}, LwO;->b()LFt;

    move-result-object v0

    iput-object v0, p0, LwO;->a:LFt;

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, LwO;->a:Z

    return-void
.end method

.method private b()LFt;
    .registers 4

    .prologue
    .line 147
    :cond_0
    iget-boolean v0, p0, LwO;->a:Z

    if-eqz v0, :cond_6

    .line 148
    const/4 v0, 0x0

    .line 159
    :goto_5
    return-object v0

    .line 150
    :cond_6
    iget-object v0, p0, LwO;->a:LwN;

    iget-object v0, v0, LwN;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_28

    .line 151
    iget-object v0, p0, LwO;->a:LwN;

    iget v0, v0, LwN;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 152
    const/4 v1, 0x1

    iput-boolean v1, p0, LwO;->a:Z

    .line 156
    :goto_19
    iget v1, p0, LwO;->a:I

    if-eq v0, v1, :cond_0

    .line 157
    new-instance v1, LFt;

    iget v2, p0, LwO;->a:I

    invoke-direct {v1, v2, v0}, LFt;-><init>(II)V

    .line 158
    iput v0, p0, LwO;->a:I

    move-object v0, v1

    .line 159
    goto :goto_5

    .line 154
    :cond_28
    iget-object v0, p0, LwO;->a:LwN;

    iget-object v0, v0, LwN;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_19
.end method


# virtual methods
.method public a()LFt;
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, LwO;->a:LFt;

    .line 170
    invoke-direct {p0}, LwO;->b()LFt;

    move-result-object v1

    iput-object v1, p0, LwO;->a:LFt;

    .line 171
    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, LwO;->a:LFt;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 139
    invoke-virtual {p0}, LwO;->a()LFt;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 176
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
