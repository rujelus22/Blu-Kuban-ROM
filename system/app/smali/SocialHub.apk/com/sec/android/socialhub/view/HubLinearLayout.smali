.class public Lcom/sec/android/socialhub/view/HubLinearLayout;
.super Landroid/widget/LinearLayout;
.source "HubLinearLayout.java"


# instance fields
.field private isClicked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/view/HubLinearLayout;->isClicked:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/view/HubLinearLayout;->isClicked:Z

    .line 24
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/socialhub/view/HubLinearLayout;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-boolean p1, p0, Lcom/sec/android/socialhub/view/HubLinearLayout;->isClicked:Z

    return p1
.end method


# virtual methods
.method public performClick()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 33
    const-string v1, "HubLinearLayout"

    const-string v2, "performClick()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isClicked - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/socialhub/view/HubLinearLayout;->isClicked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-boolean v1, p0, Lcom/sec/android/socialhub/view/HubLinearLayout;->isClicked:Z

    if-nez v1, :cond_31

    .line 37
    iput-boolean v0, p0, Lcom/sec/android/socialhub/view/HubLinearLayout;->isClicked:Z

    .line 38
    new-instance v0, Lcom/sec/android/socialhub/view/HubLinearLayout$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/view/HubLinearLayout$1;-><init>(Lcom/sec/android/socialhub/view/HubLinearLayout;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/socialhub/view/HubLinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 51
    :cond_31
    return v0
.end method
