.class public Lcom/google/googlenav/ui/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/J;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    .line 17
    return-void
.end method

.method public constructor <init>(IILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/google/googlenav/ui/view/a;->a:I

    .line 21
    iput p2, p0, Lcom/google/googlenav/ui/view/a;->b:I

    .line 22
    iput-object p3, p0, Lcom/google/googlenav/ui/view/a;->c:Ljava/lang/Object;

    .line 23
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 27
    iget v0, p0, Lcom/google/googlenav/ui/view/a;->a:I

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 32
    iget v0, p0, Lcom/google/googlenav/ui/view/a;->b:I

    return v0
.end method

.method public c()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/googlenav/ui/view/a;->c:Ljava/lang/Object;

    return-object v0
.end method
