.class public Lcom/android/email/activity/UiUtilities;
.super Ljava/lang/Object;
.source "UiUtilities.java"


# static fields
.field private static sDebugForcedPaneMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 152
    const/4 v0, 0x0

    sput v0, Lcom/android/email/activity/UiUtilities;->sDebugForcedPaneMode:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private static checkView(Landroid/view/View;)Landroid/view/View;
    .registers 3
    .parameter "v"

    .prologue
    .line 99
    if-nez p0, :cond_a

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View doesn\'t exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_a
    return-object p0
.end method

.method public static formatSize(Landroid/content/Context;J)Ljava/lang/String;
    .registers 15
    .parameter "context"
    .parameter "size"

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 36
    .local v6, res:Landroid/content/res/Resources;
    const-wide/16 v2, 0x400

    .line 37
    .local v2, KB:J
    const-wide/32 v4, 0x100000

    .line 38
    .local v4, MB:J
    const-wide/32 v0, 0x40000000

    .line 43
    .local v0, GB:J
    const-wide/16 v9, 0x400

    cmp-long v9, p1, v9

    if-gez v9, :cond_25

    .line 44
    const v7, 0x7f0c000a

    .line 45
    .local v7, resId:I
    long-to-int v8, p1

    .line 56
    .local v8, value:I
    :goto_16
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 46
    .end local v7           #resId:I
    .end local v8           #value:I
    :cond_25
    const-wide/32 v9, 0x100000

    cmp-long v9, p1, v9

    if-gez v9, :cond_35

    .line 47
    const v7, 0x7f0c000b

    .line 48
    .restart local v7       #resId:I
    const-wide/16 v9, 0x400

    div-long v9, p1, v9

    long-to-int v8, v9

    .restart local v8       #value:I
    goto :goto_16

    .line 49
    .end local v7           #resId:I
    .end local v8           #value:I
    :cond_35
    const-wide/32 v9, 0x40000000

    cmp-long v9, p1, v9

    if-gez v9, :cond_46

    .line 50
    const v7, 0x7f0c000c

    .line 51
    .restart local v7       #resId:I
    const-wide/32 v9, 0x100000

    div-long v9, p1, v9

    long-to-int v8, v9

    .restart local v8       #value:I
    goto :goto_16

    .line 53
    .end local v7           #resId:I
    .end local v8           #value:I
    :cond_46
    const v7, 0x7f0c000d

    .line 54
    .restart local v7       #resId:I
    const-wide/32 v9, 0x40000000

    div-long v9, p1, v9

    long-to-int v8, v9

    .restart local v8       #value:I
    goto :goto_16
.end method

.method public static getMessageCountForUi(Landroid/content/Context;IZ)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "count"
    .parameter "replaceZeroWithBlank"

    .prologue
    .line 61
    if-eqz p2, :cond_7

    if-nez p1, :cond_7

    .line 62
    const-string v0, ""

    .line 66
    :goto_6
    return-object v0

    .line 63
    :cond_7
    const/16 v0, 0x3e7

    if-le p1, v0, :cond_13

    .line 64
    const v0, 0x7f080189

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 66
    :cond_13
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static getView(Landroid/app/Activity;I)Landroid/view/View;
    .registers 3
    .parameter "parent"
    .parameter "viewId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/app/Activity;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/activity/UiUtilities;->checkView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static getView(Landroid/view/View;I)Landroid/view/View;
    .registers 3
    .parameter "parent"
    .parameter "viewId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/activity/UiUtilities;->checkView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static getViewOrNull(Landroid/app/Activity;I)Landroid/view/View;
    .registers 3
    .parameter "parent"
    .parameter "viewId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/app/Activity;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static getViewOrNull(Landroid/view/View;I)Landroid/view/View;
    .registers 3
    .parameter "parent"
    .parameter "viewId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static installFragment(Landroid/app/Fragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 135
    .local v0, a:Landroid/app/Activity;
    instance-of v1, v0, Lcom/android/email/activity/FragmentInstallable;

    if-eqz v1, :cond_d

    .line 136
    check-cast v0, Lcom/android/email/activity/FragmentInstallable;

    .end local v0           #a:Landroid/app/Activity;
    invoke-interface {v0, p0}, Lcom/android/email/activity/FragmentInstallable;->onInstallFragment(Landroid/app/Fragment;)V

    .line 138
    :cond_d
    return-void
.end method

.method static setDebugPaneMode(I)V
    .registers 1
    .parameter "paneMode"

    .prologue
    .line 161
    sput p0, Lcom/android/email/activity/UiUtilities;->sDebugForcedPaneMode:I

    .line 162
    return-void
.end method

.method public static setVisibilitySafe(Landroid/app/Activity;II)V
    .registers 4
    .parameter "parent"
    .parameter "viewId"
    .parameter "visibility"

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;I)V

    .line 119
    return-void
.end method

.method public static setVisibilitySafe(Landroid/view/View;I)V
    .registers 2
    .parameter "v"
    .parameter "visibility"

    .prologue
    .line 109
    if-eqz p0, :cond_5

    .line 110
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    :cond_5
    return-void
.end method

.method public static setVisibilitySafe(Landroid/view/View;II)V
    .registers 4
    .parameter "parent"
    .parameter "viewId"
    .parameter "visibility"

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;I)V

    .line 126
    return-void
.end method

.method public static uninstallFragment(Landroid/app/Fragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 146
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 147
    .local v0, a:Landroid/app/Activity;
    instance-of v1, v0, Lcom/android/email/activity/FragmentInstallable;

    if-eqz v1, :cond_d

    .line 148
    check-cast v0, Lcom/android/email/activity/FragmentInstallable;

    .end local v0           #a:Landroid/app/Activity;
    invoke-interface {v0, p0}, Lcom/android/email/activity/FragmentInstallable;->onUninstallFragment(Landroid/app/Fragment;)V

    .line 150
    :cond_d
    return-void
.end method

.method public static useTwoPane(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 168
    sget v1, Lcom/android/email/activity/UiUtilities;->sDebugForcedPaneMode:I

    if-ne v1, v0, :cond_7

    .line 169
    const/4 v0, 0x0

    .line 174
    :cond_6
    :goto_6
    return v0

    .line 171
    :cond_7
    sget v1, Lcom/android/email/activity/UiUtilities;->sDebugForcedPaneMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_6
.end method
