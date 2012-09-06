.class public LF/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac/q;


# instance fields
.field private final a:Lac/h;

.field private final b:LF/e;

.field private final c:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lac/h;LF/e;Ljava/lang/Class;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, LF/f;->a:Lac/h;

    .line 22
    iput-object p2, p0, LF/f;->b:LF/e;

    .line 23
    iput-object p3, p0, LF/f;->c:Ljava/lang/Class;

    .line 24
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 53
    return-void
.end method

.method public a(IZLjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    const/4 v0, 0x3

    if-ne p1, v0, :cond_17

    if-eqz p2, :cond_17

    const/4 v0, 0x1

    .line 37
    :goto_6
    if-nez v0, :cond_d

    .line 38
    iget-object v0, p0, LF/f;->a:Lac/h;

    invoke-virtual {v0, p0}, Lac/h;->b(Lac/q;)V

    .line 40
    :cond_d
    iget-object v0, p0, LF/f;->b:LF/e;

    if-eqz v0, :cond_16

    .line 41
    iget-object v0, p0, LF/f;->b:LF/e;

    invoke-interface {v0}, LF/e;->b()V

    .line 43
    :cond_16
    return-void

    .line 36
    :cond_17
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public a(Lac/g;)V
    .registers 4
    .parameter

    .prologue
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, LF/f;->c:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 30
    iget-object v0, p0, LF/f;->a:Lac/h;

    invoke-virtual {v0, p0}, Lac/h;->b(Lac/q;)V

    .line 32
    :cond_11
    return-void
.end method

.method public b(Lac/g;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    return-void
.end method
