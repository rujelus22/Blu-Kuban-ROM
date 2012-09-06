.class public Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;
.super Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;
.source "EventDetailOptionRowLocation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static sDirectionIcon:Landroid/graphics/drawable/Drawable;

.field private static sHangoutIcon:Landroid/graphics/drawable/Drawable;

.field private static sHangoutJoinIcon:Landroid/graphics/drawable/Drawable;

.field private static sHangoutJoinText:Ljava/lang/String;

.field private static sHangoutTitle:Ljava/lang/String;

.field private static sHangoutbeforeText:Ljava/lang/String;

.field private static sLocationIcon:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mLaunchIcon:Landroid/widget/ImageView;

.field private mListener:Lcom/google/android/apps/plus/views/EventActionListener;

.field private mLocation:Z

.field private mTypeIcon:Landroid/widget/ImageView;

.field private sInitialized:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/api/services/plusi/model/PlusEvent;Lcom/google/android/apps/plus/views/EventActionListener;)V
    .registers 11
    .parameter "event"
    .parameter "listener"

    .prologue
    .line 73
    iget-object v4, p1, Lcom/google/api/services/plusi/model/PlusEvent;->location:Lcom/google/api/services/plusi/model/Place;

    if-eqz v4, :cond_34

    const/4 v4, 0x1

    :goto_5
    iput-boolean v4, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->mLocation:Z

    .line 74
    iput-object p2, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->mListener:Lcom/google/android/apps/plus/views/EventActionListener;

    .line 76
    iget-boolean v4, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->mLocation:Z

    if-eqz v4, :cond_3b

    .line 77
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->mTypeIcon:Landroid/widget/ImageView;

    sget-object v5, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->sLocationIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->mLaunchIcon:Landroid/widget/ImageView;

    sget-object v5, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->sDirectionIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, address:Ljava/lang/String;
    iget-object v4, p1, Lcom/google/api/services/plusi/model/PlusEvent;->location:Lcom/google/api/services/plusi/model/Place;

    iget-object v4, v4, Lcom/google/api/services/plusi/model/Place;->address:Lcom/google/api/services/plusi/model/EmbedsPostalAddress;

    if-eqz v4, :cond_36

    .line 84
    iget-object v4, p1, Lcom/google/api/services/plusi/model/PlusEvent;->location:Lcom/google/api/services/plusi/model/Place;

    iget-object v2, v4, Lcom/google/api/services/plusi/model/Place;->description:Ljava/lang/String;

    .line 85
    .local v2, name:Ljava/lang/String;
    iget-object v4, p1, Lcom/google/api/services/plusi/model/PlusEvent;->location:Lcom/google/api/services/plusi/model/Place;

    iget-object v4, v4, Lcom/google/api/services/plusi/model/Place;->address:Lcom/google/api/services/plusi/model/EmbedsPostalAddress;

    iget-object v0, v4, Lcom/google/api/services/plusi/model/EmbedsPostalAddress;->name:Ljava/lang/String;

    .line 90
    :goto_2c
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->mTypeIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->mLaunchIcon:Landroid/widget/ImageView;

    invoke-super {p0, v2, v0, v4, v5}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->bind(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/view/View;)V

    .line 104
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    :goto_33
    return-void

    .line 73
    :cond_34
    const/4 v4, 0x0

    goto :goto_5

    .line 87
    .restart local v0       #address:Ljava/lang/String;
    :cond_36
    iget-object v4, p1, Lcom/google/api/services/plusi/model/PlusEvent;->location:Lcom/google/api/services/plusi/model/Place;

    iget-object v2, v4, Lcom/google/api/services/plusi/model/Place;->name:Ljava/lang/String;

    .restart local v2       #name:Ljava/lang/String;
    goto :goto_2c

    .line 92
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    :cond_3b
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->mTypeIcon:Landroid/widget/ImageView;

    sget-object v5, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->sHangoutIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    const/4 v3, 0x0

    .line 94
    .local v3, rightView:Landroid/view/View;
    sget-object v1, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->sHangoutbeforeText:Ljava/lang/String;

    .line 96
    .local v1, description:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p1, Lcom/google/api/services/plusi/model/PlusEvent;->startTime:Lcom/google/api/services/plusi/model/EventTime;

    iget-object v6, v6, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_60

    .line 97
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->mLaunchIcon:Landroid/widget/ImageView;

    sget-object v5, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->sHangoutJoinIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->mLaunchIcon:Landroid/widget/ImageView;

    .line 99
    sget-object v1, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->sHangoutJoinText:Ljava/lang/String;

    .line 102
    :cond_60
    sget-object v4, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->sHangoutTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->mTypeIcon:Landroid/widget/ImageView;

    invoke-super {p0, v4, v1, v5, v3}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->bind(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/view/View;)V

    goto :goto_33
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->sInitialized:Z

    if-nez v1, :cond_4d

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f02019f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->sLocationIcon:Landroid/graphics/drawable/Drawable;

    .line 56
    const v1, 0x7f02019c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->sDirectionIcon:Landroid/graphics/drawable/Drawable;

    .line 57
    const v1, 0x7f02019d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->sHangoutIcon:Landroid/graphics/drawable/Drawable;

    .line 58
    const v1, 0x7f08014b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->sHangoutTitle:Ljava/lang/String;

    .line 59
    const v1, 0x7f08014c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->sHangoutbeforeText:Ljava/lang/String;

    .line 60
    const v1, 0x7f08014d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->sHangoutJoinText:Ljava/lang/String;

    .line 61
    const v1, 0x7f020198

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->sHangoutJoinIcon:Landroid/graphics/drawable/Drawable;

    .line 62
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->sInitialized:Z

    .line 65
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_4d
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->mTypeIcon:Landroid/widget/ImageView;

    .line 66
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->mLaunchIcon:Landroid/widget/ImageView;

    .line 67
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->setClickable(Z)V

    .line 68
    invoke-virtual {p0, p0}, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->mLocation:Z

    if-eqz v0, :cond_a

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->mListener:Lcom/google/android/apps/plus/views/EventActionListener;

    invoke-interface {v0}, Lcom/google/android/apps/plus/views/EventActionListener;->onLocationClicked()V

    .line 116
    :goto_9
    return-void

    .line 114
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowLocation;->mListener:Lcom/google/android/apps/plus/views/EventActionListener;

    invoke-interface {v0}, Lcom/google/android/apps/plus/views/EventActionListener;->onHangoutClicked()V

    goto :goto_9
.end method
