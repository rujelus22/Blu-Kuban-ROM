.class Lcom/google/android/music/widgets/TopBarDisplayModeSelector$RootDisplayArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TopBarDisplayModeSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/widgets/TopBarDisplayModeSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RootDisplayArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 125
    const v0, 0x7f040015

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 126
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 133
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 134
    .local v0, view:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/google/android/music/widgets/TopBarDisplayModeSelector$RootDisplayArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-static {v1}, Lcom/google/android/music/widgets/DisplayModeSelector;->getTextResourceId(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 135
    return-object v0
.end method
