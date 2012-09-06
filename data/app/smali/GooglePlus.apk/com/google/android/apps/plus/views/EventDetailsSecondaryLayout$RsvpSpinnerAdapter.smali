.class final Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;
.super Landroid/widget/BaseAdapter;
.source "EventDetailsSecondaryLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RsvpSpinnerAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPast:Z

.field private mUndecided:Z

.field final synthetic this$0:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;Landroid/content/Context;Z)V
    .registers 4
    .parameter
    .parameter "context"
    .parameter "unselected"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;->this$0:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 207
    iput-object p2, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;->mContext:Landroid/content/Context;

    .line 208
    iput-boolean p3, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;->mUndecided:Z

    .line 209
    return-void
.end method

.method private getText(Ljava/lang/String;ZZ)Ljava/lang/String;
    .registers 7
    .parameter "rsvpType"
    .parameter "past"
    .parameter "dropDown"

    .prologue
    .line 323
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;->this$0:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 324
    .local v0, resources:Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 326
    .local v1, stringId:I
    sget-object v2, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_MAYBE:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 327
    const v1, 0x7f0803e4

    .line 344
    :cond_16
    :goto_16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 328
    :cond_1b
    sget-object v2, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_NOT_ATTENDING:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 329
    if-eqz p2, :cond_29

    const v1, 0x7f0803e6

    :goto_28
    goto :goto_16

    :cond_29
    const v1, 0x7f0803e5

    goto :goto_28

    .line 331
    :cond_2d
    sget-object v2, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_ATTENDING:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 332
    if-eqz p2, :cond_3b

    const v1, 0x7f0803e0

    :goto_3a
    goto :goto_16

    :cond_3b
    const v1, 0x7f0803df

    goto :goto_3a

    .line 334
    :cond_3f
    sget-object v2, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_NOT_RESPONDED:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 335
    if-eqz p3, :cond_4d

    .line 336
    const v1, 0x7f0803e3

    goto :goto_16

    .line 338
    :cond_4d
    if-eqz p2, :cond_53

    const v1, 0x7f0803e2

    :goto_52
    goto :goto_16

    :cond_53
    const v1, 0x7f0803e1

    goto :goto_52
.end method

.method private setSpinnerText(Landroid/view/View;Ljava/lang/String;Z)V
    .registers 6
    .parameter "spinnerView"
    .parameter "rsvpType"
    .parameter "dropDown"

    .prologue
    .line 315
    const v1, 0x7f090072

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 317
    .local v0, textView:Landroid/widget/TextView;
    if-eqz v0, :cond_14

    .line 318
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;->mPast:Z

    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;->getText(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    :cond_14
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;->mUndecided:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x3

    goto :goto_5
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 297
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;->mUndecided:Z

    if-eqz v1, :cond_21

    sget-object v1, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_NOT_RESPONDED:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;->getPosition(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_21

    .line 298
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03003c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 300
    .local v0, spinnerView:Landroid/view/View;
    sget-object v1, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_NOT_RESPONDED:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;->setSpinnerText(Landroid/view/View;Ljava/lang/String;Z)V

    .line 303
    .end local v0           #spinnerView:Landroid/view/View;
    :goto_20
    return-object v0

    :cond_21
    invoke-super {p0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_20
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 349
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 354
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPosition(Ljava/lang/String;)I
    .registers 4
    .parameter "rsvpType"

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 236
    .local v0, index:I
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;->mUndecided:Z

    if-eqz v1, :cond_21

    sget-object v1, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_NOT_RESPONDED:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 237
    const/4 v0, 0x0

    .line 242
    :cond_e
    :goto_e
    sget-object v1, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_ATTENDING:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    sget-object v1, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_CHECKIN:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 244
    :cond_1e
    add-int/lit8 v0, v0, 0x0

    .line 251
    :cond_20
    :goto_20
    return v0

    .line 238
    :cond_21
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;->mUndecided:Z

    if-eqz v1, :cond_e

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 245
    :cond_28
    sget-object v1, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_MAYBE:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 247
    :cond_33
    sget-object v1, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_NOT_ATTENDING:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 248
    add-int/lit8 v0, v0, 0x2

    goto :goto_20
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 256
    const/4 v1, 0x0

    .line 257
    .local v1, spinnerItem:Landroid/view/View;
    const/4 v0, 0x0

    .line 259
    .local v0, rsvpType:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;->mUndecided:Z

    if-eqz v3, :cond_34

    sget-object v3, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_NOT_RESPONDED:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;->getPosition(Ljava/lang/String;)I

    move-result v3

    if-ne p1, v3, :cond_34

    .line 260
    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03003d

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 262
    sget-object v0, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_NOT_RESPONDED:Ljava/lang/String;

    .line 267
    :cond_1e
    :goto_1e
    if-nez v1, :cond_23

    .line 268
    packed-switch p1, :pswitch_data_6c

    .line 287
    :cond_23
    :goto_23
    if-eqz v1, :cond_33

    if-eqz v0, :cond_33

    .line 288
    const v3, 0x7f090072

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 289
    .local v2, textView:Landroid/widget/TextView;
    invoke-direct {p0, v2, v0, v5}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;->setSpinnerText(Landroid/view/View;Ljava/lang/String;Z)V

    .line 292
    .end local v2           #textView:Landroid/widget/TextView;
    :cond_33
    return-object v1

    .line 263
    :cond_34
    iget-boolean v3, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;->mUndecided:Z

    if-eqz v3, :cond_1e

    .line 264
    add-int/lit8 p1, p1, -0x1

    goto :goto_1e

    .line 270
    :pswitch_3b
    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03003b

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 272
    sget-object v0, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_ATTENDING:Ljava/lang/String;

    .line 273
    goto :goto_23

    .line 275
    :pswitch_4b
    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03003e

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 277
    sget-object v0, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_MAYBE:Ljava/lang/String;

    .line 278
    goto :goto_23

    .line 280
    :pswitch_5b
    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03003f

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 282
    sget-object v0, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_NOT_ATTENDING:Ljava/lang/String;

    goto :goto_23

    .line 268
    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_4b
        :pswitch_5b
    .end packed-switch
.end method

.method public isUnresponded()Z
    .registers 2

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;->mUndecided:Z

    return v0
.end method

.method public setNotResponded(Z)V
    .registers 2
    .parameter "unselected"

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;->mUndecided:Z

    .line 222
    return-void
.end method

.method public setPast(Z)V
    .registers 2
    .parameter "past"

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout$RsvpSpinnerAdapter;->mPast:Z

    .line 213
    return-void
.end method
