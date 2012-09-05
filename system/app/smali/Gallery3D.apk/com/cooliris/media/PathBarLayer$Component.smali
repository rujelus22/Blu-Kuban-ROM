.class final Lcom/cooliris/media/PathBarLayer$Component;
.super Ljava/lang/Object;
.source "PathBarLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/PathBarLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Component"
.end annotation


# instance fields
.field public action:Ljava/lang/Runnable;

.field public animWidth:F

.field public animatedIcons:[I

.field public icon:I

.field public origString:Ljava/lang/String;

.field public texture:Lcom/cooliris/media/StringTexture;

.field public timeElapsed:F

.field public width:F

.field public x:F


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/Runnable;F)V
    .registers 6
    .parameter "icon"
    .parameter "label"
    .parameter "action"
    .parameter "widthLeft"

    .prologue
    .line 144
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cooliris/media/PathBarLayer$Component;->texture:Lcom/cooliris/media/StringTexture;

    .line 145
    iput-object p3, p0, Lcom/cooliris/media/PathBarLayer$Component;->action:Ljava/lang/Runnable;

    .line 146
    iput-object p2, p0, Lcom/cooliris/media/PathBarLayer$Component;->origString:Ljava/lang/String;

    .line 147
    iput p1, p0, Lcom/cooliris/media/PathBarLayer$Component;->icon:I

    .line 148
    invoke-virtual {p0, p4}, Lcom/cooliris/media/PathBarLayer$Component;->computeLabel(F)V

    .line 149
    return-void
.end method


# virtual methods
.method public final computeLabel(F)V
    .registers 8
    .parameter "widthLeft"

    .prologue
    .line 152
    invoke-static {}, Lcom/cooliris/media/PathBarLayer;->access$000()Lcom/cooliris/media/StringTexture$Config;

    move-result-object v2

    iget-boolean v2, v2, Lcom/cooliris/media/StringTexture$Config;->bold:Z

    if-eqz v2, :cond_5a

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 153
    .local v1, typeface:Landroid/graphics/Typeface;
    :goto_a
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, label:Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/cooliris/media/PathBarLayer$Component;->origString:Ljava/lang/String;

    if-eqz v2, :cond_4a

    iget-object v2, p0, Lcom/cooliris/media/PathBarLayer$Component;->origString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4a

    .line 156
    iget-object v2, p0, Lcom/cooliris/media/PathBarLayer$Component;->origString:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {}, Lcom/cooliris/media/PathBarLayer;->access$000()Lcom/cooliris/media/StringTexture$Config;

    move-result-object v4

    iget v4, v4, Lcom/cooliris/media/StringTexture$Config;->fontSize:F

    iget-object v5, p0, Lcom/cooliris/media/PathBarLayer$Component;->origString:Ljava/lang/String;

    invoke-static {v4, p1, v1, v5}, Lcom/cooliris/media/StringTexture;->lengthToFit(FFLandroid/graphics/Typeface;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_4a

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    iget-object v3, p0, Lcom/cooliris/media/PathBarLayer$Component;->origString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_4a

    .line 159
    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    :cond_4a
    new-instance v2, Lcom/cooliris/media/StringTexture;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/cooliris/media/PathBarLayer;->access$000()Lcom/cooliris/media/StringTexture$Config;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/cooliris/media/StringTexture;-><init>(Ljava/lang/String;Lcom/cooliris/media/StringTexture$Config;)V

    iput-object v2, p0, Lcom/cooliris/media/PathBarLayer$Component;->texture:Lcom/cooliris/media/StringTexture;

    .line 164
    return-void

    .line 152
    .end local v0           #label:Ljava/lang/StringBuffer;
    .end local v1           #typeface:Landroid/graphics/Typeface;
    :cond_5a
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_a
.end method

.method public getIconWidth()F
    .registers 3

    .prologue
    .line 182
    const/high16 v0, 0x4218

    sget v1, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public final update(F)Z
    .registers 5
    .parameter "timeElapsed"

    .prologue
    const/4 v0, 0x1

    .line 167
    iget v1, p0, Lcom/cooliris/media/PathBarLayer$Component;->timeElapsed:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/cooliris/media/PathBarLayer$Component;->timeElapsed:F

    .line 168
    iget v1, p0, Lcom/cooliris/media/PathBarLayer$Component;->animWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_11

    .line 169
    iget v1, p0, Lcom/cooliris/media/PathBarLayer$Component;->width:F

    iput v1, p0, Lcom/cooliris/media/PathBarLayer$Component;->animWidth:F

    .line 171
    :cond_11
    iget v1, p0, Lcom/cooliris/media/PathBarLayer$Component;->animWidth:F

    iget v2, p0, Lcom/cooliris/media/PathBarLayer$Component;->width:F

    invoke-static {v1, v2, p1}, Lcom/cooliris/media/FloatUtils;->animate(FFF)F

    move-result v1

    iput v1, p0, Lcom/cooliris/media/PathBarLayer$Component;->animWidth:F

    .line 172
    iget-object v1, p0, Lcom/cooliris/media/PathBarLayer$Component;->animatedIcons:[I

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/cooliris/media/PathBarLayer$Component;->animatedIcons:[I

    array-length v1, v1

    if-le v1, v0, :cond_25

    .line 177
    :cond_24
    :goto_24
    return v0

    .line 174
    :cond_25
    iget v1, p0, Lcom/cooliris/media/PathBarLayer$Component;->animWidth:F

    iget v2, p0, Lcom/cooliris/media/PathBarLayer$Component;->width:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_24

    .line 175
    const/4 v0, 0x0

    goto :goto_24
.end method
