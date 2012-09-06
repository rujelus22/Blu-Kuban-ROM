.class public Lcom/google/android/apps/reader/widget/IntentSpinner;
.super Landroid/widget/Spinner;
.source "IntentSpinner.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFragment:Landroid/support/v4/app/Fragment;

.field private mIntent:Landroid/content/Intent;

.field private mRequestCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/google/android/apps/reader/widget/IntentSpinner;->mActivity:Landroid/app/Activity;

    .line 89
    iput-object v0, p0, Lcom/google/android/apps/reader/widget/IntentSpinner;->mFragment:Landroid/support/v4/app/Fragment;

    .line 90
    iput-object v0, p0, Lcom/google/android/apps/reader/widget/IntentSpinner;->mIntent:Landroid/content/Intent;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/reader/widget/IntentSpinner;->mRequestCode:I

    .line 92
    return-void
.end method

.method public performClick()Z
    .registers 5

    .prologue
    .line 99
    iget-object v2, p0, Lcom/google/android/apps/reader/widget/IntentSpinner;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_27

    .line 100
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/IntentSpinner;->mIntent:Landroid/content/Intent;

    .line 101
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/android/apps/reader/widget/IntentSpinner;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_13

    .line 102
    iget-object v2, p0, Lcom/google/android/apps/reader/widget/IntentSpinner;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/google/android/apps/reader/widget/IntentSpinner;->mRequestCode:I

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 109
    :goto_11
    const/4 v2, 0x1

    .line 111
    .end local v1           #intent:Landroid/content/Intent;
    :goto_12
    return v2

    .line 103
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_13
    iget-object v2, p0, Lcom/google/android/apps/reader/widget/IntentSpinner;->mFragment:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_1f

    .line 104
    iget-object v2, p0, Lcom/google/android/apps/reader/widget/IntentSpinner;->mFragment:Landroid/support/v4/app/Fragment;

    iget v3, p0, Lcom/google/android/apps/reader/widget/IntentSpinner;->mRequestCode:I

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_11

    .line 106
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/IntentSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_11

    .line 111
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_27
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public setIntent(Landroid/app/Activity;Landroid/content/Intent;I)V
    .registers 4
    .parameter "activity"
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/IntentSpinner;->clear()V

    .line 68
    iput-object p1, p0, Lcom/google/android/apps/reader/widget/IntentSpinner;->mActivity:Landroid/app/Activity;

    .line 69
    iput-object p2, p0, Lcom/google/android/apps/reader/widget/IntentSpinner;->mIntent:Landroid/content/Intent;

    .line 70
    iput p3, p0, Lcom/google/android/apps/reader/widget/IntentSpinner;->mRequestCode:I

    .line 71
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/IntentSpinner;->clear()V

    .line 59
    iput-object p1, p0, Lcom/google/android/apps/reader/widget/IntentSpinner;->mIntent:Landroid/content/Intent;

    .line 60
    return-void
.end method

.method public setIntent(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .registers 4
    .parameter "fragment"
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/IntentSpinner;->clear()V

    .line 79
    iput-object p1, p0, Lcom/google/android/apps/reader/widget/IntentSpinner;->mFragment:Landroid/support/v4/app/Fragment;

    .line 80
    iput-object p2, p0, Lcom/google/android/apps/reader/widget/IntentSpinner;->mIntent:Landroid/content/Intent;

    .line 81
    iput p3, p0, Lcom/google/android/apps/reader/widget/IntentSpinner;->mRequestCode:I

    .line 82
    return-void
.end method
