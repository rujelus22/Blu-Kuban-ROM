.class public Lcom/sec/android/widgetapp/socialhub/view/HubImageView;
.super Landroid/widget/ImageView;
.source "HubImageView.java"


# instance fields
.field private isClicked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/view/HubImageView;->isClicked:Z

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/view/HubImageView;->isClicked:Z

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/view/HubImageView;->isClicked:Z

    .line 32
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/widgetapp/socialhub/view/HubImageView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/socialhub/view/HubImageView;->isClicked:Z

    return p1
.end method


# virtual methods
.method public performClick()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 37
    const-string v1, "HubImageView"

    const-string v2, "performClick()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isClicked - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/widgetapp/socialhub/view/HubImageView;->isClicked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/socialhub/view/HubImageView;->isClicked:Z

    if-nez v1, :cond_31

    .line 41
    iput-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/view/HubImageView;->isClicked:Z

    .line 42
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/view/HubImageView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/socialhub/view/HubImageView$1;-><init>(Lcom/sec/android/widgetapp/socialhub/view/HubImageView;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/view/HubImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    .line 54
    :cond_31
    return v0
.end method
