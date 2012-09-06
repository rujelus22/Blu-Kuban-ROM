.class public Lask;
.super Ljava/lang/Object;
.source "BatchStatus.java"


# instance fields
.field private a:I

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


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
.method public a()I
    .registers 2

    .prologue
    .line 24
    iget v0, p0, Lask;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 31
    iput p1, p0, Lask;->a:I

    .line 32
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lask;->a:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lask;->b:Ljava/lang/String;

    .line 60
    return-void
.end method
