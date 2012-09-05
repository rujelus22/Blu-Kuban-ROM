.class public final Lcom/cooliris/media/IconTitleDrawable$Config;
.super Ljava/lang/Object;
.source "IconTitleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/IconTitleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field private final mIconLeft:I

.field private final mIconSize:I

.field private final mPaint:Landroid/text/TextPaint;

.field private final mTitleLeft:I


# direct methods
.method public constructor <init>(IILandroid/text/TextPaint;)V
    .registers 5
    .parameter "iconSpan"
    .parameter "iconSize"
    .parameter "paint"

    .prologue
    .line 125
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 126
    sub-int v0, p1, p2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/cooliris/media/IconTitleDrawable$Config;->mIconLeft:I

    .line 127
    iput p1, p0, Lcom/cooliris/media/IconTitleDrawable$Config;->mTitleLeft:I

    .line 128
    iput p2, p0, Lcom/cooliris/media/IconTitleDrawable$Config;->mIconSize:I

    .line 129
    iput-object p3, p0, Lcom/cooliris/media/IconTitleDrawable$Config;->mPaint:Landroid/text/TextPaint;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/cooliris/media/IconTitleDrawable$Config;)Landroid/text/TextPaint;
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/cooliris/media/IconTitleDrawable$Config;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cooliris/media/IconTitleDrawable$Config;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/cooliris/media/IconTitleDrawable$Config;->mTitleLeft:I

    return v0
.end method

.method static synthetic access$200(Lcom/cooliris/media/IconTitleDrawable$Config;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/cooliris/media/IconTitleDrawable$Config;->mIconSize:I

    return v0
.end method

.method static synthetic access$300(Lcom/cooliris/media/IconTitleDrawable$Config;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/cooliris/media/IconTitleDrawable$Config;->mIconLeft:I

    return v0
.end method
