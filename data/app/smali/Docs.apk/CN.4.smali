.class LCN;
.super Ljava/lang/Object;
.source "TextLine.java"

# interfaces
.implements LCP;


# instance fields
.field final synthetic a:LCM;


# direct methods
.method constructor <init>(LCM;)V
    .registers 2
    .parameter

    .prologue
    .line 735
    iput-object p1, p0, LCN;->a:LCM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)C
    .registers 3
    .parameter

    .prologue
    .line 738
    iget-object v0, p0, LCN;->a:LCM;

    invoke-static {v0}, LCM;->a(LCM;)[C

    move-result-object v0

    aget-char v0, v0, p1

    return v0
.end method

.method public a(Landroid/text/TextPaint;II)F
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 743
    iget-object v0, p0, LCN;->a:LCM;

    invoke-static {v0}, LCM;->a(LCM;)[C

    move-result-object v0

    sub-int v1, p3, p2

    invoke-virtual {p1, v0, p2, v1}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v0

    return v0
.end method
