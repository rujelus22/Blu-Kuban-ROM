.class public Lro;
.super Ljava/lang/Object;
.source "IntentStateMachine.java"

# interfaces
.implements LnQ;


# instance fields
.field private final a:Landroid/content/Context;

.field private final a:Landroid/content/Intent;

.field private final a:Ljava/lang/String;

.field private final a:Lrn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lrn;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lro;->a:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lro;->a:Lrn;

    .line 33
    iput-object p3, p0, Lro;->a:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lro;->a:Landroid/content/Intent;

    .line 35
    return-void
.end method


# virtual methods
.method public final a(I)I
    .registers 4
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lro;->a:Landroid/content/Intent;

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, LafQ;->b(Z)V

    .line 40
    iget-object v0, p0, Lro;->a:Lrn;

    iget-object v1, p0, Lro;->a:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lrn;->a(Landroid/content/Intent;)V

    .line 41
    const/4 v0, -0x1

    return v0

    .line 39
    :cond_11
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final a()Ljava/lang/String;
    .registers 5

    .prologue
    .line 46
    iget-object v0, p0, Lro;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, LcY;->opening_document:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lro;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(LZN;)V
    .registers 2
    .parameter

    .prologue
    .line 58
    return-void
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method
