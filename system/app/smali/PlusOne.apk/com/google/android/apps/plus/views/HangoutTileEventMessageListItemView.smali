.class public Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;
.super Landroid/widget/RelativeLayout;
.source "HangoutTileEventMessageListItemView.java"


# static fields
.field private static sInitialized:Z

.field private static sMessageColor:I

.field private static sTimestampColor:I


# instance fields
.field private mText:Landroid/widget/TextView;

.field private mTimestamp:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;->sInitialized:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v1, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView$1;-><init>(Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;)V

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    sget-boolean v1, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;->sInitialized:Z

    if-nez v1, :cond_2c

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 39
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f090061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;->sMessageColor:I

    .line 40
    const v1, 0x7f090062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;->sTimestampColor:I

    .line 41
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;->sInitialized:Z

    .line 43
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_2c
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .registers 2

    .prologue
    .line 47
    const v0, 0x7f0d00bc

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;->mTimestamp:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0d0067

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;->mText:Landroid/widget/TextView;

    .line 49
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;->mText:Landroid/widget/TextView;

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method public setTimeSince(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;->mTimestamp:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method public setType(I)V
    .registers 4
    .parameter "type"

    .prologue
    .line 60
    const/4 v0, 0x6

    if-ne p1, v0, :cond_11

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;->mText:Landroid/widget/TextView;

    sget v1, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;->sMessageColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;->mTimestamp:Landroid/widget/TextView;

    sget v1, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;->sTimestampColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    :cond_11
    return-void
.end method

.method public updateContentDescription()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v0, contentDescription:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 73
    .local v2, res:Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;->mTimestamp:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 74
    .local v3, timeSince:Ljava/lang/CharSequence;
    if-eqz v3, :cond_2c

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_2c

    .line 75
    const v4, 0x7f070195

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_2c
    iget-object v4, p0, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;->mText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 81
    .local v1, message:Ljava/lang/CharSequence;
    if-eqz v1, :cond_48

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_48

    .line 82
    const v4, 0x7f070196

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/views/HangoutTileEventMessageListItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 87
    return-void
.end method
