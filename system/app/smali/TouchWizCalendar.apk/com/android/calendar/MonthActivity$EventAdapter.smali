.class Lcom/android/calendar/MonthActivity$EventAdapter;
.super Landroid/widget/BaseAdapter;
.source "MonthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/MonthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventAdapter"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/calendar/MonthActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/MonthActivity;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 615
    iput-object p1, p0, Lcom/android/calendar/MonthActivity$EventAdapter;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 616
    iput-object p2, p0, Lcom/android/calendar/MonthActivity$EventAdapter;->mContext:Landroid/content/Context;

    .line 617
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/calendar/MonthActivity$EventAdapter;->this$0:Lcom/android/calendar/MonthActivity;

    #getter for: Lcom/android/calendar/MonthActivity;->mEvents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/calendar/MonthActivity;->access$200(Lcom/android/calendar/MonthActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/android/calendar/MonthActivity$EventAdapter;->this$0:Lcom/android/calendar/MonthActivity;

    #getter for: Lcom/android/calendar/MonthActivity;->mEvents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/calendar/MonthActivity;->access$200(Lcom/android/calendar/MonthActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_9
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 624
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 628
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 24
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 632
    move-object/from16 v16, p2

    .line 633
    .local v16, v:Landroid/view/View;
    if-nez v16, :cond_23

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthActivity$EventAdapter;->this$0:Lcom/android/calendar/MonthActivity;

    move-object/from16 v18, v0

    const-string v19, "layout_inflater"

    invoke-virtual/range {v18 .. v19}, Lcom/android/calendar/MonthActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/LayoutInflater;

    .line 635
    .local v17, vi:Landroid/view/LayoutInflater;
    const v18, 0x7f030023

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 637
    .end local v17           #vi:Landroid/view/LayoutInflater;
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthActivity$EventAdapter;->this$0:Lcom/android/calendar/MonthActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/android/calendar/MonthActivity;->mEvents:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/android/calendar/MonthActivity;->access$200(Lcom/android/calendar/MonthActivity;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calendar/Event;

    .line 638
    .local v6, event:Lcom/android/calendar/Event;
    if-eqz v6, :cond_b7

    .line 639
    const v18, 0x7f0f00b7

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 640
    .local v8, item_color:Landroid/widget/ImageView;
    const v18, 0x7f0f00b8

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 641
    .local v11, item_time:Landroid/widget/TextView;
    const v18, 0x7f0f00b9

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 642
    .local v12, item_title:Landroid/widget/TextView;
    const v18, 0x7f0f00ba

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 643
    .local v10, item_location:Landroid/widget/TextView;
    iget v0, v6, Lcom/android/calendar/Event;->color:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 678
    const v18, 0x7f0f00bb

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 679
    .local v9, item_icon:Landroid/widget/ImageView;
    invoke-virtual {v6}, Lcom/android/calendar/Event;->isFacebook()Z

    move-result v18

    if-eqz v18, :cond_b8

    .line 680
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 686
    :goto_90
    iget-boolean v0, v6, Lcom/android/calendar/Event;->allDay:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c0

    .line 791
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 855
    :goto_9d
    iget-object v0, v6, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 858
    iget-object v0, v6, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_198

    .line 859
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 865
    .end local v8           #item_color:Landroid/widget/ImageView;
    .end local v9           #item_icon:Landroid/widget/ImageView;
    .end local v10           #item_location:Landroid/widget/TextView;
    .end local v11           #item_time:Landroid/widget/TextView;
    .end local v12           #item_title:Landroid/widget/TextView;
    :cond_b7
    :goto_b7
    return-object v16

    .line 683
    .restart local v8       #item_color:Landroid/widget/ImageView;
    .restart local v9       #item_icon:Landroid/widget/ImageView;
    .restart local v10       #item_location:Landroid/widget/TextView;
    .restart local v11       #item_time:Landroid/widget/TextView;
    .restart local v12       #item_title:Landroid/widget/TextView;
    :cond_b8
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_90

    .line 793
    :cond_c0
    iget-wide v4, v6, Lcom/android/calendar/Event;->startMillis:J

    .line 804
    .local v4, begin:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthActivity$EventAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/calendar/util/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_147

    .line 805
    const-string v7, "kk:mm"

    .line 812
    .local v7, format:Ljava/lang/String;
    :goto_d0
    invoke-virtual {v6}, Lcom/android/calendar/Event;->isFacebook()Z

    move-result v18

    if-eqz v18, :cond_14a

    .line 813
    const-string v18, "UTC"

    move-object/from16 v0, v18

    invoke-static {v7, v4, v5, v0}, Lcom/android/calendar/TwDateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 818
    .local v13, time:Ljava/lang/String;
    :goto_e2
    const-string v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 819
    .local v14, timeArray:[Ljava/lang/String;
    array-length v0, v14

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_13b

    .line 821
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 822
    .local v15, timeSb:Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v18

    sget-object v19, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_15f

    .line 824
    const/16 v18, 0x1

    aget-object v18, v14, v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    const/16 v18, 0x0

    aget-object v18, v14, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_157

    .line 827
    const-string v18, "   "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    :goto_12e
    const/16 v18, 0x0

    aget-object v18, v14, v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 844
    .end local v15           #timeSb:Ljava/lang/StringBuilder;
    :cond_13b
    :goto_13b
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 845
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9d

    .line 807
    .end local v7           #format:Ljava/lang/String;
    .end local v13           #time:Ljava/lang/String;
    .end local v14           #timeArray:[Ljava/lang/String;
    :cond_147
    const-string v7, "h:mm aa"

    .restart local v7       #format:Ljava/lang/String;
    goto :goto_d0

    .line 815
    :cond_14a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthActivity$EventAdapter;->this$0:Lcom/android/calendar/MonthActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v7, v4, v5}, Lcom/android/calendar/Utils;->format(Landroid/content/Context;Ljava/lang/CharSequence;J)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #time:Ljava/lang/String;
    goto :goto_e2

    .line 829
    .restart local v14       #timeArray:[Ljava/lang/String;
    .restart local v15       #timeSb:Ljava/lang/StringBuilder;
    :cond_157
    const-string v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12e

    .line 836
    :cond_15f
    const/16 v18, 0x0

    aget-object v18, v14, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_176

    .line 837
    const-string v18, "  "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    :cond_176
    const/16 v18, 0x0

    aget-object v18, v14, v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    const-string v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    const/16 v18, 0x1

    aget-object v18, v14, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_13b

    .line 861
    .end local v4           #begin:J
    .end local v7           #format:Ljava/lang/String;
    .end local v13           #time:Ljava/lang/String;
    .end local v14           #timeArray:[Ljava/lang/String;
    .end local v15           #timeSb:Ljava/lang/StringBuilder;
    :cond_198
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 862
    iget-object v0, v6, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b7
.end method
