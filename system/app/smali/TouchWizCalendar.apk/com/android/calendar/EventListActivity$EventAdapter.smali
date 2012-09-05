.class Lcom/android/calendar/EventListActivity$EventAdapter;
.super Landroid/widget/BaseAdapter;
.source "EventListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventAdapter"
.end annotation


# instance fields
.field private final CALENDARS_PROJECTION:[Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mFormatter:Ljava/util/Formatter;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mNoTitleLabel:Ljava/lang/String;

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/android/calendar/EventListActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/EventListActivity;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter "context"

    .prologue
    .line 753
    iput-object p1, p0, Lcom/android/calendar/EventListActivity$EventAdapter;->this$0:Lcom/android/calendar/EventListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 715
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/calendar/EventListActivity$EventAdapter;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 755
    iput-object p2, p0, Lcom/android/calendar/EventListActivity$EventAdapter;->mContext:Landroid/content/Context;

    .line 757
    iget-object v0, p0, Lcom/android/calendar/EventListActivity$EventAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/calendar/EventListActivity$EventAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 759
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventListActivity$EventAdapter;->mNoTitleLabel:Ljava/lang/String;

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/EventListActivity$EventAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 763
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/calendar/EventListActivity$EventAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/calendar/EventListActivity$EventAdapter;->mFormatter:Ljava/util/Formatter;

    .line 765
    return-void
.end method

.method private getContactId(Landroid/content/ContentResolver;I)I
    .registers 11
    .parameter "cr"
    .parameter "contactDataId"

    .prologue
    .line 1199
    const/4 v7, -0x1

    .line 1201
    .local v7, contactId:I
    const/4 v6, 0x0

    .line 1205
    .local v6, c:Landroid/database/Cursor;
    :try_start_2
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "contact_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1213
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_37

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1215
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_36
    .catchall {:try_start_2 .. :try_end_36} :catchall_3d

    move-result v7

    .line 1221
    :cond_37
    if-eqz v6, :cond_3c

    .line 1223
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1231
    :cond_3c
    return v7

    .line 1221
    :catchall_3d
    move-exception v0

    if-eqz v6, :cond_43

    .line 1223
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_43
    throw v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/calendar/EventListActivity$EventAdapter;->this$0:Lcom/android/calendar/EventListActivity;

    #getter for: Lcom/android/calendar/EventListActivity;->mEvents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/calendar/EventListActivity;->access$000(Lcom/android/calendar/EventListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 787
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 795
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 37
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 805
    const/16 v31, 0x0

    .line 807
    .local v31, view:Landroid/view/View;
    const/16 v23, 0x0

    .line 811
    .local v23, holder:Lcom/android/calendar/AgendaAdapter$ViewHolder;
    if-eqz p2, :cond_1c

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 817
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v27

    .line 819
    .local v27, tag:Ljava/lang/Object;
    move-object/from16 v0, v27

    instance-of v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    if-eqz v2, :cond_1c

    .line 821
    move-object/from16 v31, p2

    move-object/from16 v23, v27

    .line 823
    check-cast v23, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    .line 831
    .end local v27           #tag:Ljava/lang/Object;
    :cond_1c
    if-nez v23, :cond_72

    .line 837
    new-instance v23, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    .end local v23           #holder:Lcom/android/calendar/AgendaAdapter$ViewHolder;
    invoke-direct/range {v23 .. v23}, Lcom/android/calendar/AgendaAdapter$ViewHolder;-><init>()V

    .line 839
    .restart local v23       #holder:Lcom/android/calendar/AgendaAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventListActivity$EventAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030020

    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v31

    .line 843
    const v2, 0x7f0f0013

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 845
    const v2, 0x7f0f0099

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->when:Landroid/widget/TextView;

    .line 847
    const v2, 0x7f0f0015

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->calendar:Landroid/view/View;

    .line 849
    const v2, 0x7f0f0096

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    .line 855
    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 861
    :cond_72
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v28, v0

    .line 863
    .local v28, title:Landroid/widget/TextView;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->when:Landroid/widget/TextView;

    move-object/from16 v32, v0

    .line 865
    .local v32, when:Landroid/widget/TextView;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->calendar:Landroid/view/View;

    move-object/from16 v16, v0

    .line 869
    .local v16, calendar:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventListActivity$EventAdapter;->this$0:Lcom/android/calendar/EventListActivity;

    #getter for: Lcom/android/calendar/EventListActivity;->mEvents:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/calendar/EventListActivity;->access$000(Lcom/android/calendar/EventListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/calendar/Event;

    .line 875
    .local v20, event:Lcom/android/calendar/Event;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/calendar/Event;->color:I

    move/from16 v17, v0

    .line 877
    .local v17, color:I
    if-nez v17, :cond_9f

    .line 879
    const v17, -0x222223

    .line 885
    :cond_9f
    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setBackgroundColor(I)V

    .line 891
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    check-cast v29, Ljava/lang/String;

    .line 893
    .local v29, titleString:Ljava/lang/String;
    if-eqz v29, :cond_b2

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b8

    .line 895
    :cond_b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventListActivity$EventAdapter;->mNoTitleLabel:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 899
    :cond_b8
    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 905
    move-object/from16 v0, v20

    iget-boolean v14, v0, Lcom/android/calendar/Event;->allDay:Z

    .line 907
    .local v14, allDay:Z
    if-eqz v14, :cond_1ae

    .line 909
    const/16 v2, 0x8

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1045
    :goto_c8
    const/16 v22, 0x0

    .line 1049
    .local v22, hasPhoto:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventListActivity$EventAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1053
    .local v8, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, v20

    iget v2, v0, Lcom/android/calendar/Event;->contactDataId:I

    if-lez v2, :cond_1d7

    .line 1055
    move-object/from16 v0, v20

    iget v2, v0, Lcom/android/calendar/Event;->contactDataId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, Lcom/android/calendar/EventListActivity$EventAdapter;->getContactId(Landroid/content/ContentResolver;I)I

    move-result v18

    .line 1057
    .local v18, contactId:I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_10c

    .line 1059
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v18

    int-to-long v9, v0

    invoke-static {v2, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v30

    .line 1061
    .local v30, uri:Landroid/net/Uri;
    move-object/from16 v0, v30

    invoke-static {v8, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v25

    .line 1063
    .local v25, photoInputStream:Ljava/io/InputStream;
    if-eqz v25, :cond_10c

    .line 1065
    invoke-static/range {v25 .. v25}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 1067
    .local v24, photo:Landroid/graphics/Bitmap;
    if-eqz v24, :cond_109

    .line 1069
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1071
    const/16 v22, 0x1

    .line 1079
    :cond_109
    :try_start_109
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_10c} :catch_1d1

    .line 1123
    .end local v18           #contactId:I
    .end local v24           #photo:Landroid/graphics/Bitmap;
    .end local v25           #photoInputStream:Ljava/io/InputStream;
    .end local v30           #uri:Landroid/net/Uri;
    :cond_10c
    :goto_10c
    const v2, 0x7f0f0095

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v22, :cond_22b

    const/4 v2, 0x0

    :goto_118
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1127
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    if-eqz v22, :cond_22f

    const/4 v2, 0x0

    :goto_122
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1133
    const v2, 0x7f0f0097

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1161
    const v2, 0x7f0f0093

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/android/calendar/Event;->isRepeating:Z

    if-eqz v2, :cond_233

    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/android/calendar/Event;->hasAlarm:Z

    if-eqz v2, :cond_233

    const/4 v2, 0x0

    :goto_149
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1165
    const v2, 0x7f0f009a

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/android/calendar/Event;->isRepeating:Z

    if-nez v2, :cond_167

    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/android/calendar/Event;->hasAlarm:Z

    if-nez v2, :cond_167

    invoke-virtual/range {v20 .. v20}, Lcom/android/calendar/Event;->isFacebook()Z

    move-result v2

    if-eqz v2, :cond_237

    :cond_167
    const/4 v2, 0x0

    :goto_168
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1171
    const v2, 0x7f0f007e

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    .line 1173
    .local v26, reminder:Landroid/view/View;
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/android/calendar/Event;->isRepeating:Z

    if-nez v2, :cond_180

    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/android/calendar/Event;->hasAlarm:Z

    if-eqz v2, :cond_23b

    :cond_180
    const/4 v2, 0x0

    :goto_181
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1175
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/android/calendar/Event;->isRepeating:Z

    if-eqz v2, :cond_23f

    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/android/calendar/Event;->hasAlarm:Z

    if-nez v2, :cond_23f

    .line 1177
    const v2, 0x7f020026

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1185
    :goto_19a
    const v2, 0x7f0f0016

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/android/calendar/Event;->isFacebook()Z

    move-result v2

    if-eqz v2, :cond_249

    const/4 v2, 0x0

    :goto_1aa
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1191
    return-object v31

    .line 913
    .end local v8           #cr:Landroid/content/ContentResolver;
    .end local v22           #hasPhoto:Z
    .end local v26           #reminder:Landroid/view/View;
    :cond_1ae
    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/calendar/Event;->startMillis:J

    .line 915
    .local v4, begin:J
    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/android/calendar/Event;->endMillis:J

    .line 941
    .local v6, end:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventListActivity$EventAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/android/calendar/Event;->isFacebook()Z

    move-result v9

    invoke-static/range {v2 .. v9}, Lcom/android/calendar/Utils;->formatDateTimeString(Landroid/content/Context;ZJJZZ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 945
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c8

    .line 1081
    .end local v4           #begin:J
    .end local v6           #end:J
    .restart local v8       #cr:Landroid/content/ContentResolver;
    .restart local v18       #contactId:I
    .restart local v22       #hasPhoto:Z
    .restart local v24       #photo:Landroid/graphics/Bitmap;
    .restart local v25       #photoInputStream:Ljava/io/InputStream;
    .restart local v30       #uri:Landroid/net/Uri;
    :catch_1d1
    move-exception v19

    .line 1083
    .local v19, e:Ljava/io/IOException;
    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_10c

    .line 1093
    .end local v18           #contactId:I
    .end local v19           #e:Ljava/io/IOException;
    .end local v24           #photo:Landroid/graphics/Bitmap;
    .end local v25           #photoInputStream:Ljava/io/InputStream;
    .end local v30           #uri:Landroid/net/Uri;
    :cond_1d7
    invoke-virtual/range {v20 .. v20}, Lcom/android/calendar/Event;->hasFacebookPhoto()Z

    move-result v2

    if-eqz v2, :cond_10c

    .line 1095
    sget-object v9, Lcom/android/calendar/Utils;->FACEBOOK_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "photo"

    aput-object v3, v10, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    iget-wide v11, v0, Lcom/android/calendar/Event;->id:J

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 1101
    .local v21, fbCursor:Landroid/database/Cursor;
    if-eqz v21, :cond_10c

    .line 1103
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_226

    .line 1105
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v24

    .line 1107
    .local v24, photo:[B
    const/4 v2, 0x0

    move-object/from16 v0, v24

    array-length v3, v0

    move-object/from16 v0, v24

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 1109
    .local v15, bm:Landroid/graphics/Bitmap;
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1111
    const/16 v22, 0x1

    .line 1115
    .end local v15           #bm:Landroid/graphics/Bitmap;
    .end local v24           #photo:[B
    :cond_226
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_10c

    .line 1123
    .end local v21           #fbCursor:Landroid/database/Cursor;
    :cond_22b
    const/16 v2, 0x8

    goto/16 :goto_118

    .line 1127
    :cond_22f
    const/16 v2, 0x8

    goto/16 :goto_122

    .line 1161
    :cond_233
    const/16 v2, 0x8

    goto/16 :goto_149

    .line 1165
    :cond_237
    const/16 v2, 0x8

    goto/16 :goto_168

    .line 1173
    .restart local v26       #reminder:Landroid/view/View;
    :cond_23b
    const/16 v2, 0x8

    goto/16 :goto_181

    .line 1181
    :cond_23f
    const v2, 0x7f02001e

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_19a

    .line 1185
    :cond_249
    const/16 v2, 0x8

    goto/16 :goto_1aa
.end method

.method public notifyDataSetChanged()V
    .registers 1

    .prologue
    .line 771
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 773
    return-void
.end method
