.class public Lcom/google/android/apps/docs/editors/kix/spans/DocosSpan;
.super Landroid/text/style/BackgroundColorSpan;
.source "DocosSpan.java"


# instance fields
.field private final a:LaiA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LaiA",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 26
    const/16 v0, -0x100

    invoke-direct {p0, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 27
    new-instance v0, LaiB;

    invoke-direct {v0}, LaiB;-><init>()V

    invoke-virtual {v0, p1}, LaiB;->a([Ljava/lang/Object;)LaiB;

    move-result-object v0

    invoke-virtual {v0}, LaiB;->a()LaiA;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/spans/DocosSpan;->a:LaiA;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/spans/DocosSpan;->a:Ljava/util/Set;

    .line 30
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/spans/DocosSpan;->a:LaiA;

    return-object v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/spans/DocosSpan;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/spans/DocosSpan;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 4
    .parameter

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/spans/DocosSpan;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 63
    iget v0, p1, Landroid/text/TextPaint;->bgColor:I

    const/16 v1, -0x100

    invoke-static {v0, v1}, LEX;->a(II)I

    move-result v0

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 65
    :cond_10
    return-void
.end method
