.class public Lq/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lq/e;

.field private final b:I


# direct methods
.method public constructor <init>(Lq/e;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lq/a;->a:Lq/e;

    .line 36
    iput p2, p0, Lq/a;->b:I

    .line 37
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lq/a;->b:I

    return v0
.end method

.method public a(Lq/b;)Lq/e;
    .registers 3
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lq/a;->a:Lq/e;

    invoke-virtual {v0}, Lq/e;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 51
    iget-object v0, p0, Lq/a;->a:Lq/e;

    invoke-virtual {p1, v0}, Lq/b;->a(Lq/e;)Lq/e;

    move-result-object v0

    .line 53
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lq/a;->a:Lq/e;

    goto :goto_e
.end method
