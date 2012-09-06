.class public LaQ/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, LaQ/l;->a:I

    .line 21
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 3
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 45
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, LaQ/l;->a:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 25
    const v0, 0x7f0400dc

    return v0
.end method
