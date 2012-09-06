.class public Lrr;
.super Ljava/lang/Object;
.source "LocalFileIntentOpener.java"

# interfaces
.implements LnQ;


# instance fields
.field private final a:LQO;

.field private a:LZN;

.field private final a:Landroid/os/Bundle;

.field final synthetic a:Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;

.field private final a:Ljava/lang/String;

.field private final a:LpP;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;LpP;LQO;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lrr;->a:Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p3, p0, Lrr;->a:LQO;

    .line 66
    iput-object p2, p0, Lrr;->a:LpP;

    .line 67
    iput-object p4, p0, Lrr;->a:Ljava/lang/String;

    .line 68
    iput-object p5, p0, Lrr;->a:Landroid/os/Bundle;

    .line 69
    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 8
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lrr;->a:Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;

    iget-object v1, p0, Lrr;->a:LpP;

    iget-object v2, p0, Lrr;->a:LQO;

    iget-object v3, p0, Lrr;->a:Landroid/os/Bundle;

    iget-object v4, p0, Lrr;->a:Ljava/lang/String;

    iget-object v5, p0, Lrr;->a:LZN;

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;->a(Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;LpP;LQO;Landroid/os/Bundle;Ljava/lang/String;LZN;)V

    .line 74
    const/4 v0, -0x1

    return v0
.end method

.method public a()Ljava/lang/String;
    .registers 5

    .prologue
    .line 79
    iget-object v0, p0, Lrr;->a:Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;->a(Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, LcY;->opening_document:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lrr;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(LZN;)V
    .registers 2
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lrr;->a:LZN;

    .line 91
    return-void
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lrr;->a:LQO;

    invoke-interface {v0}, LQO;->a()Ljavax/crypto/SecretKey;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lrr;->a:Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;

    iget-object v1, p0, Lrr;->a:LQO;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;->a(Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;LQO;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lrr;->a:Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;->a(Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method
