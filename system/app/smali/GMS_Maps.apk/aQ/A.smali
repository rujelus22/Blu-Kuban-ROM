.class public abstract LaQ/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field protected final a:Ljava/lang/CharSequence;

.field protected final b:I

.field protected final c:I

.field protected final d:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, LaQ/a;-><init>(Ljava/lang/CharSequence;III)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, LaQ/a;->a:Ljava/lang/CharSequence;

    .line 27
    iput p2, p0, LaQ/a;->b:I

    .line 28
    iput p3, p0, LaQ/a;->c:I

    .line 29
    iput p4, p0, LaQ/a;->d:I

    .line 30
    return-void
.end method


# virtual methods
.method public b()I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, LaQ/a;->b:I

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, LaQ/a;->c:I

    return v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 45
    iget v0, p0, LaQ/a;->d:I

    return v0
.end method
