.class public LAP;
.super LAO;
.source "LineEndFormattingSpan.java"


# instance fields
.field private final a:Landroid/text/Editable;


# direct methods
.method public constructor <init>(Landroid/text/Editable;Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;LEn;LwH;)V
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, LAO;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;LEn;LwH;)V

    .line 24
    iput-object p1, p0, LAP;->a:Landroid/text/Editable;

    .line 25
    return-void
.end method

.method private a()Z
    .registers 4

    .prologue
    const/16 v2, 0xa

    .line 42
    iget-object v0, p0, LAP;->a:Landroid/text/Editable;

    invoke-interface {v0, p0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 44
    if-lez v0, :cond_1c

    iget-object v1, p0, LAP;->a:Landroid/text/Editable;

    invoke-interface {v1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1c

    iget-object v1, p0, LAP;->a:Landroid/text/Editable;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, LAP;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 30
    invoke-super {p0, p1}, LAO;->updateDrawState(Landroid/text/TextPaint;)V

    .line 32
    :cond_9
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .registers 3
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, LAP;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 37
    invoke-super {p0, p1}, LAO;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 39
    :cond_9
    return-void
.end method
