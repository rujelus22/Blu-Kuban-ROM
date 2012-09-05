.class public Lcom/sec/android/socialhub/view/HubExpandLayout;
.super Landroid/widget/LinearLayout;
.source "HubExpandLayout.java"


# instance fields
.field private isClicked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/view/HubExpandLayout;->isClicked:Z

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/view/HubExpandLayout;->isClicked:Z

    .line 31
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/socialhub/view/HubExpandLayout;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/sec/android/socialhub/view/HubExpandLayout;->isClicked:Z

    return p1
.end method


# virtual methods
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 8
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 37
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 39
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/HubExpandLayout;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_44

    .line 45
    :goto_a
    const-string v0, "HubExpandLayout"

    const-string v1, "onFocusChanged()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/HubExpandLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", gainFocus - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", direction - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void

    .line 42
    :pswitch_3d
    const v0, 0x7f0b00b4

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/view/HubExpandLayout;->setNextFocusRightId(I)V

    goto :goto_a

    .line 39
    :pswitch_data_44
    .packed-switch 0x7f0b00ad
        :pswitch_3d
    .end packed-switch
.end method

.method public performClick()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 51
    const-string v1, "HubExpandLayout"

    const-string v2, "performClick()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isClicked - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/socialhub/view/HubExpandLayout;->isClicked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-boolean v1, p0, Lcom/sec/android/socialhub/view/HubExpandLayout;->isClicked:Z

    if-nez v1, :cond_31

    .line 55
    iput-boolean v0, p0, Lcom/sec/android/socialhub/view/HubExpandLayout;->isClicked:Z

    .line 56
    new-instance v0, Lcom/sec/android/socialhub/view/HubExpandLayout$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/view/HubExpandLayout$1;-><init>(Lcom/sec/android/socialhub/view/HubExpandLayout;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/socialhub/view/HubExpandLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 69
    :cond_31
    return v0
.end method
