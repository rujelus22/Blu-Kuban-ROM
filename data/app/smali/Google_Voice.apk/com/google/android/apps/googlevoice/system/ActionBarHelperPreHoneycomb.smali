.class public Lcom/google/android/apps/googlevoice/system/ActionBarHelperPreHoneycomb;
.super Ljava/lang/Object;
.source "ActionBarHelperPreHoneycomb.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/system/ActionBarHelper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public displayUnread(Landroid/app/Activity;I)V
    .registers 3
    .parameter "activity"
    .parameter "unread"

    .prologue
    .line 51
    return-void
.end method

.method public enableLabelNavigation(Landroid/app/Activity;Landroid/widget/SpinnerAdapter;Lcom/google/android/apps/googlevoice/system/ActionBarHelper$OnActionBarNavigationListener;)V
    .registers 4
    .parameter "activity"
    .parameter "adapter"
    .parameter "listener"

    .prologue
    .line 36
    return-void
.end method

.method public enableProgressBarIndeterminate(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 55
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 56
    return-void
.end method

.method public isListNavigationMode(Landroid/app/Activity;)Z
    .registers 3
    .parameter "activity"

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public requestLeftIcon(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 24
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 25
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Landroid/app/Activity;Z)V
    .registers 3
    .parameter "activity"
    .parameter "showHome"

    .prologue
    .line 20
    return-void
.end method

.method public setLeftIconDrawableResource(Landroid/app/Activity;I)V
    .registers 4
    .parameter "activity"
    .parameter "resId"

    .prologue
    .line 29
    const/4 v0, 0x3

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->setFeatureDrawableResource(II)V

    .line 30
    return-void
.end method

.method public setProgressBarIndeterminateVisibility(Landroid/app/Activity;Landroid/view/MenuItem;Z)V
    .registers 4
    .parameter "activity"
    .parameter "menuItem"
    .parameter "visible"

    .prologue
    .line 61
    invoke-virtual {p1, p3}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 62
    return-void
.end method

.method public setSelectedNavigationItem(Landroid/app/Activity;I)V
    .registers 3
    .parameter "activity"
    .parameter "position"

    .prologue
    .line 41
    return-void
.end method
