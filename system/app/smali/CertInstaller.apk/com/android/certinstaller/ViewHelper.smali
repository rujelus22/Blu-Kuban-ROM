.class Lcom/android/certinstaller/ViewHelper;
.super Ljava/lang/Object;
.source "ViewHelper.java"


# instance fields
.field private mError:Z

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/certinstaller/ViewHelper;->mError:Z

    return-void
.end method


# virtual methods
.method getError()Z
    .registers 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/certinstaller/ViewHelper;->mError:Z

    return v0
.end method

.method getText(I)Ljava/lang/String;
    .registers 3
    .parameter "viewId"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/certinstaller/ViewHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setError(Z)V
    .registers 2
    .parameter "error"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/certinstaller/ViewHelper;->mError:Z

    .line 56
    return-void
.end method

.method setText(ILjava/lang/String;)V
    .registers 5
    .parameter "viewId"
    .parameter "text"

    .prologue
    .line 44
    if-nez p2, :cond_3

    .line 47
    :cond_2
    :goto_2
    return-void

    .line 45
    :cond_3
    iget-object v1, p0, Lcom/android/certinstaller/ViewHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 46
    .local v0, v:Landroid/widget/TextView;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method setView(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/certinstaller/ViewHelper;->mView:Landroid/view/View;

    .line 31
    return-void
.end method

.method showError(I)V
    .registers 5
    .parameter "msgId"

    .prologue
    .line 34
    iget-object v1, p0, Lcom/android/certinstaller/ViewHelper;->mView:Landroid/view/View;

    const/high16 v2, 0x7f08

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 35
    .local v0, v:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 36
    if-eqz v0, :cond_13

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    :cond_13
    return-void
.end method
