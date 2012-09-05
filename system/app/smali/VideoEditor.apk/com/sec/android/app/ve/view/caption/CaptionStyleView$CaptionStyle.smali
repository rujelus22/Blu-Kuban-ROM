.class public Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyle;
.super Ljava/lang/Object;
.source "CaptionStyleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/caption/CaptionStyleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CaptionStyle"
.end annotation


# instance fields
.field private mTextColor:I

.field private mTextStyle:I

.field private tf:Landroid/graphics/Typeface;

.field final synthetic this$0:Lcom/sec/android/app/ve/view/caption/CaptionStyleView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/ve/view/caption/CaptionStyleView;)V
    .registers 2
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyle;->this$0:Lcom/sec/android/app/ve/view/caption/CaptionStyleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTf()Landroid/graphics/Typeface;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyle;->tf:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getmTextColor()I
    .registers 2

    .prologue
    .line 238
    iget v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyle;->mTextColor:I

    return v0
.end method

.method public getmTextStyle()I
    .registers 2

    .prologue
    .line 232
    iget v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyle;->mTextStyle:I

    return v0
.end method

.method public setTf(Landroid/graphics/Typeface;)V
    .registers 2
    .parameter "tf"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyle;->tf:Landroid/graphics/Typeface;

    .line 248
    return-void
.end method

.method public setmTextColor(I)V
    .registers 2
    .parameter "mTextColor"

    .prologue
    .line 241
    iput p1, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyle;->mTextColor:I

    .line 242
    return-void
.end method

.method public setmTextStyle(I)V
    .registers 2
    .parameter "mTextStyle"

    .prologue
    .line 235
    iput p1, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyle;->mTextStyle:I

    .line 236
    return-void
.end method
