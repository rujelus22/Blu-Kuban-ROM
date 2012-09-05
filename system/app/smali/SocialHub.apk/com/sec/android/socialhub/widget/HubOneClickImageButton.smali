.class public Lcom/sec/android/socialhub/widget/HubOneClickImageButton;
.super Landroid/widget/ImageButton;
.source "HubOneClickImageButton.java"


# instance fields
.field private isClicked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/widget/HubOneClickImageButton;->isClicked:Z

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/widget/HubOneClickImageButton;->isClicked:Z

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/widget/HubOneClickImageButton;->isClicked:Z

    .line 34
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/socialhub/widget/HubOneClickImageButton;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-boolean p1, p0, Lcom/sec/android/socialhub/widget/HubOneClickImageButton;->isClicked:Z

    return p1
.end method


# virtual methods
.method public performClick()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 39
    const-string v1, "HubOneClickImageButton"

    const-string v2, "performClick()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isClicked - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/socialhub/widget/HubOneClickImageButton;->isClicked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-boolean v1, p0, Lcom/sec/android/socialhub/widget/HubOneClickImageButton;->isClicked:Z

    if-nez v1, :cond_31

    .line 43
    iput-boolean v0, p0, Lcom/sec/android/socialhub/widget/HubOneClickImageButton;->isClicked:Z

    .line 44
    new-instance v0, Lcom/sec/android/socialhub/widget/HubOneClickImageButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/widget/HubOneClickImageButton$1;-><init>(Lcom/sec/android/socialhub/widget/HubOneClickImageButton;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/socialhub/widget/HubOneClickImageButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    .line 57
    :cond_31
    return v0
.end method
