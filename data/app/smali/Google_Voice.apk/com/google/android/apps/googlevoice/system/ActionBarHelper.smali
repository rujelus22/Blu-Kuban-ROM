.class public interface abstract Lcom/google/android/apps/googlevoice/system/ActionBarHelper;
.super Ljava/lang/Object;
.source "ActionBarHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/system/ActionBarHelper$OnActionBarNavigationListener;
    }
.end annotation


# static fields
.field public static final SHOW_AS_ACTION_IF_ROOM:I = 0x1

.field public static final SHOW_AS_ACTION_NEVER:I


# virtual methods
.method public abstract displayUnread(Landroid/app/Activity;I)V
.end method

.method public abstract enableLabelNavigation(Landroid/app/Activity;Landroid/widget/SpinnerAdapter;Lcom/google/android/apps/googlevoice/system/ActionBarHelper$OnActionBarNavigationListener;)V
.end method

.method public abstract enableProgressBarIndeterminate(Landroid/app/Activity;)V
.end method

.method public abstract isListNavigationMode(Landroid/app/Activity;)Z
.end method

.method public abstract requestLeftIcon(Landroid/app/Activity;)V
.end method

.method public abstract setDisplayHomeAsUpEnabled(Landroid/app/Activity;Z)V
.end method

.method public abstract setLeftIconDrawableResource(Landroid/app/Activity;I)V
.end method

.method public abstract setProgressBarIndeterminateVisibility(Landroid/app/Activity;Landroid/view/MenuItem;Z)V
.end method

.method public abstract setSelectedNavigationItem(Landroid/app/Activity;I)V
.end method
