.class public Lcom/google/googlenav/ui/view/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/googlenav/ui/view/t;

.field public final d:[Lcom/google/googlenav/ui/aW;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:Z

.field public final i:Lcom/google/googlenav/ui/view/c;

.field public final j:Lcom/google/googlenav/ui/view/c;

.field public final k:Ljava/util/Vector;

.field public final l:Z

.field public final m:[B


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/google/googlenav/ui/view/C;->d:[Lcom/google/googlenav/ui/aW;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/ui/view/C;->d:[Lcom/google/googlenav/ui/aW;

    array-length v0, v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
