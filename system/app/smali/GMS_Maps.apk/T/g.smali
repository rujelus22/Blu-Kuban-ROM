.class public Lt/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private a:Lt/i;


# direct methods
.method public constructor <init>(Lt/i;)V
    .registers 2
    .parameter

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Lt/g;->a:Lt/i;

    .line 317
    return-void
.end method


# virtual methods
.method public a()Lt/h;
    .registers 4

    .prologue
    .line 326
    new-instance v0, Lt/h;

    iget-object v1, p0, Lt/g;->a:Lt/i;

    iget-object v1, v1, Lt/i;->c:Ljava/lang/Object;

    iget-object v2, p0, Lt/g;->a:Lt/i;

    iget-object v2, v2, Lt/i;->d:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lt/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 328
    iget-object v1, p0, Lt/g;->a:Lt/i;

    iget-object v1, v1, Lt/i;->b:Lt/i;

    iput-object v1, p0, Lt/g;->a:Lt/i;

    .line 329
    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lt/g;->a:Lt/i;

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
    .line 312
    invoke-virtual {p0}, Lt/g;->a()Lt/h;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 334
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
