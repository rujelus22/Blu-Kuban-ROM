.class public Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;
.super Ljava/lang/Object;
.source "ViewTypeFactory.java"


# static fields
.field private static volatile instance:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;


# instance fields
.field private mAlbum:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeAlbum;

.field private mMusic:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeMusic;

.field private mNote:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeNote;

.field private mOther:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeOther;

.field private mPhoto:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypePhoto;

.field private mSwf:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeSwf;

.field private mVideo:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeVideo;

.field private mYoutube:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeYoutube;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;->instance:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeOther;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeOther;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;->mOther:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeOther;

    .line 52
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeAlbum;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeAlbum;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;->mAlbum:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeAlbum;

    .line 53
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypePhoto;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypePhoto;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;->mPhoto:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypePhoto;

    .line 54
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeNote;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeNote;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;->mNote:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeNote;

    .line 55
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeYoutube;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeYoutube;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;->mYoutube:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeYoutube;

    .line 56
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeVideo;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeVideo;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;->mVideo:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeVideo;

    .line 57
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeMusic;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeMusic;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;->mMusic:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeMusic;

    .line 58
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeSwf;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeSwf;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;->mSwf:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeSwf;

    .line 59
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;
    .registers 3
    .parameter

    .prologue
    .line 39
    const-class v1, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;

    monitor-enter v1

    .line 41
    :try_start_3
    sget-object v0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;->instance:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;

    if-nez v0, :cond_e

    .line 43
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;->instance:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;

    .line 45
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 46
    sget-object v0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;->instance:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;

    return-object v0

    .line 45
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private getType(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)I
    .registers 8
    .parameter "data"

    .prologue
    const/16 v3, 0xa

    .line 106
    iget-object v4, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentType:Ljava/lang/String;

    if-nez v4, :cond_4c

    .line 108
    const-string v4, "music"

    iget-object v5, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mStrMediatype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 110
    const/4 v3, 0x6

    .line 153
    :cond_11
    :goto_11
    return v3

    .line 112
    :cond_12
    const-string v4, "swf"

    iget-object v5, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mStrMediatype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 114
    const/4 v3, 0x7

    goto :goto_11

    .line 118
    :cond_1e
    iget v4, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->miMediaCount:I

    if-lez v4, :cond_11

    .line 120
    iget-object v4, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mMediaInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;

    .line 122
    .local v1, media:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, mediaType:Ljava/lang/String;
    const-string v4, "note"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 126
    const/4 v3, 0x3

    goto :goto_11

    .line 128
    :cond_42
    const-string v4, "video"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 130
    const/4 v3, 0x4

    goto :goto_11

    .line 140
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #media:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;
    .end local v2           #mediaType:Ljava/lang/String;
    :cond_4c
    const-string v4, "album"

    iget-object v5, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 142
    const/4 v3, 0x1

    goto :goto_11

    .line 144
    :cond_58
    const-string v4, "photo"

    iget-object v5, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 146
    const/4 v3, 0x2

    goto :goto_11

    .line 148
    :cond_64
    const-string v4, "video"

    iget-object v5, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 150
    const/4 v3, 0x5

    goto :goto_11
.end method


# virtual methods
.method public getViewType(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;
    .registers 6
    .parameter "data"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;->getType(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)I

    move-result v0

    packed-switch v0, :pswitch_data_122

    .line 98
    :pswitch_7
    const-string v0, "ViewTypeFactory"

    const-string v1, "getViewType()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type [invalid] - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActivityId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;->mOther:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeOther;

    :goto_25
    return-object v0

    .line 66
    :pswitch_26
    const-string v0, "ViewTypeFactory"

    const-string v1, "getViewType()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type [album] - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActivityId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;->mAlbum:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeAlbum;

    goto :goto_25

    .line 70
    :pswitch_45
    const-string v0, "ViewTypeFactory"

    const-string v1, "getViewType()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type [photo] - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActivityId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;->mPhoto:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypePhoto;

    goto :goto_25

    .line 74
    :pswitch_64
    const-string v0, "ViewTypeFactory"

    const-string v1, "getViewType()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type [video] - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActivityId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;->mVideo:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeVideo;

    goto :goto_25

    .line 78
    :pswitch_83
    const-string v0, "ViewTypeFactory"

    const-string v1, "getViewType()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type [youtube] - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActivityId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;->mYoutube:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeYoutube;

    goto :goto_25

    .line 82
    :pswitch_a2
    const-string v0, "ViewTypeFactory"

    const-string v1, "getViewType()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type [note] - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActivityId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;->mNote:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeNote;

    goto/16 :goto_25

    .line 86
    :pswitch_c2
    const-string v0, "ViewTypeFactory"

    const-string v1, "getViewType()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type [other] - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActivityId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;->mOther:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeOther;

    goto/16 :goto_25

    .line 90
    :pswitch_e2
    const-string v0, "ViewTypeFactory"

    const-string v1, "getViewType()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type [music] - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActivityId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;->mMusic:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeMusic;

    goto/16 :goto_25

    .line 94
    :pswitch_102
    const-string v0, "ViewTypeFactory"

    const-string v1, "getViewType()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type [swf] - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActivityId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;->mSwf:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeSwf;

    goto/16 :goto_25

    .line 63
    :pswitch_data_122
    .packed-switch 0x1
        :pswitch_26
        :pswitch_45
        :pswitch_a2
        :pswitch_83
        :pswitch_64
        :pswitch_e2
        :pswitch_102
        :pswitch_7
        :pswitch_7
        :pswitch_c2
    .end packed-switch
.end method
