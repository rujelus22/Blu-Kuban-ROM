.class public Lcom/sec/android/app/ve/view/PreviewViewGroup$CaptionStyle;
.super Ljava/lang/Object;
.source "PreviewViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/PreviewViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CaptionStyle"
.end annotation


# instance fields
.field private mTextColor:I

.field private mTextStyle:I

.field private tf:Landroid/graphics/Typeface;

.field final synthetic this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 3100
    iput-object p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$CaptionStyle;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTf()Landroid/graphics/Typeface;
    .registers 2

    .prologue
    .line 3118
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$CaptionStyle;->tf:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getmTextColor()I
    .registers 2

    .prologue
    .line 3112
    iget v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$CaptionStyle;->mTextColor:I

    return v0
.end method

.method public getmTextStyle()I
    .registers 2

    .prologue
    .line 3106
    iget v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$CaptionStyle;->mTextStyle:I

    return v0
.end method

.method public setTf(Landroid/graphics/Typeface;)V
    .registers 2
    .parameter "tf"

    .prologue
    .line 3121
    iput-object p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$CaptionStyle;->tf:Landroid/graphics/Typeface;

    .line 3122
    return-void
.end method

.method public setmTextColor(I)V
    .registers 2
    .parameter "mTextColor"

    .prologue
    .line 3115
    iput p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$CaptionStyle;->mTextColor:I

    .line 3116
    return-void
.end method

.method public setmTextStyle(I)V
    .registers 2
    .parameter "mTextStyle"

    .prologue
    .line 3109
    iput p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$CaptionStyle;->mTextStyle:I

    .line 3110
    return-void
.end method
