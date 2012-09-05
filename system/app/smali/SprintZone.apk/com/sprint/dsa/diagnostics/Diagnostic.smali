.class public abstract Lcom/sprint/dsa/diagnostics/Diagnostic;
.super Ljava/lang/Object;
.source "Diagnostic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;,
        Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SprintZone_Diagnostics"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mExpanded:Z

.field protected mKey:Ljava/lang/String;

.field protected mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/dsa/diagnostics/DiagnosticListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

.field protected mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

.field protected mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

.field mUIHandler:Landroid/os/Handler;

.field protected mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V
    .registers 6
    .parameter "context"
    .parameter "key"
    .parameter "stub"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/Diagnostic;->mContext:Landroid/content/Context;

    .line 42
    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/Diagnostic;->mKey:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->NOT_RUN:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/Diagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 45
    sget-object v0, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->NONE:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/Diagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    .line 46
    iput-boolean v1, p0, Lcom/sprint/dsa/diagnostics/Diagnostic;->mVisible:Z

    .line 47
    iput-boolean v1, p0, Lcom/sprint/dsa/diagnostics/Diagnostic;->mExpanded:Z

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/Diagnostic;->mListeners:Ljava/util/List;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/Diagnostic;->mUIHandler:Landroid/os/Handler;

    .line 53
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/Diagnostic;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/sprint/dsa/diagnostics/Diagnostic;->mKey:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/sprint/dsa/diagnostics/Diagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    .line 56
    return-void
.end method


# virtual methods
.method public addListener(Lcom/sprint/dsa/diagnostics/DiagnosticListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/Diagnostic;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 75
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/Diagnostic;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_d
    return-void
.end method

.method protected fireStatusChange()V
    .registers 4

    .prologue
    .line 80
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/Diagnostic;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 83
    return-void

    .line 80
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/diagnostics/DiagnosticListener;

    .line 81
    .local v0, listener:Lcom/sprint/dsa/diagnostics/DiagnosticListener;
    invoke-interface {v0, p0}, Lcom/sprint/dsa/diagnostics/DiagnosticListener;->onStatusChange(Lcom/sprint/dsa/diagnostics/Diagnostic;)V

    goto :goto_6
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/Diagnostic;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/Diagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 190
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/Diagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    invoke-virtual {v0}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/Diagnostic;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method protected getLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .registers 3
    .parameter "context"

    .prologue
    .line 194
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getListView(Landroid/view/View;)Landroid/view/View;
    .registers 7
    .parameter "convertView"

    .prologue
    .line 89
    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/Diagnostic;->mContext:Landroid/content/Context;

    const v3, 0x7f030007

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, childView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/Diagnostic;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 93
    const v2, 0x7f0b001d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 94
    .local v1, text1:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/Diagnostic;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {p0, v0}, Lcom/sprint/dsa/diagnostics/Diagnostic;->updateView(Landroid/view/View;)V

    .line 98
    return-object v0
.end method

.method protected getSettingsId()I
    .registers 2

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public getStatus()Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/Diagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    return-object v0
.end method

.method public getStatusDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    const-string v0, ""

    return-object v0
.end method

.method public getTestData()Lcom/sprint/dsa/diagnostics/DiagnosticsData;
    .registers 4

    .prologue
    .line 137
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/Diagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    sget-object v2, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->NOT_RUN:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    if-ne v1, v2, :cond_9

    .line 138
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/Diagnostic;->runTest()Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    .line 141
    :cond_9
    new-instance v0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;

    invoke-direct {v0}, Lcom/sprint/dsa/diagnostics/DiagnosticsData;-><init>()V

    .line 142
    .local v0, data:Lcom/sprint/dsa/diagnostics/DiagnosticsData;
    invoke-virtual {p0, v0}, Lcom/sprint/dsa/diagnostics/Diagnostic;->updateValues(Lcom/sprint/dsa/diagnostics/DiagnosticsData;)V

    .line 143
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/Diagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 185
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/Diagnostic;->mStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    invoke-virtual {v0}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public abstract isAvailable()Z
.end method

.method public isCapable()Z
    .registers 2

    .prologue
    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public abstract isEnabled()Z
.end method

.method public onCleanup()V
    .registers 1

    .prologue
    .line 156
    return-void
.end method

.method public onListClick(Landroid/view/View;)Z
    .registers 5
    .parameter "view"

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/Diagnostic;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sprint/dsa/DiagnosticsInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sprint.extra.SETTINGS_KEY"

    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/Diagnostic;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v1, "com.sprint.extra.SETTINGS_ID"

    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/Diagnostic;->getSettingsId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/Diagnostic;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 106
    const/4 v1, 0x1

    return v1
.end method

.method public prepareTest()V
    .registers 1

    .prologue
    .line 61
    return-void
.end method

.method public abstract runTest()Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;
.end method

.method protected startProgressAnimation(Landroid/view/View;)V
    .registers 6
    .parameter "childView"

    .prologue
    .line 198
    const v2, 0x7f0b001c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 199
    .local v1, progress:Landroid/widget/ImageView;
    if-eqz v1, :cond_21

    .line 200
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 202
    .local v0, animation:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_21

    .line 203
    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/Diagnostic;->mUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sprint/dsa/diagnostics/Diagnostic$1;

    invoke-direct {v3, p0, v0}, Lcom/sprint/dsa/diagnostics/Diagnostic$1;-><init>(Lcom/sprint/dsa/diagnostics/Diagnostic;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 211
    .end local v0           #animation:Landroid/graphics/drawable/AnimationDrawable;
    :cond_21
    return-void
.end method

.method protected stopProgressAnimation(Landroid/view/View;)V
    .registers 5
    .parameter "childView"

    .prologue
    .line 214
    const v2, 0x7f0b001c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 215
    .local v1, progress:Landroid/widget/ImageView;
    if-eqz v1, :cond_1b

    .line 216
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 217
    .local v0, animation:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_16

    .line 218
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 220
    :cond_16
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    .end local v0           #animation:Landroid/graphics/drawable/AnimationDrawable;
    :cond_1b
    return-void
.end method

.method public updateReceiverIntentFilter(Landroid/content/IntentFilter;)V
    .registers 2
    .parameter "filter"

    .prologue
    .line 150
    return-void
.end method

.method public updateState(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 147
    return-void
.end method

.method protected updateStatusDot(Landroid/view/View;)V
    .registers 8
    .parameter "childView"

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 225
    const v3, 0x7f0b001a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 226
    .local v0, greendot:Landroid/widget/ImageView;
    const v3, 0x7f0b001b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 227
    .local v1, reddot:Landroid/widget/ImageView;
    const v3, 0x7f0b0019

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 230
    .local v2, tdot:Landroid/widget/ImageView;
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/diagnostics/Diagnostic;->stopProgressAnimation(Landroid/view/View;)V

    .line 237
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/Diagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    sget-object v4, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUNNING:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    if-ne v3, v4, :cond_34

    .line 238
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/diagnostics/Diagnostic;->startProgressAnimation(Landroid/view/View;)V

    .line 249
    :goto_33
    return-void

    .line 240
    :cond_34
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/Diagnostic;->mRunStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    sget-object v4, Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;->RUN_ERROR:Lcom/sprint/dsa/diagnostics/Diagnostic$RunStatus;

    if-eq v3, v4, :cond_40

    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/Diagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    sget-object v4, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->RED:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    if-ne v3, v4, :cond_44

    .line 241
    :cond_40
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_33

    .line 243
    :cond_44
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/Diagnostic;->mTestStatus:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    sget-object v4, Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;->GREEN:Lcom/sprint/dsa/diagnostics/Diagnostic$TestStatus;

    if-ne v3, v4, :cond_4e

    .line 244
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_33

    .line 247
    :cond_4e
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_33
.end method

.method public updateValues(Lcom/sprint/dsa/diagnostics/DiagnosticsData;)V
    .registers 2
    .parameter "data"

    .prologue
    .line 134
    return-void
.end method

.method public updateView(Landroid/view/View;)V
    .registers 4
    .parameter "childView"

    .prologue
    .line 124
    if-eqz p1, :cond_15

    .line 126
    const v1, 0x7f0b001e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 127
    .local v0, text2:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/Diagnostic;->getStatusDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/diagnostics/Diagnostic;->updateStatusDot(Landroid/view/View;)V

    .line 131
    .end local v0           #text2:Landroid/widget/TextView;
    :cond_15
    return-void
.end method

.method public updateViews(Landroid/view/View;)V
    .registers 4
    .parameter "parentView"

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/Diagnostic;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, childView:Landroid/view/View;
    if-eqz v0, :cond_d

    .line 117
    invoke-virtual {p0, v0}, Lcom/sprint/dsa/diagnostics/Diagnostic;->updateView(Landroid/view/View;)V

    .line 121
    :cond_d
    return-void
.end method
