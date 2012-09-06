.class public Lasj;
.super Ljava/lang/Object;
.source "BatchInterrupted.java"


# instance fields
.field private a:I

.field private a:Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lasj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 45
    iput p1, p0, Lasj;->a:I

    .line 46
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lasj;->a:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public b(I)V
    .registers 2
    .parameter

    .prologue
    .line 59
    iput p1, p0, Lasj;->b:I

    .line 60
    return-void
.end method

.method public c(I)V
    .registers 2
    .parameter

    .prologue
    .line 73
    iput p1, p0, Lasj;->c:I

    .line 74
    return-void
.end method
