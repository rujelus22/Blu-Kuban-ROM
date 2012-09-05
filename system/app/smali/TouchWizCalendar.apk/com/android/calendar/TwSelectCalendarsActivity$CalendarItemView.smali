.class public Lcom/android/calendar/TwSelectCalendarsActivity$CalendarItemView;
.super Landroid/widget/LinearLayout;
.source "TwSelectCalendarsActivity.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/TwSelectCalendarsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarItemView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 465
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 466
    return-void
.end method

.method private findCheckBox()Landroid/widget/CheckBox;
    .registers 3

    .prologue
    .line 491
    const v1, 0x7f0f001b

    invoke-virtual {p0, v1}, Lcom/android/calendar/TwSelectCalendarsActivity$CalendarItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 492
    .local v0, check:Landroid/view/View;
    if-eqz v0, :cond_10

    instance-of v1, v0, Landroid/widget/CheckBox;

    if-eqz v1, :cond_10

    .line 493
    check-cast v0, Landroid/widget/CheckBox;

    .line 495
    .end local v0           #check:Landroid/view/View;
    :goto_f
    return-object v0

    .restart local v0       #check:Landroid/view/View;
    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public isChecked()Z
    .registers 3

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/android/calendar/TwSelectCalendarsActivity$CalendarItemView;->findCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    .line 470
    .local v0, check:Landroid/widget/CheckBox;
    if-eqz v0, :cond_b

    .line 471
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 473
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setChecked(Z)V
    .registers 3
    .parameter "checked"

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/android/calendar/TwSelectCalendarsActivity$CalendarItemView;->findCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    .line 478
    .local v0, check:Landroid/widget/CheckBox;
    if-eqz v0, :cond_9

    .line 479
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 481
    :cond_9
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/android/calendar/TwSelectCalendarsActivity$CalendarItemView;->findCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    .line 485
    .local v0, check:Landroid/widget/CheckBox;
    if-eqz v0, :cond_9

    .line 486
    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 488
    :cond_9
    return-void
.end method
