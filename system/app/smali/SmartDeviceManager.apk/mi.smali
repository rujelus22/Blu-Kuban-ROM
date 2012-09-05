.class public abstract Lmi;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmi$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field b:Lmi$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmi$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field c:Lmi$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmi$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field d:I


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lmi;->c:Lmi$a;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lmi;->c:Lmi$a;

    iget-object v0, v0, Lmi$a;->a:Ljava/lang/Object;

    iput-object v0, p0, Lmi;->a:Ljava/lang/Object;

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lmi;->c:Lmi$a;

    iput-object v0, p0, Lmi;->b:Lmi$a;

    const/4 v0, 0x0

    iput v0, p0, Lmi;->d:I

    .line 56
    iget-object v0, p0, Lmi;->a:Ljava/lang/Object;

    if-nez v0, :cond_1d

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lmi;->a(I)Ljava/lang/Object;

    move-result-object v0

    :goto_1c
    return-object v0

    :cond_1d
    iget-object v0, p0, Lmi;->a:Ljava/lang/Object;

    goto :goto_1c
.end method

.method protected abstract a(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public final a(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)TT;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lmi$a;

    invoke-direct {v0, p1, p2}, Lmi$a;-><init>(Ljava/lang/Object;I)V

    .line 66
    iget-object v1, p0, Lmi;->b:Lmi$a;

    if-nez v1, :cond_1d

    .line 67
    iput-object v0, p0, Lmi;->c:Lmi$a;

    iput-object v0, p0, Lmi;->b:Lmi$a;

    .line 72
    :goto_d
    iget v0, p0, Lmi;->d:I

    add-int/2addr v0, p2

    iput v0, p0, Lmi;->d:I

    .line 73
    const/16 v0, 0x4000

    if-ge p2, v0, :cond_2e

    .line 76
    add-int v0, p2, p2

    .line 80
    :goto_18
    invoke-virtual {p0, v0}, Lmi;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 69
    :cond_1d
    iget-object v1, p0, Lmi;->c:Lmi$a;

    iget-object v2, v1, Lmi$a;->c:Lmi$a;

    if-eqz v2, :cond_29

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_29
    iput-object v0, v1, Lmi$a;->c:Lmi$a;

    .line 70
    iput-object v0, p0, Lmi;->c:Lmi$a;

    goto :goto_d

    .line 78
    :cond_2e
    shr-int/lit8 v0, p2, 0x2

    add-int/2addr v0, p2

    goto :goto_18
.end method

.method public final b(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)TT;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 85
    iget v0, p0, Lmi;->d:I

    add-int/2addr v0, p2

    .line 86
    invoke-virtual {p0, v0}, Lmi;->a(I)Ljava/lang/Object;

    move-result-object v1

    .line 90
    iget-object v2, p0, Lmi;->b:Lmi$a;

    move v3, v6

    :goto_b
    if-eqz v2, :cond_1a

    .line 91
    iget-object v4, v2, Lmi$a;->a:Ljava/lang/Object;

    iget v5, v2, Lmi$a;->b:I

    invoke-static {v4, v6, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, v2, Lmi$a;->b:I

    add-int/2addr v3, v4

    .line 90
    iget-object v2, v2, Lmi$a;->c:Lmi$a;

    goto :goto_b

    .line 93
    :cond_1a
    invoke-static {p1, v6, v1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    add-int v2, v3, p2

    .line 97
    if-eq v2, v0, :cond_44

    .line 98
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Should have gotten "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " entries, got "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_44
    return-object v1
.end method
