.class LCO;
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
    .line 747
    iput-object p1, p0, LCO;->a:LCM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)C
    .registers 4
    .parameter

    .prologue
    .line 750
    iget-object v0, p0, LCO;->a:LCM;

    invoke-static {v0}, LCM;->a(LCM;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, LCO;->a:LCM;

    invoke-static {v1}, LCM;->a(LCM;)I

    move-result v1

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public a(Landroid/text/TextPaint;II)F
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 755
    iget-object v0, p0, LCO;->a:LCM;

    invoke-static {v0}, LCM;->a(LCM;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, LCO;->a:LCM;

    invoke-static {v1}, LCM;->a(LCM;)I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p0, LCO;->a:LCM;

    invoke-static {v2}, LCM;->a(LCM;)I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1, v0, v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    return v0
.end method
