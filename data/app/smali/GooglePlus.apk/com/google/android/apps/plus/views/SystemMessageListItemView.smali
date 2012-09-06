.class public Lcom/google/android/apps/plus/views/SystemMessageListItemView;
.super Landroid/widget/RelativeLayout;
.source "SystemMessageListItemView.java"


# static fields
.field private static sErrorBackgroundColor:I

.field private static sErrorMessageColor:I

.field private static sErrorTimestampColor:I

.field private static sInfoBackgroundColor:I

.field private static sInfoMessageColor:I

.field private static sInfoTimestampColor:I

.field private static sInitialized:Z


# instance fields
.field private mText:Landroid/widget/TextView;

.field private mTimestamp:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->sInitialized:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/SystemMessageListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    sget-boolean v1, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->sInitialized:Z

    if-nez v1, :cond_48

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 33
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0a00b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->sInfoMessageColor:I

    .line 34
    const v1, 0x7f0a00b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->sInfoTimestampColor:I

    .line 35
    const v1, 0x7f0a00b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->sInfoBackgroundColor:I

    .line 36
    const v1, 0x7f0a00b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->sErrorMessageColor:I

    .line 37
    const v1, 0x7f0a00b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->sErrorTimestampColor:I

    .line 38
    const v1, 0x7f0a00b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->sErrorBackgroundColor:I

    .line 39
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->sInitialized:Z

    .line 41
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_48
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onFinishInflate()V
    .registers 2

    .prologue
    .line 45
    const v0, 0x7f0900ac

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->mTimestamp:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f090072

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->mText:Landroid/widget/TextView;

    .line 47
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->mText:Landroid/widget/TextView;

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method

.method public setTimeSince(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->mTimestamp:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method public setType(I)V
    .registers 4
    .parameter "type"

    .prologue
    .line 62
    const/4 v0, 0x4

    if-ne p1, v0, :cond_17

    .line 63
    sget v0, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->sErrorBackgroundColor:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->setBackgroundColor(I)V

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->mText:Landroid/widget/TextView;

    sget v1, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->sErrorMessageColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->mTimestamp:Landroid/widget/TextView;

    sget v1, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->sErrorTimestampColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    :goto_16
    return-void

    .line 67
    :cond_17
    sget v0, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->sInfoBackgroundColor:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->setBackgroundColor(I)V

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->mText:Landroid/widget/TextView;

    sget v1, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->sInfoMessageColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->mTimestamp:Landroid/widget/TextView;

    sget v1, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->sInfoTimestampColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_16
.end method

.method public updateContentDescription()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v0, contentDescription:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 80
    .local v2, res:Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->mTimestamp:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 81
    .local v3, timeSince:Ljava/lang/CharSequence;
    if-eqz v3, :cond_2c

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_2c

    .line 82
    const v4, 0x7f080243

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_2c
    iget-object v4, p0, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->mText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 88
    .local v1, message:Ljava/lang/CharSequence;
    if-eqz v1, :cond_48

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_48

    .line 89
    const v4, 0x7f080245

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/views/SystemMessageListItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method
