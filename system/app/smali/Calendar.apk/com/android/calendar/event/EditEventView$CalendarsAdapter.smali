.class Lcom/android/calendar/event/EditEventView$CalendarsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "EditEventView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditEventView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CalendarsAdapter"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 4
    .parameter "context"
    .parameter "c"

    .prologue
    .line 584
    const v0, 0x7f040013

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 585
    const v0, 0x7f040012

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EditEventView$CalendarsAdapter;->setDropDownViewResource(I)V

    .line 586
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 12
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 590
    const v7, 0x7f100030

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 591
    .local v1, colorBar:Landroid/view/View;
    const-string v7, "calendar_color"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 592
    .local v2, colorColumn:I
    const-string v7, "calendar_displayName"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 593
    .local v5, nameColumn:I
    const-string v7, "ownerAccount"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 594
    .local v6, ownerColumn:I
    if-eqz v1, :cond_26

    .line 595
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 599
    :cond_26
    const v7, 0x7f100034

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 600
    .local v4, name:Landroid/widget/TextView;
    if-eqz v4, :cond_4e

    .line 601
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 602
    .local v3, displayName:Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    const v7, 0x7f100035

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 605
    .local v0, accountName:Landroid/widget/TextView;
    if-eqz v0, :cond_4e

    .line 606
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 610
    .end local v0           #accountName:Landroid/widget/TextView;
    .end local v3           #displayName:Ljava/lang/String;
    :cond_4e
    return-void
.end method
